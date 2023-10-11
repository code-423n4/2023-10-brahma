// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {AddressProvider} from "src/core/AddressProvider.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";

contract ConsoleOpBuilder_DisableExecutorsOnSubaccountTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    IGnosisSafe consoleAccount;
    address payable consoleAccountAddress;
    address subaccount;
    uint256 validatorPrivKey;

    bytes32 public constant policyCommit = keccak256("policy_commit");

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);

        (, validatorPrivKey) = makeAddrAndKey("TrustedValidator");
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, vm.addr(validatorPrivKey), false);

        address[] memory owners = new address[](1);
        owners[0] = address(this);
        consoleAccountAddress = payable(safeDeployer.deployConsoleAccount(owners, 1, bytes32(0), keccak256("salt")));
        consoleAccount = IGnosisSafe(consoleAccountAddress);

        address[] memory delegatees = new address[](2);
        delegatees[0] = address(999);
        delegatees[1] = address(1001);

        vm.prank(consoleAccountAddress);
        subaccount = safeDeployer.deploySubAccount(delegatees, 1, keccak256("policyCommit"), bytes32(uint256(0)));

        assertFalse(IGnosisSafe(subaccount).isModuleEnabled(address(executorPlugin)));
    }

    function testDisableExecutorMulticall(uint160 numberOfExecutors) public {
        numberOfExecutors = uint160(bound(numberOfExecutors, 0, 250));
        address[] memory _executors = new address[](numberOfExecutors);
        for (uint160 i = 1; i <= numberOfExecutors; i++) {
            _executors[i - 1] = address(uint160(i));
        }
        _enableExecutor(_executors);

        _disableExecutor();

        assertFalse(IGnosisSafe(subaccount).isModuleEnabled(address(executorPlugin)), "Executor plugin is enabled");

        for (uint160 i = 1; i <= numberOfExecutors; i++) {
            assertFalse(executorRegistry.isExecutor(subaccount, _executors[i - 1]), "Executor still found");
        }
    }

    function _enableExecutor(address[] memory _executors) private {
        bytes memory _calldata = consoleOpBuilder.enableExecutorPluginOnSubAccount(subaccount, _executors);

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
        );
    }

    function _disableExecutor() private {
        bytes memory _calldata = consoleOpBuilder.disableExecutorPluginOnSubAccount(subaccount, address(1));

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
        );
    }
}
