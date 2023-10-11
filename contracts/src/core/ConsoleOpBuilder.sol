/// SPDX-License-Identifier: BUSL-1.1
/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {AddressProviderService} from "src/core/AddressProviderService.sol";
import {PolicyRegistry} from "src/core/registries/PolicyRegistry.sol";
import {ExecutorRegistry} from "src/core/registries/ExecutorRegistry.sol";
import {Types, SafeHelper} from "src/libraries/SafeHelper.sol";

import {IGnosisMultiSend} from "interfaces/external/IGnosisMultiSend.sol";
import {IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";

/**
 * @title ConsoleOpBuilder
 * @author Brahma.fi
 * @notice Contains functions that provide the multicall execution bytecode needed for console user operations
 * @dev The callData provided by this contract is meant to be executed via `GnosisMultiSend::multiSend()` from `ConsoleAccount` as DELEGATECALL. `GnosisMultiSend` here refers to the contract who's address is stored at `AddressProvider::authorizedAddresses(_GNOSIS_MULTI_SEND_HASH)`
 */
contract ConsoleOpBuilder is AddressProviderService {
    constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

    /**
     * @notice Provides multicall bytecode for enabling a policy on brahma console account
     * @dev Enables policy, by updating policy on `PolicyRegistry`, setting guard on Safe, setting fallback handler on Safe
     * @param account address of brahma console account
     * @param policyCommit policy commit hash to set
     * @return callData for multicall execution
     */
    function enablePolicyOnConsole(address account, bytes32 policyCommit) external view returns (bytes memory) {
        Types.Executable[] memory txns = new Types.Executable[](3);

        txns[0] = Types.Executable({
            callType: Types.CallType.CALL,
            target: AddressProviderService._getRegistry(_POLICY_REGISTRY_HASH),
            value: 0,
            data: abi.encodeCall(PolicyRegistry.updatePolicy, (account, policyCommit))
        });

        txns[1] = Types.Executable({
            callType: Types.CallType.CALL,
            target: account,
            value: 0,
            data: abi.encodeCall(
                IGnosisSafe.setGuard, (AddressProviderService._getAuthorizedAddress(_SAFE_MODERATOR_OVERRIDABLE_HASH))
                )
        });

        txns[2] = Types.Executable({
            callType: Types.CallType.CALL,
            target: account,
            value: 0,
            data: abi.encodeCall(
                IGnosisSafe.setFallbackHandler,
                (AddressProviderService._getAuthorizedAddress(_CONSOLE_FALLBACK_HANDLER_HASH))
                )
        });

        return abi.encodeCall(IGnosisMultiSend.multiSend, (SafeHelper._packMultisendTxns(txns)));
    }

    /**
     * @notice Provides multicall bytecode for disabling a policy on brahma console account
     * @dev Disables policy, by setting guard to address(0) on Safe, setting fallback handler to address(0) on Safe
     * @param account address of brahma console account
     * @return callData for multicall execution
     */
    function disablePolicyOnConsole(address account) external pure returns (bytes memory) {
        Types.Executable[] memory txns = new Types.Executable[](2);

        txns[0] = Types.Executable({
            callType: Types.CallType.CALL,
            target: account,
            value: 0,
            data: abi.encodeCall(IGnosisSafe.setGuard, (address(0)))
        });

        txns[1] = Types.Executable({
            callType: Types.CallType.CALL,
            target: account,
            value: 0,
            data: abi.encodeCall(IGnosisSafe.setFallbackHandler, (address(0)))
        });

        return abi.encodeCall(IGnosisMultiSend.multiSend, (SafeHelper._packMultisendTxns(txns)));
    }

    /**
     * @notice Provides multicall bytecode for enabling executor plugin on a sub-account
     * @dev Enables executor plugin, by enabling `ExecutorPlugin` as a Module, registering all executors on `ExecutorRegistry`
     * @param subAccount address of  sub-account
     * @param executors list of executor addresses to register
     * @return callData for multicall execution
     */
    function enableExecutorPluginOnSubAccount(address subAccount, address[] memory executors)
        external
        view
        returns (bytes memory)
    {
        uint256 _numberOfExecutors = executors.length;
        uint256 _numberOfTransactions = _numberOfExecutors + 1;

        Types.Executable[] memory txns = new Types.Executable[](_numberOfTransactions);

        bytes memory enableModuleViaModuleExec = abi.encodeCall(
            IGnosisSafe.execTransactionFromModule,
            (
                subAccount,
                0,
                abi.encodeCall(
                    IGnosisSafe.enableModule, (AddressProviderService._getAuthorizedAddress(_EXECUTOR_PLUGIN_HASH))
                    ),
                SafeHelper._parseOperationEnum(Types.CallType.CALL)
            )
        );

        txns[0] = Types.Executable({
            callType: Types.CallType.CALL,
            target: subAccount,
            value: 0,
            data: enableModuleViaModuleExec
        });

        address executorRegistry = AddressProviderService._getRegistry(_EXECUTOR_REGISTRY_HASH);
        uint256 i;
        while (i < _numberOfExecutors) {
            txns[i + 1] = Types.Executable({
                callType: Types.CallType.CALL,
                target: executorRegistry,
                value: 0,
                data: abi.encodeCall(ExecutorRegistry.registerExecutor, (subAccount, executors[i]))
            });

            unchecked {
                ++i;
            }
        }

        return abi.encodeCall(IGnosisMultiSend.multiSend, (SafeHelper._packMultisendTxns(txns)));
    }

    /**
     * @notice Provides multicall bytecode for disabling executor plugin on a sub-account
     * @dev Disabling executor plugin, by disabling `ExecutorPlugin` as a Module, de-registering all executors on `ExecutorRegistry`
     * @param subAccount address of  sub-account
     * @param previousModule address of previous module with respect to `ExecutorPlugin`
     * @return callData for multicall execution
     */
    function disableExecutorPluginOnSubAccount(address subAccount, address previousModule)
        external
        view
        returns (bytes memory)
    {
        ExecutorRegistry executorRegistry =
            ExecutorRegistry(AddressProviderService._getRegistry(_EXECUTOR_REGISTRY_HASH));
        address[] memory _executors = executorRegistry.getExecutorsForSubAccount(subAccount);

        uint256 _numberOfExecutors = _executors.length;
        Types.Executable[] memory txns = new Types.Executable[](_numberOfExecutors+1);

        bytes memory enableModuleViaModuleExec = abi.encodeCall(
            IGnosisSafe.execTransactionFromModule,
            (
                subAccount,
                0,
                abi.encodeCall(
                    IGnosisSafe.disableModule,
                    (previousModule, AddressProviderService._getAuthorizedAddress(_EXECUTOR_PLUGIN_HASH))
                    ),
                SafeHelper._parseOperationEnum(Types.CallType.CALL)
            )
        );

        txns[0] = Types.Executable({
            callType: Types.CallType.CALL,
            target: subAccount,
            value: 0,
            data: enableModuleViaModuleExec
        });

        uint256 i;
        while (i < _numberOfExecutors) {
            txns[i + 1] = Types.Executable({
                callType: Types.CallType.CALL,
                target: address(executorRegistry),
                value: 0,
                data: abi.encodeCall(ExecutorRegistry.deRegisterExecutor, (subAccount, _executors[i]))
            });

            unchecked {
                ++i;
            }
        }

        return abi.encodeCall(IGnosisMultiSend.multiSend, (SafeHelper._packMultisendTxns(txns)));
    }
}
