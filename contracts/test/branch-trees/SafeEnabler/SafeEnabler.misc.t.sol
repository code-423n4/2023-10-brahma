// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {SafeEnabler} from "src/core/SafeEnabler.sol";

contract SafeEnabler_SetGuardTest is Test, SafeEnabler {
    function testConstants() public {
        assertEq(_SENTINEL_MODULES, address(0x1));
        assertEq(_GUARD_STORAGE_SLOT, keccak256("guard_manager.guard.address"));
    }
}
