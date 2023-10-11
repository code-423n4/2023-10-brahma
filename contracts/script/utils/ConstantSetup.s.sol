// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.19;

contract ConstantSetup {
    // Safe 1.3.0 Addresses
    address public singleton;
    address public proxyDeployer;
    address public fallbackHandler;
    address public gnosisMultisend;

    address public constant ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    constructor() {
        setUpConstants();
    }

    function setUpConstants() public {
        // Ethereum Mainnet
        if (block.chainid == 1) {
            singleton = 0xd9Db270c1B5E3Bd161E8c8503c55cEABeE709552;
            proxyDeployer = 0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2;
            fallbackHandler = 0xf48f2B2d2a534e402487b3ee7C18c33Aec0Fe5e4;
            gnosisMultisend = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761;
        }
        // Ethereum Goerli Testnet
        if (block.chainid == 5) {
            singleton = 0xd9Db270c1B5E3Bd161E8c8503c55cEABeE709552;
            proxyDeployer = 0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2;
            fallbackHandler = 0xf48f2B2d2a534e402487b3ee7C18c33Aec0Fe5e4;
            gnosisMultisend = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761;
        }
        // Optimism Mainnet
        if (block.chainid == 10) {
            /// @notice UNOFFICIAL DEPLOYMENT (to get same address across all chains)
            singleton = 0xd9Db270c1B5E3Bd161E8c8503c55cEABeE709552;
            proxyDeployer = 0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2;
            fallbackHandler = 0xf48f2B2d2a534e402487b3ee7C18c33Aec0Fe5e4;
            gnosisMultisend = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761;
            // singleton = 0x69f4D1788e39c87893C980c06EdF4b7f686e2938;
            // proxyDeployer = 0xC22834581EbC8527d974F8a1c97E1bEA4EF910BC;
            // fallbackHandler = 0x017062a1dE2FE6b99BE3d9d37841FeD19F573804;
            // gnosisMultisend = 0x998739BFdAAdde7C933B942a68053933098f9EDa;
        }
        // Binance Smart Chain Mainnet
        if (block.chainid == 56) {
            singleton = 0xd9Db270c1B5E3Bd161E8c8503c55cEABeE709552;
            proxyDeployer = 0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2;
            fallbackHandler = 0xf48f2B2d2a534e402487b3ee7C18c33Aec0Fe5e4;
            gnosisMultisend = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761;
        }
        // Polygon Mainnet
        if (block.chainid == 137) {
            singleton = 0xd9Db270c1B5E3Bd161E8c8503c55cEABeE709552;
            proxyDeployer = 0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2;
            fallbackHandler = 0xf48f2B2d2a534e402487b3ee7C18c33Aec0Fe5e4;
            gnosisMultisend = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761;
        }
        // Fantom Opera
        if (block.chainid == 250) {
            singleton = 0xd9Db270c1B5E3Bd161E8c8503c55cEABeE709552;
            proxyDeployer = 0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2;
            fallbackHandler = 0xf48f2B2d2a534e402487b3ee7C18c33Aec0Fe5e4;
            gnosisMultisend = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761;
        }
        // Polygon zkEVM
        if (block.chainid == 1101) {
            singleton = 0xd9Db270c1B5E3Bd161E8c8503c55cEABeE709552;
            proxyDeployer = 0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2;
            fallbackHandler = 0xf48f2B2d2a534e402487b3ee7C18c33Aec0Fe5e4;
            gnosisMultisend = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761;
        }
        // Base Mainnet
        if (block.chainid == 8453) {
            /// @notice UNOFFICIAL DEPLOYMENT (to get same address across all chains)
            singleton = 0xd9Db270c1B5E3Bd161E8c8503c55cEABeE709552;
            proxyDeployer = 0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2;
            fallbackHandler = 0xf48f2B2d2a534e402487b3ee7C18c33Aec0Fe5e4;
            gnosisMultisend = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761;
            // singleton = 0x69f4D1788e39c87893C980c06EdF4b7f686e2938;
            // proxyDeployer = 0xC22834581EbC8527d974F8a1c97E1bEA4EF910BC;
            // fallbackHandler = 0x017062a1dE2FE6b99BE3d9d37841FeD19F573804;
            // gnosisMultisend = 0x998739BFdAAdde7C933B942a68053933098f9EDa;
        }
        // Arbitrum One
        if (block.chainid == 42161) {
            singleton = 0xd9Db270c1B5E3Bd161E8c8503c55cEABeE709552;
            proxyDeployer = 0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2;
            fallbackHandler = 0xf48f2B2d2a534e402487b3ee7C18c33Aec0Fe5e4;
            gnosisMultisend = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761;
        }
        // Avalanche C Chain
        if (block.chainid == 43114) {
            /// @notice UNOFFICIAL DEPLOYMENT (to get same address across all chains)
            singleton = 0xd9Db270c1B5E3Bd161E8c8503c55cEABeE709552;
            proxyDeployer = 0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2;
            fallbackHandler = 0xf48f2B2d2a534e402487b3ee7C18c33Aec0Fe5e4;
            gnosisMultisend = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761;
            // singleton = 0x69f4D1788e39c87893C980c06EdF4b7f686e2938;
            // proxyDeployer = 0xC22834581EbC8527d974F8a1c97E1bEA4EF910BC;
            // fallbackHandler = 0x017062a1dE2FE6b99BE3d9d37841FeD19F573804;
            // gnosisMultisend = 0x998739BFdAAdde7C933B942a68053933098f9EDa;
        }
    }
}
