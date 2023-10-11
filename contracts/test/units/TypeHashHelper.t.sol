// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "script/utils/ConsoleFactory.s.sol";
import "../libs/TypeHashHelper.lib.sol";
import {TypeHashHelper} from "src/libraries/TypeHashHelper.sol";

contract TypeHashHelperTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    TypeHashHelperLib typeHashHelperLib;

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        typeHashHelperLib = new TypeHashHelperLib();
    }

    function testValidateConstants() public {
        assertEq(
            TypeHashHelper.TRANSACTION_PARAMS_TYPEHASH,
            keccak256(
                "ExecutionParams(address to,uint256 value,bytes data,uint8 operation,address account,address executor,uint256 nonce)"
            )
        );
        assertEq(
            TypeHashHelper.VALIDATION_PARAMS_TYPEHASH,
            keccak256(
                "ValidationParams(ExecutionParams executionParams,bytes32 policyHash,uint32 expiryEpoch)ExecutionParams(address to,uint256 value,bytes data,uint8 operation,address account,address executor,uint256 nonce)"
            )
        );
    }

    function testBuildTransactionStructHash() public {
        TypeHashHelper.Transaction memory _txn = TypeHashHelper.Transaction({
            to: makeAddr("to"),
            value: uint256(11),
            data: hex"ff1234ff",
            operation: uint8(11),
            account: makeAddr("account"),
            executor: makeAddr("executor"),
            nonce: uint256(11)
        });

        assertEq(
            typeHashHelperLib.buildTransactionStructHash(_txn),
            0x5f72e76e88de640bf015153834ad646b4d2dc7df92f385a34bf26eba8ea3a3f2
        );
    }

    function testBuildValidationStructHash() public {
        TypeHashHelper.Validation memory _vldn = TypeHashHelper.Validation({
            transactionStructHash: keccak256("txn"),
            policyHash: keccak256("policy"),
            expiryEpoch: uint32(11)
        });

        assertEq(
            typeHashHelperLib.buildValidationStructHash(_vldn),
            0x669f8c6922c54ffb2e15e3d6d29dd6e92c47d2c49d83818752cbd5f00059e80c
        );
    }
}
