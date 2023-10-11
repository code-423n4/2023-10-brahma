// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {AddressProvider} from "src/core/AddressProvider.sol";
import {SafeModeratorOverridable} from "src/core/SafeModeratorOverridable.sol";

import {Enum} from "src/libraries/SafeHelper.sol";

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

contract SafeModeratorOverridable_MiscellaneousTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
    }

    function testCheckModuleCompatibility() public {
        safeModeratorOverridable.checkModuleTransaction(address(0), 0, hex"", Enum.Operation.Call, address(0));
    }
}
