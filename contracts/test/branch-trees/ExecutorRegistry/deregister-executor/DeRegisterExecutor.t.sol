// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";
import {ExecutorRegistry} from "src/core/registries/ExecutorRegistry.sol";

contract ExecutorRegistry_DeRegisterExecutorTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    address subAccount = makeAddr("subAccount");
    address wallet = makeAddr("wallet");
    address notOwnerWallet = makeAddr("notOwnerWallet");
    address executor1 = makeAddr("executor1");
    address executor2 = makeAddr("executor2");

    event DeRegisterExecutor(address indexed _subAccount, address indexed _owner, address indexed _executor);

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        vm.prank(wallet);
        walletRegistry.registerWallet();
        vm.prank(address(safeDeployer));
        walletRegistry.registerSubAccount(wallet, subAccount);
        vm.prank(notOwnerWallet);
        walletRegistry.registerWallet();
    }

    function testDeploy() public {
        assertEq(executorRegistry.addressProviderTarget(), address(addressProvider));
    }

    function testDeRegisterExecutor_ShouldRevertNotOwnerWallet() public {
        vm.prank(wallet);
        executorRegistry.registerExecutor(subAccount, executor1);
        assertTrue(executorRegistry.isExecutor(subAccount, executor1));
        //
        vm.expectRevert(abi.encodeWithSelector(ExecutorRegistry.NotOwnerWallet.selector));
        //
        vm.prank(notOwnerWallet);
        executorRegistry.deRegisterExecutor(subAccount, executor1);
    }

    function testDeRegisterExecutor_ShouldRevertDoesNotExist() public {
        vm.expectRevert(abi.encodeWithSelector(ExecutorRegistry.DoesNotExist.selector));
        //
        vm.prank(wallet);
        executorRegistry.deRegisterExecutor(subAccount, executor1);
    }

    function testDeRegisterExecutor() public {
        vm.prank(wallet);
        executorRegistry.registerExecutor(subAccount, executor1);
        vm.prank(wallet);
        executorRegistry.registerExecutor(subAccount, executor2);
        assertTrue(executorRegistry.isExecutor(subAccount, executor1));
        //
        vm.expectEmit(true, true, true, true, address(executorRegistry));
        emit DeRegisterExecutor(subAccount, wallet, executor1);
        vm.prank(wallet);
        executorRegistry.deRegisterExecutor(subAccount, executor1);
        assertFalse(executorRegistry.isExecutor(subAccount, executor1));
        assertTrue(executorRegistry.isExecutor(subAccount, executor2));
        assertEq(executorRegistry.getExecutorsForSubAccount(subAccount).length, 1);
    }
}
