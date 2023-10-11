// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "src/core/AddressProvider.sol";
import "test/mocks/MockAddressProviderService.sol";
import "test/mocks/MockUnsupportedAddress.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

contract AddressProvider_SetAuthorizedAddressTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    address public notGov = makeAddr("NotGovernance");
    MockAddressProviderService validAPService;
    MockAddressProviderService invalidAPService;
    MockUnsupportedAddress unsupportedAddress;

    event AuthorizedAddressInitialised(address indexed authorizedAddress, bytes32 indexed key);

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
        validAPService.getAuthorizedAddress(key);
    }

    function testSetAuthorizedAddress_ShouldRevertNotGovernance() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));
        vm.prank(notGov);
        vm.expectRevert(abi.encodeWithSelector(AddressProvider.NotGovernance.selector, notGov));
        addressProvider.setAuthorizedAddress(_key, address(validAPService), false);
    }

    function testSetAuthorizedAddress_ShouldNotRevertIfAuthAddressIsEOA() public {
        address _addr = makeAddr("APService");
        bytes32 _key = keccak256(abi.encode(_addr));
        addressProvider.setAuthorizedAddress(_key, _addr, true);
        assertEq(addressProvider.getAuthorizedAddress(_key), _addr);
    }

    function testSetAuthorizedAddress_ShouldRevertZeoAddress() public {
        bytes32 _key = keccak256("ZERO");

        vm.expectRevert(AddressProvider.NullAddress.selector);
        addressProvider.setAuthorizedAddress(_key, address(0), false);
        vm.expectRevert(AddressProvider.NullAddress.selector);
        addressProvider.setAuthorizedAddress(_key, address(0), true);
    }

    function testSetAuthorizedAddress_ShouldRevertInvalidAddress() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));
        vm.expectRevert(abi.encodeWithSelector(AddressProvider.AddressProviderUnsupported.selector));
        addressProvider.setAuthorizedAddress(_key, address(invalidAPService), false);
    }

    function testSetAuthorizedAddress_ShouldRevertUnsupportedAddress() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));
        vm.expectRevert(abi.encodeWithSelector(AddressProvider.AddressProviderUnsupported.selector));
        addressProvider.setAuthorizedAddress(_key, address(unsupportedAddress), false);
    }

    function testSetAuthorizedAddress_ShouldNotRevertInvalidAddressIfOverrideCheck() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));
        addressProvider.setAuthorizedAddress(_key, address(invalidAPService), true);
        assertEq(addressProvider.getAuthorizedAddress(_key), address(invalidAPService));
    }

    function testSetAuthorizedAddress_ShouldNotRevertUnsupportedAddressIfOverrideCheckSet() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));
        addressProvider.setAuthorizedAddress(_key, address(unsupportedAddress), true);
        assertEq(addressProvider.getAuthorizedAddress(_key), address(unsupportedAddress));
    }

    function testSetAuthorizedAddress() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));

        vm.expectRevert(AddressProviderService.InvalidAddress.selector);
        validAPService.getAuthorizedAddress(_key);
        //
        vm.expectEmit(true, true, true, true, address(addressProvider));
        emit AuthorizedAddressInitialised(address(validAPService), _key);
        addressProvider.setAuthorizedAddress(_key, address(validAPService), false);
        //
        assertEq(addressProvider.getAuthorizedAddress(_key), address(validAPService));
        assertEq(validAPService.getAuthorizedAddress(_key), address(validAPService));
    }

    function testSetAuthorizedAddress_OverrideCheck() public {
        bytes32 _key = keccak256(abi.encode(address(validAPService)));

        vm.expectRevert(AddressProviderService.InvalidAddress.selector);
        validAPService.getAuthorizedAddress(_key);
        //
        vm.expectEmit(true, true, true, true, address(addressProvider));
        emit AuthorizedAddressInitialised(address(validAPService), _key);
        addressProvider.setAuthorizedAddress(_key, address(validAPService), true);
        //
        assertEq(addressProvider.getAuthorizedAddress(_key), address(validAPService));
        assertEq(validAPService.getAuthorizedAddress(_key), address(validAPService));
    }
}
