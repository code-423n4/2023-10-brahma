// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "src/core/AddressProvider.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";
import {IGnosisSafe} from "src/libraries/SafeHelper.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";

contract TransactionValidator_validatePostExecutorTransactionTest is
    Test,
    ConsoleFactory("offchain/addressManager.ts")
{
    bytes32 commit = keccak256("commit");
    IGnosisSafe subSafe;

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        walletRegistry.registerWallet();
        subSafe = IGnosisSafe(safeDeployer.deploySubAccount(owners, 1, commit, keccak256("salt")));
    }

    function testDeploy() public {
        assertEq(addressProvider.governance(), address(this));
        assertEq(address(transactionValidator.addressProvider()), address(addressProvider));
    }

    function testvalidatePostExecutorTransaction_ShouldRevertInvalidGuard() public {
        vm.store(address(subSafe), bytes32(SafeHelper._GUARD_STORAGE_SLOT), bytes32(0));
        vm.expectRevert(TransactionValidator.InvalidGuard.selector);
        transactionValidator.validatePostExecutorTransaction(address(0), address(subSafe));
    }

    function testvalidatePostExecutorTransaction_ShouldRevertInvalidModule() public {
        // Slot where owner wallet module address is stored
        bytes32 _slot = keccak256(abi.encodePacked(bytes32(uint256(uint160(address(this)))), bytes32(uint256(1))));

        // write owner module slot to bytes(0)
        vm.store(address(subSafe), _slot, bytes32(0));

        vm.expectRevert(TransactionValidator.InvalidModule.selector);
        transactionValidator.validatePostExecutorTransaction(address(0), address(subSafe));
    }

    function testvalidatePostExecutorTransaction_ShouldRevertInvalidFallbackHandler() public {
        // write fallbackHandler slot to bytes(0)
        vm.store(address(subSafe), bytes32(SafeHelper._FALLBACK_HANDLER_STORAGE_SLOT), bytes32(0));

        vm.expectRevert(TransactionValidator.InvalidFallbackHandler.selector);
        transactionValidator.validatePostExecutorTransaction(address(0), address(subSafe));
    }

    function testvalidatePostExecutorTransaction_ShouldNotRevert() public view {
        transactionValidator.validatePostExecutorTransaction(address(0), address(subSafe));
    }
}
