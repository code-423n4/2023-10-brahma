// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "src/core/AddressProvider.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

contract AddressProvider_SetGovernanceTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    address public notGov = makeAddr("NotGovernance");

    event GovernanceTransferRequested(address indexed previousGovernance, address indexed newGovernance);

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
    }

    function testDeploy() public {
        assertEq(addressProvider.governance(), address(this));
        assertEq(addressProvider.pendingGovernance(), address(0));
    }

    function testSetGovernanceTest_ShouldRevertNullAddress() public {
        vm.expectRevert(AddressProvider.NullAddress.selector);
        addressProvider.setGovernance(address(0));
    }

    function testSetGovernanceTest_ShouldRevertNotGovernance() public {
        vm.prank(notGov);
        vm.expectRevert(abi.encodeWithSelector(AddressProvider.NotGovernance.selector, notGov));
        addressProvider.setGovernance(notGov);
    }

    function testSetGovernance() public {
        vm.expectEmit(true, true, true, true, address(addressProvider));
        emit GovernanceTransferRequested(address(this), notGov);
        addressProvider.setGovernance(notGov);
        assertEq(addressProvider.pendingGovernance(), notGov);
    }
}
