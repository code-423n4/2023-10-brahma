// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import {TypeHashHelper} from "src/libraries/TypeHashHelper.sol";

contract TypeHashHelperLib {
    function buildTransactionStructHash(TypeHashHelper.Transaction memory _txn) external pure returns (bytes32) {
        return TypeHashHelper._buildTransactionStructHash(_txn);
    }

    function buildValidationStructHash(TypeHashHelper.Validation memory _vldn) external pure returns (bytes32) {
        return TypeHashHelper._buildValidationStructHash(_vldn);
    }
}
