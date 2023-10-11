/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {IAddressProviderService} from "../../interfaces/IAddressProviderService.sol";
import {AddressProvider} from "../core/AddressProvider.sol";
import {Constants} from "./Constants.sol";

/**
 * @title AddressProviderService
 * @author Brahma.fi
 * @notice Provides a base contract for services to resolve other services through AddressProvider
 * @dev This contract is designed to be inheritable by other contracts
 *  Provides quick and easy access to all contracts in Console Ecosystem
 */
abstract contract AddressProviderService is IAddressProviderService, Constants {
    error InvalidAddressProvider();
    error NotGovernance(address);
    error InvalidAddress();

    /// @notice address of addressProvider
    // solhint-disable-next-line immutable-vars-naming
    AddressProvider public immutable addressProvider;

    constructor(address _addressProvider) {
        if (_addressProvider == address(0)) revert InvalidAddressProvider();
        addressProvider = AddressProvider(_addressProvider);
    }

    /**
     * @inheritdoc IAddressProviderService
     */
    function addressProviderTarget() external view override returns (address) {
        return address(addressProvider);
    }

    /**
     * @notice Helper to get registry address from address provider
     * @param _key keccak256 key corresponding to registry
     * @return registry address
     */
    function _getRegistry(bytes32 _key) internal view returns (address registry) {
        registry = addressProvider.getRegistry(_key);
        _notNull(registry);
    }

    /**
     * @notice Helper to get authorized address from address provider
     * @param _key keccak256 key corresponding to authorized address
     * @return authorizedAddress
     */
    function _getAuthorizedAddress(bytes32 _key) internal view returns (address authorizedAddress) {
        authorizedAddress = addressProvider.getAuthorizedAddress(_key);
        _notNull(authorizedAddress);
    }

    /**
     * @notice Checks if msg.sender is governance
     */
    function _onlyGov() internal view {
        if (msg.sender != addressProvider.governance()) {
            revert NotGovernance(msg.sender);
        }
    }

    /**
     * @notice Helper to revert if address is null
     * @param _addr address to check
     */
    function _notNull(address _addr) internal pure {
        if (_addr == address(0)) revert InvalidAddress();
    }
}
