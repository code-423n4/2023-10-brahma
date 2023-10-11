// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {AddressProvider} from "src/core/AddressProvider.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";

contract ConsoleOpBuilder_MiscellaneousTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    IGnosisSafe subAccount;

    bytes32 public constant policyCommit = keccak256("policy_commit");

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);

        walletRegistry.registerWallet();

        address[] memory owners = new address[](1);
        owners[0] = address(this);

        subAccount = IGnosisSafe(safeDeployer.deploySubAccount(owners, 1, policyCommit, keccak256("salt")));
    }

    /// @notice test if one revert makes the entire multicall revert
    /// @dev this is required because, the remaining tests for `ConsoleOpBuilder` are written under the assumption that when conditions are not met, the internally invoked contracts will revert which should make rest of the multicall revert
    function testRevert_OneRevertRevertsEntireMultiCall() public {
        /// removes the `SafeModerator` as guard, so that it ensures, failure will arise from multicall
        vm.store(address(subAccount), bytes32(SafeHelper._GUARD_STORAGE_SLOT), bytes32(0));
        bytes memory _calldata = consoleOpBuilder.enablePolicyOnConsole(address(subAccount), policyCommit);

        vm.expectRevert("GS013");
        subAccount.execTransaction(
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
        );
    }
}
