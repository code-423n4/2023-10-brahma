import * as fs from "fs";


export const readAddress = (contractName: string, addrJsonFileName: string) => {
    const filePath = __dirname + "/addresses/" + addrJsonFileName;
    const fileData = fs.readFileSync(filePath, "utf-8");
    let addresses = JSON.parse(fileData);
    console.log(addresses[contractName].address);
    return addresses[contractName].address;
};

export const writeAddress = (contractName: string, address: string, addrJsonFileName: string) => {
    const filePath = __dirname + "/addresses/" + addrJsonFileName;
    fs.chmodSync(filePath, 0o600);
    const fileData = fs.readFileSync(filePath, "utf-8");
    let addresses = JSON.parse(fileData);
    addresses[contractName] = { address: address };
    fs.writeFileSync(filePath, JSON.stringify(addresses, null, 2));
};

const main = () => {
    if (process.argv[2] == "write") {
        if (process.argv[3] && process.argv[4])
            writeAddress(process.argv[3], process.argv[4], process.argv[5]);
    } else if (process.argv[2] == "read") {
        readAddress(process.argv[3], process.argv[4]);
    }
};

main();
// This helper file is used to save addresses generated during temporary tests
// To run this, install yarn, run yarn and then run in project root
// $ npx ts-node offchain/addressManager.ts ${CONTRACT_NAME} ${CONTRACT_ADDRESS}
