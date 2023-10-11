// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "src/core/AddressProvider.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";
import {IGnosisSafe} from "src/libraries/SafeHelper.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";

contract TransactionValidator_validatePostTransactionOverridableForExecutionTest is
    Test,
    ConsoleFactory("offchain/addressManager.ts")
{
    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
    }

    function testDeploy() public {
        assertEq(addressProvider.governance(), address(this));
        assertEq(address(transactionValidator.addressProvider()), address(addressProvider));
    }

    function testValidatePostTransactionOverridableForExecution_ShouldNotRevert() public view {
        transactionValidator.validatePostTransactionOverridable(bytes32(0), false, address(0));
    }
}
