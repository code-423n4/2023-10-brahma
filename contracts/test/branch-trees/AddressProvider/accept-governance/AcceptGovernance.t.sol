// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "src/core/AddressProvider.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

contract AddressProvider_AcceptGovernanceTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    address public notGov = makeAddr("NotGovernance");

    event GovernanceTransferred(address indexed previousGovernance, address indexed newGovernance);

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
    }

    function testDeploy() public {
        assertEq(addressProvider.governance(), address(this));
        assertEq(addressProvider.pendingGovernance(), address(0));
    }

    function testAcceptGovernance_ShouldRevertNotPendingGovernance() public {
        vm.prank(notGov);
        vm.expectRevert(abi.encodeWithSelector(AddressProvider.NotPendingGovernance.selector, notGov));
        addressProvider.acceptGovernance();
    }

    function testAcceptGovernance() public {
        addressProvider.setGovernance(notGov);
        //
        vm.expectEmit(true, true, true, true, address(addressProvider));
        emit GovernanceTransferred(address(this), notGov);
        vm.prank(notGov);
        addressProvider.acceptGovernance();
        assertEq(addressProvider.governance(), notGov);
        assertEq(addressProvider.pendingGovernance(), address(0));
    }
}
