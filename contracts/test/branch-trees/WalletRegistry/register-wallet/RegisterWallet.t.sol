// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {AddressProvider} from "src/core/AddressProvider.sol";

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

import {MockAddressProviderService} from "test/mocks/MockAddressProviderService.sol";

contract WalletRegistry_RegisterWalletTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    event RegisterWallet(address indexed wallet);

    MockAddressProviderService aps;

    address subAccount = makeAddr("subAccount");
    address wallet = makeAddr("wallet");

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        aps = new MockAddressProviderService(address(addressProvider));
    }

    function testRegisterWallet_ShouldRevertAlreadyRegistered() public {
        vm.startPrank(wallet);
        walletRegistry.registerWallet();

        vm.expectRevert(abi.encodeWithSelector(WalletRegistry.AlreadyRegistered.selector));

        walletRegistry.registerWallet();
        vm.stopPrank();
    }

    function testRegisterWallet_ShouldRevertIsSubAccount() public {
        vm.prank(address(safeDeployer));
        walletRegistry.registerSubAccount(wallet, subAccount);

        vm.expectRevert(abi.encodeWithSelector(WalletRegistry.IsSubAccount.selector));

        vm.prank(subAccount);
        walletRegistry.registerWallet();
    }

    function testRegisterWallet_Successful() public {
        vm.prank(wallet);

        vm.expectEmit(true, true, false, false);
        emit RegisterWallet(wallet);

        walletRegistry.registerWallet();

        assertTrue(walletRegistry.isWallet(wallet));
    }
}
