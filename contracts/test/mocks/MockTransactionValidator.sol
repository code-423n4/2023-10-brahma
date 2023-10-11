// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";
import {AddressProviderService} from "src/core/AddressProviderService.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";

abstract contract MockTransactionValidator {
    error TxnUnAuthorized();

    function validatePreTransactionOverridable(TransactionValidator.SafeTransactionParams memory txParams)
        external
        view
        virtual
    {}

    function validatePreTransaction(TransactionValidator.SafeTransactionParams memory txParams) external view virtual {}

    function validatePreExecutorTransaction(
        address, /*msgSender */
        address from,
        address to,
        uint256 value,
        bytes memory data,
        Enum.Operation operation,
        bytes memory signatures
    ) external view virtual {}

    function validatePostTransaction(bytes32, /*txHash */ bool, /*success */ address subAccount)
        external
        view
        virtual
    {}

    function validatePostExecutorTransaction(address, /*msgSender */ address subAccount) external view virtual {}

    function validatePostTransactionOverridable(bytes32, /*txHash */ bool, /*success */ address /*console */ )
        external
        view
        virtual
    {}
}
