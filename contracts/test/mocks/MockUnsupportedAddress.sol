// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract MockUnsupportedAddress {
    fallback(bytes calldata) external returns (bytes memory) {
        return abi.encode(15);
    }
}
