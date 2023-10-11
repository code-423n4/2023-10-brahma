/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {AddressProviderService} from "../AddressProviderService.sol";
import {WalletRegistry} from "./WalletRegistry.sol";
import {EnumerableSet} from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";

/**
 * @title ExecutorRegistry
 * @author Brahma.fi
 * @notice Registry for executors for sub accounts
 */
contract ExecutorRegistry is AddressProviderService {
    using EnumerableSet for EnumerableSet.AddressSet;

    error NotOwnerWallet();
    error AlreadyExists();
    error DoesNotExist();

    event RegisterExecutor(address indexed _subAccount, address indexed _owner, address indexed _executor);
    event DeRegisterExecutor(address indexed _subAccount, address indexed _owner, address indexed _executor);

    /// @notice subAccount addresses mapped to executor addresses
    mapping(address subAccount => EnumerableSet.AddressSet) private subAccountToExecutors;

    constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

    /**
     * @notice Registers an executor for subaccount
     * @dev Adds new executor if it doesn't already exists else reverts with AlreadyExists()
     * @dev Can be only called by owner of subAccount
     * @param _subAccount subAcc address to add executor to
     * @param _executor executor to add
     */
    function registerExecutor(address _subAccount, address _executor) external {
        WalletRegistry _walletRegistry = WalletRegistry(AddressProviderService._getRegistry(_WALLET_REGISTRY_HASH));
        if (!_walletRegistry.isOwner(msg.sender, _subAccount)) revert NotOwnerWallet();

        if (!subAccountToExecutors[_subAccount].add(_executor)) revert AlreadyExists();
        emit RegisterExecutor(_subAccount, msg.sender, _executor);
    }

    /**
     * @notice De-registers an executor for subaccount
     * @dev removes an executor if it exists else reverts with DoesNotExist()
     * @dev Can be only called by owner of subAccount
     * @param _subAccount subAcc address remove executor from
     * @param _executor executor to remove
     */
    function deRegisterExecutor(address _subAccount, address _executor) external {
        WalletRegistry _walletRegistry = WalletRegistry(AddressProviderService._getRegistry(_WALLET_REGISTRY_HASH));
        if (_walletRegistry.subAccountToWallet(_subAccount) != msg.sender) revert NotOwnerWallet();

        if (!subAccountToExecutors[_subAccount].remove(_executor)) revert DoesNotExist();
        emit DeRegisterExecutor(_subAccount, msg.sender, _executor);
    }

    /**
     * @notice checks if _executor is registered for _subAccount
     * @param _subAccount address of subAccount
     * @param _executor address of executor
     * @return isExecutorValid
     */
    function isExecutor(address _subAccount, address _executor) external view returns (bool) {
        return subAccountToExecutors[_subAccount].contains(_executor);
    }

    /**
     * @return all the executors for a subAccount
     * @param _subAccount address of subAccount
     */
    function getExecutorsForSubAccount(address _subAccount) external view returns (address[] memory) {
        return subAccountToExecutors[_subAccount].values();
    }
}
