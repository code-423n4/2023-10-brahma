// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {AddressProvider} from "src/core/AddressProvider.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";

contract ConsoleOpBuilder_EnablePolicyOnConsoleTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    IGnosisSafe consoleAccount;
    address payable consoleAccountAddress;

    bytes32 public constant policyCommit = keccak256("policy_commit");

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        consoleAccountAddress = payable(safeDeployer.deployConsoleAccount(owners, 1, bytes32(0), keccak256("salt")));
        consoleAccount = IGnosisSafe(consoleAccountAddress);
    }

    function testEnablePolicyMulticall() public {
        bytes memory _calldata = consoleOpBuilder.enablePolicyOnConsole(consoleAccountAddress, policyCommit);

        assertTrue(
            consoleAccount.execTransaction(
                address(gnosisMultisend),
                0,
                _calldata,
                Enum.Operation.DelegateCall,
                0,
                0,
                0,
                address(0),
                payable(0),
                SafeHelper._generateSingleThresholdSignature(address(this))
            )
        );

        assertEq(policyRegistry.commitments(consoleAccountAddress), policyCommit);
        assertEq(SafeHelper._getGuard(consoleAccountAddress), address(safeModeratorOverridable));
        assertEq(SafeHelper._getFallbackHandler(consoleAccountAddress), address(consoleFallbackHandler));
    }
}
