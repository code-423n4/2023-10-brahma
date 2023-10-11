import {ethers} from "ethers";

// keccak256(
//     "EIP712Domain(uint256 chainId,address verifyingContract)"
// );
export const EIP_DOMAIN = {
    EIP712Domain: [
        {name: "chainId", type: "uint256"},
        {name: "verifyingContract", type: "address"},
    ],
};

export const EIP712_SAFE_MESSAGE_TYPE = {
    //    "SafeMessage(bytes message)"
    SafeMessage: [{name: "message", type: "bytes"}],
};

const main = async () => {
    const pvtKey = process.argv[2];
    const chainId = process.argv[3];
    const verifyingContract = process.argv[4];
    const message = process.argv[5];

    const signer = new ethers.Wallet(pvtKey);

    const domain = {
        chainId,
        verifyingContract,
    };

    const safeMsg = {
        message,
    };

    const sig = await signer._signTypedData(
        domain,
        EIP712_SAFE_MESSAGE_TYPE,
        safeMsg,
    );

    console.log(sig);
};

main();
