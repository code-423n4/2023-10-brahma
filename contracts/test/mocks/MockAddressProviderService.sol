// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "src/core/AddressProviderService.sol";

contract MockAddressProviderService is AddressProviderService {
    constructor(address ap) AddressProviderService(ap) {}

    function getRegistry(bytes32 _key) external view returns (address) {
        return _getRegistry(_key);
    }

    function getAuthorizedAddress(bytes32 _key) external view returns (address) {
        return _getAuthorizedAddress(_key);
    }

    function onlyGov() external view {
        _onlyGov();
    }

    function notNull(address addr) external pure {
        _notNull(addr);
    }

    function EXECUTOR_PLUGIN_HASH() external pure returns (bytes32) {
        return _EXECUTOR_PLUGIN_HASH;
    }

    function EXECUTOR_REGISTRY_HASH() external pure returns (bytes32) {
        return _EXECUTOR_REGISTRY_HASH;
    }

    function GNOSIS_FALLBACK_HANDLER_HASH() external pure returns (bytes32) {
        return _GNOSIS_FALLBACK_HANDLER_HASH;
    }

    function CONSOLE_FALLBACK_HANDLER_HASH() external pure returns (bytes32) {
        return _CONSOLE_FALLBACK_HANDLER_HASH;
    }

    function GNOSIS_MULTI_SEND_HASH() external pure returns (bytes32) {
        return _GNOSIS_MULTI_SEND_HASH;
    }

    function GNOSIS_PROXY_FACTORY_HASH() external pure returns (bytes32) {
        return _GNOSIS_PROXY_FACTORY_HASH;
    }

    function GNOSIS_SINGLETON_HASH() external pure returns (bytes32) {
        return _GNOSIS_SINGLETON_HASH;
    }

    function GUARDIAN_HASH() external pure returns (bytes32) {
        return _GUARDIAN_HASH;
    }

    function POLICY_REGISTRY_HASH() external pure returns (bytes32) {
        return _POLICY_REGISTRY_HASH;
    }

    function POLICY_VALIDATOR_HASH() external pure returns (bytes32) {
        return _POLICY_VALIDATOR_HASH;
    }

    function SAFE_DEPLOYER_HASH() external pure returns (bytes32) {
        return _SAFE_DEPLOYER_HASH;
    }

    function SAFE_MODERATOR_HASH() external pure returns (bytes32) {
        return _SAFE_MODERATOR_HASH;
    }

    function SAFE_MODERATOR_OVERRIDABLE_HASH() external pure returns (bytes32) {
        return _SAFE_MODERATOR_OVERRIDABLE_HASH;
    }

    function TRANSACTION_VALIDATOR_HASH() external pure returns (bytes32) {
        return _TRANSACTION_VALIDATOR_HASH;
    }

    function TRUSTED_VALIDATOR_HASH() external pure returns (bytes32) {
        return _TRUSTED_VALIDATOR_HASH;
    }

    function WALLET_REGISTRY_HASH() external pure returns (bytes32) {
        return _WALLET_REGISTRY_HASH;
    }
}
