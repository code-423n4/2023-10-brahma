import * as Addresses from "./addresses.json";
import * as AddressProviderJSON from "../out/AddressProvider.sol/AddressProvider.json";
import * as BrahRouterJSON from "../out/BrahRouter.sol/BrahRouter.json";
import * as GelatoBotJSON from "../out/GelatoBot.sol/GelatoBot.json";
import * as PriceFeedManagerJSON from "../out/PriceFeedManager.sol/PriceFeedManager.json";

import {readdirSync, readFileSync} from "fs";
import {ethers} from "ethers";
import Axios, {AxiosResponse} from "axios";

require("dotenv").config();

const DIR_PATH = "./verification_json";

(async () => {
    const IBrahRouter = new ethers.utils.Interface(BrahRouterJSON.abi);
    const IAddressProvider = new ethers.utils.Interface(
        AddressProviderJSON.abi,
    );
    const IGelatoBot = new ethers.utils.Interface(GelatoBotJSON.abi);
    const IPriceFeedManager = new ethers.utils.Interface(
        PriceFeedManagerJSON.abi,
    );

    const files = readdirSync(DIR_PATH);
    console.log(files);

    for (const filePath of files) {
        const fileContents = readFileSync(`${DIR_PATH}/${filePath}`).toString();
        const verificationJson = JSON.parse(fileContents);
        verificationJson.settings.viaIR = true;

        const contractPath = Object.keys(verificationJson.sources)[0];
        const name = contractPath.split("/").pop().split(".sol")[0];
        const contractname = `${contractPath}:${name}`;

        let constructorArguments: String;
        if (name == "AddressProvider") {
            constructorArguments = IAddressProvider.encodeDeploy([
                process.env.DEPLOYER,
                process.env.DEPLOYER,
                process.env.DEPLOYER,
            ]);
        } else if (name == "GelatoBot") {
            constructorArguments = IGelatoBot.encodeDeploy([
                "0xc1c6805b857bef1f412519c4a842522431afed39",
                "0xc815db16d4be6ddf2685c201937905abf338f5d7",
                Addresses.AddressProvider.address,
            ]);
        } else if (name == "PriceFeedManager") {
            constructorArguments = IPriceFeedManager.encodeDeploy([
                Addresses.AddressProvider.address,
                "0x84ced17d95F3EC7230bAf4a369F1e624Ae60090d",
            ]);
        } else if (name == "SafeWalletAdapter") {
            constructorArguments = null;
        } else {
            constructorArguments = IBrahRouter.encodeDeploy([
                Addresses.AddressProvider.address,
            ]);
        }

        const payload = {
            apikey: process.env.ETHERSCAN_API_KEY,
            module: "contract",
            action: "verifysourcecode",
            contractaddress: Addresses[name]["address"],
            codeformat: "solidity-standard-json-input",
            contractname,
            compilerversion: "v0.8.19+commit.7dd6d404",
            optimizationUsed: verificationJson.settings?.optimizer?.enabled
                ? 1
                : 0,
            runs: verificationJson.settings?.optimizer?.runs,
            constructorArguements: constructorArguments?.slice(2) || null,
            licenseType: 14,
            sourceCode: JSON.stringify(verificationJson),
        };

        const {data}: AxiosResponse<any, any> = await Axios.post(
            process.env.ETHERSCAN_API_URL,
            payload,
            {
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded",
                },
            },
        ).then(
            (value) =>
                new Promise((resolve) => {
                    setTimeout(() => {
                        resolve(value);
                    }, 5000);
                }),
        );

        console.log("CONTRACT:", name);
        console.log("RESPONSE:", data);

        if (data.status === "1") {
            while (true) {
                const {data: pollData}: AxiosResponse<any, any> =
                    await Axios.get(
                        `https://api-goerli.etherscan.io/api?apikey=${process.env.ETHERSCAN_API_KEY}&guid=${data.result}&module=contract&action=checkverifystatus`,
                    ).then(
                        (value) =>
                            new Promise((resolve) => {
                                setTimeout(() => {
                                    resolve(value);
                                }, 10000);
                            }),
                    );

                if (!pollData.result.toLowerCase().includes("pending")) {
                    console.log(pollData);
                    break;
                }
            }
        }
    }
})();
