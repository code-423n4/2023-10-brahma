/// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "forge-std/console.sol";

contract AddressRegistry is Script {
    string addressManagerPath;
    string jsonPath;

    constructor(string memory _addressManagerPath) {
        addressManagerPath = _addressManagerPath;
        if (block.chainid == 1) {
            jsonPath = "mainnet.json";
        }
        if (block.chainid == 5) {
            jsonPath = "goerli.json";
        }
        if (block.chainid == 10) {
            jsonPath = "optimism.json";
        }
        if (block.chainid == 56) {
            jsonPath = "bsc.json";
        }
        if (block.chainid == 137) {
            jsonPath = "polygon.json";
        }
        if (block.chainid == 250) {
            jsonPath = "ftm.json";
        }
        if (block.chainid == 1101) {
            jsonPath = "zkevm.json";
        }
        if (block.chainid == 8453) {
            jsonPath = "base.json";
        }
        if (block.chainid == 42161) {
            jsonPath = "arb.json";
        }
        if (block.chainid == 43114) {
            jsonPath = "avax.json";
        }
        if (bytes(jsonPath).length == 0) {
            console.log("Invalid ChainID");
        }
        require(bytes(jsonPath).length != 0, "Invalid ChainID");
    }

    function saveToFile(string memory contractName, address contractAddress) public {
        console.log(contractName, contractAddress);
        string[] memory cmd = new string[](7);

        cmd[0] = "npx";
        cmd[1] = "ts-node";
        cmd[2] = addressManagerPath;
        cmd[3] = "write";
        cmd[4] = contractName;
        cmd[5] = addressToString(contractAddress);
        cmd[6] = jsonPath;

        vm.ffi(cmd);
    }

    function readFromFile(string memory contractName) public returns (address) {
        string[] memory cmd = new string[](6);

        cmd[0] = "npx";
        cmd[1] = "ts-node";
        cmd[2] = addressManagerPath;
        cmd[3] = "read";
        cmd[4] = contractName;
        cmd[5] = jsonPath;

        bytes memory data = vm.ffi(cmd);

        return (address(bytes20(data)));
    }

    function addressToString(address account) public pure returns (string memory) {
        return toString(abi.encodePacked(account));
    }

    function toString(bytes memory data) public pure returns (string memory) {
        bytes memory alphabet = "0123456789abcdef";

        bytes memory str = new bytes(2 + data.length * 2);
        str[0] = "0";
        str[1] = "x";
        for (uint256 i = 0; i < data.length; i++) {
            str[2 + i * 2] = alphabet[uint256(uint8(data[i] >> 4))];
            str[3 + i * 2] = alphabet[uint256(uint8(data[i] & 0x0f))];
        }
        return string(str);
    }
}
