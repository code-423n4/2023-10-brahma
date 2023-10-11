// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract MockPolicyValidatorTrue {
    function isPolicySignatureValid(address, address, uint256, bytes memory, uint8, bytes memory)
        external
        pure
        returns (bool)
    {
        return true;
    }

    function isPolicySignatureValid(address, bytes32, bytes memory) external pure returns (bool) {
        return true;
    }
}

contract MockPolicyValidatorFalse {
    function isPolicySignatureValid(address, address, uint256, bytes memory, uint8, bytes memory)
        external
        pure
        returns (bool)
    {
        return false;
    }

    function isPolicySignatureValid(address, bytes32, bytes memory) external pure returns (bool) {
        return false;
    }
}
