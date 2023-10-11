/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {IGuard, Enum} from "interfaces/external/IGnosisSafe.sol";
import {AddressProviderService} from "src/core/AddressProviderService.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";

/**
 * @title SafeModerator
 * @author Brahma.fi
 * @notice A guard that validates transactions and allows only policy abiding txns, on Brahma console account
 */
contract SafeModerator is AddressProviderService, IGuard {
    constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

    /**
     * @notice Inherited from IGuard, function is called before executing a Safe transaction during execTransaction
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
    function checkTransaction(
        address to,
        uint256 value,
        bytes memory data,
        Enum.Operation operation,
        uint256 safeTxGas,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address payable refundReceiver,
        bytes memory signatures,
        address msgSender
    ) external view override {
        TransactionValidator(AddressProviderService._getAuthorizedAddress(_TRANSACTION_VALIDATOR_HASH))
            .validatePreTransaction(
            TransactionValidator.SafeTransactionParams({
                from: msg.sender,
                to: to,
                value: value,
                data: data,
                operation: operation,
                safeTxGas: safeTxGas,
                baseGas: baseGas,
                gasPrice: gasPrice,
                gasToken: gasToken,
                refundReceiver: refundReceiver,
                signatures: signatures,
                msgSender: msgSender
            })
        );
    }

    /**
     * @notice Inherited from IGuard, function is called after executing a Safe transaction during execTransaction
     * @param txHash tx hash, computed from transaction
     * @param success boolean indicating success
     */
    function checkAfterExecution(bytes32 txHash, bool success) external view override {
        TransactionValidator(AddressProviderService._getAuthorizedAddress(_TRANSACTION_VALIDATOR_HASH))
            .validatePostTransaction(txHash, success, msg.sender);
    }

    /**
     * @notice Inherited from IGuard, function is called after executing a Safe transaction during execTransactionViaModule
     * @dev No op-check. Provides compatibility with Safe 1.5 guard over module
     */
    /* solhint-disable no-empty-blocks */
    function checkModuleTransaction(
        address, /* to */
        uint256, /* value */
        bytes memory, /* data */
        Enum.Operation, /* operation */
        address /* module */
    ) external override {}
    /* solhint-enable no-empty-blocks */
}
