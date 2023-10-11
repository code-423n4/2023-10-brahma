// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {AddressProvider} from "src/core/AddressProvider.sol";

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

import {MockAddressProviderService} from "test/mocks/MockAddressProviderService.sol";

contract WalletRegistry_RegisterSubAccountTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    event RegisterSubAccount(address indexed wallet, address indexed subAccount);

    MockAddressProviderService aps;

    address subAccount = makeAddr("subAccount");
    address wallet = makeAddr("wallet");

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        aps = new MockAddressProviderService(address(addressProvider));
    }

    function testRegisterSubAccount_ShouldRevertAlreadyRegistered() public {
        vm.startPrank(address(safeDeployer));
        walletRegistry.registerSubAccount(wallet, subAccount);

        vm.expectRevert(abi.encodeWithSelector(WalletRegistry.AlreadyRegistered.selector));

        walletRegistry.registerSubAccount(wallet, subAccount);
        vm.stopPrank();
    }

    function testRegisterSubAccount_ShouldRevertInvalidSender() public {
        vm.prank(wallet);
        vm.expectRevert(abi.encodeWithSelector(WalletRegistry.InvalidSender.selector));
        walletRegistry.registerSubAccount(wallet, subAccount);
    }

    function testRegisterSubAccount_Successful() public {
        vm.prank(address(safeDeployer));

        vm.expectEmit(true, true, true, false);
        emit RegisterSubAccount(wallet, subAccount);

        walletRegistry.registerSubAccount(wallet, subAccount);

        assertEq(walletRegistry.subAccountToWallet(subAccount), wallet);
        address[] memory _subAccs = walletRegistry.getSubAccountsForWallet(wallet);
        assertEq(_subAccs[0], subAccount);
        assertTrue(walletRegistry.isOwner(wallet, subAccount));
    }
}
