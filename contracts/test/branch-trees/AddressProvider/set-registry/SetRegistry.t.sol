// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "src/core/AddressProvider.sol";
import "test/mocks/MockAddressProviderService.sol";
import "test/mocks/MockUnsupportedAddress.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

contract AddressProvider_SetRegistryTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    address public notGov = makeAddr("NotGovernance");
    MockAddressProviderService validAPService;
    MockAddressProviderService invalidAPService;
    MockUnsupportedAddress unsupportedAddress;

    event RegistryInitialised(address indexed registry, bytes32 indexed key);

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        validAPService = new MockAddressProviderService(address(addressProvider));
        AddressProvider wrongAP = new AddressProvider(makeAddr("wrongAP"));
        invalidAPService = new MockAddressProviderService(address(wrongAP));
        unsupportedAddress = new MockUnsupportedAddress();
    }

    function testDeploy() public {
        assertEq(addressProvider.governance(), address(this));
        bytes32 key = keccak256(abi.encode(address(validAPService)));

        vm.expectRevert(AddressProviderService.InvalidAddress.selector);
        validAPService.getRegistry(key);
    }

    function testSetRegistry_ShouldRevertNotGovernance() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));
        vm.prank(notGov);
        vm.expectRevert(abi.encodeWithSelector(AddressProvider.NotGovernance.selector, notGov));
        addressProvider.setRegistry(_key, address(validAPService));
    }

    function testSetRegistry_ShouldRevertInvalidAddress() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));
        vm.expectRevert(abi.encodeWithSelector(AddressProvider.AddressProviderUnsupported.selector));
        addressProvider.setRegistry(_key, address(invalidAPService));
    }

    function testSetRegistry_ShouldRevertUnsupportedAddress() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));
        vm.expectRevert(abi.encodeWithSelector(AddressProvider.AddressProviderUnsupported.selector));
        addressProvider.setRegistry(_key, address(unsupportedAddress));
    }

    function testSetRegistry_ShouldRevertRegistryAlreadyExists() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));

        addressProvider.setRegistry(_key, address(validAPService));
        vm.expectRevert(AddressProvider.RegistryAlreadyExists.selector);
        addressProvider.setRegistry(_key, address(validAPService));
    }

    function testSetRegistry() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));

        vm.expectRevert(AddressProviderService.InvalidAddress.selector);
        validAPService.getRegistry(_key);
        //
        vm.expectEmit(true, true, true, true, address(addressProvider));
        emit RegistryInitialised(address(validAPService), _key);
        addressProvider.setRegistry(_key, address(validAPService));
        //
        assertEq(addressProvider.getRegistry(_key), address(validAPService));
        assertEq(validAPService.getRegistry(_key), address(validAPService));
    }
}
