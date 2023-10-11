import {ethers} from "ethers";

export const buildTransactionDigestSignature = async (
    privateKey: string,
    chainId: string,
    verifyingContract: string,
    to: string,
    value: string,
    data: string,
    operation: string,
    account: string,
    executor: string,
    nonce: string,
) => {
    const types = {
        ExecutionParams: [
            {name: "to", type: "address"},
            {name: "value", type: "uint256"},
            {name: "data", type: "bytes"},
            {name: "operation", type: "uint8"},
            {name: "account", type: "address"},
            {name: "executor", type: "address"},
            {name: "nonce", type: "uint256"},
        ],
    };

    const executorPluginDomain = {
        name: "ExecutorPlugin",
        version: "1.0",
        chainId: chainId,
        verifyingContract: verifyingContract,
    };

    const executionParamsData = {
        to,
        value,
        data,
        operation,
        account,
        executor,
        nonce,
    };

    const signer = new ethers.Wallet(privateKey);

    const signature = await signer._signTypedData(
        executorPluginDomain,
        types,
        executionParamsData,
    );

    return signature;
};

export const buildValidationDigestSignature = async (
    privateKey: string,
    chainId: string,
    verifyingContract: string,
    to: string,
    value: string,
    data: string,
    operation: string,
    account: string,
    executor: string,
    nonce: string,
    policyHash: string,
    expiryEpoch: string,
) => {
    const types = {
        ExecutionParams: [
            {name: "to", type: "address"},
            {name: "value", type: "uint256"},
            {name: "data", type: "bytes"},
            {name: "operation", type: "uint8"},
            {name: "account", type: "address"},
            {name: "executor", type: "address"},
            {name: "nonce", type: "uint256"},
        ],
        ValidationParams: [
            {name: "executionParams", type: "ExecutionParams"},
            {name: "policyHash", type: "bytes32"},
            {name: "expiryEpoch", type: "uint32"},
        ],
    };

    const policyValidatorDomain = {
        name: "PolicyValidator",
        version: "1.0",
        chainId: chainId,
        verifyingContract: verifyingContract,
    };

    const executionParamsData = {
        to,
        value,
        data,
        operation,
        account,
        executor,
        nonce,
    };

    const validationParams = {
        executionParams: executionParamsData,
        policyHash,
        expiryEpoch,
    };

    const signer = new ethers.Wallet(privateKey);

    const signature = await signer._signTypedData(
        policyValidatorDomain,
        types,
        validationParams,
    );

    return signature;
};

const main = async () => {
    if (process.argv[2] == "buildTransactionDigestSignature") {
        const sig = await buildTransactionDigestSignature(
            process.argv[3],
            process.argv[4],
            process.argv[5],
            process.argv[6],
            process.argv[7],
            process.argv[8],
            process.argv[9],
            process.argv[10],
            process.argv[11],
            process.argv[12],
        );
        console.log(sig);
        return sig;
    } else if (process.argv[2] == "buildValidationDigestSignature") {
        const sig = await buildValidationDigestSignature(
            process.argv[3],
            process.argv[4],
            process.argv[5],
            process.argv[6],
            process.argv[7],
            process.argv[8],
            process.argv[9],
            process.argv[10],
            process.argv[11],
            process.argv[12],
            process.argv[13],
            process.argv[14],
        );
        console.log(sig);
        return sig;
    }
};

main();
