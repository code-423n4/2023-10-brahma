/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";
import {PolicyValidator} from "src/core/PolicyValidator.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";
import {AddressProviderService} from "src/core/AddressProviderService.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";

/**
 * @title TransactionValidator
 * @author Brahma.fi
 * @notice Allows validation of transactions pre and post execution
 */
contract TransactionValidator is AddressProviderService {
    error TxnUnAuthorized();
    error InvalidGuard();
    error InvalidFallbackHandler();
    error InvalidModule();

    /**
     * @notice datatype for safe transaction params
     * @param from address of safe
     * @param to target address
     * @param value txn value
     * @param data txn callData
     * @param operation type of operation
     * @param safeTxGas gas that should be used for safe txn
     * @param baseGas gas cost independent of txn cost
     * @param gasPrice gas price in current block
     * @param gasToken address of token used for gas
     * @param refundReceiver address of receiver of gas payment
     * @param signatures user signatures appended with validation signature
     * @param msgSender address of msg.sender of original txn
     */
    struct SafeTransactionParams {
        Enum.Operation operation;
        address from;
        address to;
        address payable refundReceiver;
        address gasToken;
        address msgSender;
        uint256 value;
        uint256 safeTxGas;
        uint256 baseGas;
        uint256 gasPrice;
        bytes data;
        bytes signatures;
    }

    constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   CONSOLE GUARD HOOKS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /**
     * @notice Validates a txn on guard before execution, for Brahma console accounts
     * @dev checks for possible console overrides and then performs policy validation
     * @param txParams params of transaction
     */
    function validatePreTransactionOverridable(SafeTransactionParams memory txParams) external view {
        // Check if guard or fallback handler is being removed, if yes, skip policy validation
        if (_isConsoleBeingOverriden(txParams.from, txParams.to, txParams.value, txParams.data, txParams.operation)) {
            return;
        }

        // Validate policy otherwise
        _validatePolicySignature(
            txParams.from, txParams.to, txParams.value, txParams.data, txParams.operation, txParams.signatures
        );
    }

    /* solhint-disable no-empty-blocks */
    /**
     * @notice Provides on-chain guarantees on security critical expected states of a Brhma console account
     * @dev Empty hook available for future use
     */
    function validatePostTransactionOverridable(bytes32, /*txHash */ bool, /*success */ address /*console */ )
        external
        view
    {}
    /* solhint-enable no-empty-blocks */

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   SUBACCOUNT GUARD HOOKS                   */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /**
     * @notice Validates a txn on guard before execution, for subAccounts
     * @dev calls policy validator to check if policy signature is valid
     * @param txParams params of transaction
     */
    function validatePreTransaction(SafeTransactionParams memory txParams) external view {
        _validatePolicySignature(
            txParams.from, txParams.to, txParams.value, txParams.data, txParams.operation, txParams.signatures
        );
    }

    /**
     * @notice Provides on-chain guarantees on security critical expected states of subAccount for guard
     * @param subAccount address of subAccount to validate
     */
    function validatePostTransaction(bytes32, /*txHash */ bool, /*success */ address subAccount) external view {
        _checkSubAccountSecurityConfig(subAccount);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   EXECUTOR PLUGIN GUARD HOOKS              */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /**
     * @notice Validates a module txn before execution
     * @dev calls policy validator to check if policy signature is valid
     * @param from address of safe
     * @param transactionStructHash transaction struct hash
     * @param signatures user signatures appended with validation signature
     */
    function validatePreExecutorTransaction(
        address, /*msgSender */
        address from,
        bytes32 transactionStructHash,
        bytes memory signatures
    ) external view {
        _validatePolicySignature(from, transactionStructHash, signatures);
    }

    /**
     * @notice Provides on-chain guarantees on security critical expected states of subAccount for executor plugin
     * @param subAccount address of subAccount to validate
     */
    function validatePostExecutorTransaction(address, /*msgSender */ address subAccount) external view {
        _checkSubAccountSecurityConfig(subAccount);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   INTERNAL METHODS                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /**
     * @notice Provides guarantees that the guard and fallback handler can always be removed by the console
     * @dev This ensures that, if a `ConsoleAccount` wishes to override policy checks, to change the guard or fallback handler, it can do so without any external intervention
     * @param _from address of sender
     * @param _to target address
     * @param _value txn value
     * @param _data txn callData
     * @param _operation type of operation
     * @return isGuardBeingRemoved
     */
    function _isConsoleBeingOverriden(
        address _from,
        address _to,
        uint256 _value,
        bytes memory _data,
        Enum.Operation _operation
    ) internal pure returns (bool) {
        /**
         * Following conditions validate if the transaction aims to remove guard or fallback handler on Safe
         *         from == to (safe sending txn to itself)
         *         value == 0
         *         data == abi.encodeCall(IGnosisSafe.setGuard, (address(0))) || abi.encodeCall(IGnosisSafe.setFallbackHandler, (address(0)))
         *         operation == Enum.Operation.Call
         *
         * In case these conditions are met, the guard is being removed, return true
         */
        if (_from == _to && _value == 0 && _operation == Enum.Operation.Call) {
            if (SafeHelper._GUARD_REMOVAL_CALLDATA_HASH == keccak256(_data)) {
                return true;
            } else if (SafeHelper._FALLBACK_REMOVAL_CALLDATA_HASH == keccak256(_data)) {
                return true;
            }
        }

        return false;
    }

    /**
     * @notice Internal helper to validate the module, guard and fallback handler for a subaccount
     * @dev Ensures that guard has not been disabled/updated and the owner console as a module has not been disabled
     * @param _subAccount address of subAccount
     */
    function _checkSubAccountSecurityConfig(address _subAccount) internal view {
        address guard = SafeHelper._getGuard(_subAccount);
        address fallbackHandler = SafeHelper._getFallbackHandler(_subAccount);

        // Ensure guard has not been disabled
        if (guard != AddressProviderService._getAuthorizedAddress(_SAFE_MODERATOR_HASH)) revert InvalidGuard();

        // Ensure fallback handler has not been altered
        if (fallbackHandler != AddressProviderService._getAuthorizedAddress(_CONSOLE_FALLBACK_HANDLER_HASH)) {
            revert InvalidFallbackHandler();
        }

        address ownerConsole =
            WalletRegistry(AddressProviderService._getRegistry(_WALLET_REGISTRY_HASH)).subAccountToWallet(_subAccount);

        // Ensure owner console as a module has not been disabled
        if (!IGnosisSafe(_subAccount).isModuleEnabled(ownerConsole)) revert InvalidModule();
    }

    /**
     * @notice Internal helper to validate policy signature for a safe txn
     * @dev Calls policy validator to check if policy signature is valid
     * @param _from address of safe
     * @param _to target address
     * @param _value txn value
     * @param _data txn callData
     * @param _operation type of operation
     * @param _signatures user signatures appended with validation signature
     */
    function _validatePolicySignature(
        address _from,
        address _to,
        uint256 _value,
        bytes memory _data,
        Enum.Operation _operation,
        bytes memory _signatures
    ) internal view {
        if (
            !PolicyValidator(AddressProviderService._getAuthorizedAddress(_POLICY_VALIDATOR_HASH)).isPolicySignatureValid(
                _from, _to, _value, _data, _operation, _signatures
            )
        ) {
            revert TxnUnAuthorized();
        }
    }

    /**
     * @notice Internal helper to validate policy signature for a module txn
     * @dev Calls policy validator to check if policy signature is valid
     * @param _from address of safe
     * @param _transactionStructHash transaction struct hash
     * @param _signatures user signatures appended with validation signature
     */
    function _validatePolicySignature(address _from, bytes32 _transactionStructHash, bytes memory _signatures)
        internal
        view
    {
        if (
            !PolicyValidator(AddressProviderService._getAuthorizedAddress(_POLICY_VALIDATOR_HASH)).isPolicySignatureValid(
                _from, _transactionStructHash, _signatures
            )
        ) {
            revert TxnUnAuthorized();
        }
    }
}
