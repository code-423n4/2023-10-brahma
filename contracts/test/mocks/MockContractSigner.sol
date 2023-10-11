// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract MockContractSignerValid {
    // bytes4(keccak256("isValidSignature(bytes32,bytes)")
    bytes4 internal constant EIP1271_MAGIC_VALUE = 0x1626ba7e;

    function isValidSignature(bytes memory, bytes memory) public pure returns (bytes4) {
        return 0x20c13b0b;
        // bytes4(keccak256("isValidSignature(bytes,bytes)")
    }

    function isValidSignature(bytes32, bytes memory) public pure returns (bytes4) {
        return EIP1271_MAGIC_VALUE;
    }
}

contract MockContractSignerInvalid {
    function isValidSignature(bytes32, bytes memory) public pure returns (bytes4) {
        return bytes4(0);
    }

    function isValidSignature(bytes memory, bytes memory) public pure returns (bytes4) {
        return 0x20c13b0b;
        // bytes4(keccak256("isValidSignature(bytes,bytes)")
    }
}
