/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

/**
 * @title Constants
 * @author Brahma.fi
 * @notice Contains constants used by multiple contracts
 * @dev Inflates bytecode size by approximately 560 bytes on deployment, but saves gas on runtime
 */
abstract contract Constants {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        REGISTRIES                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /// @notice keccak256("ExecutorRegistry")
    bytes32 internal constant _EXECUTOR_REGISTRY_HASH =
        0x165eedff3947ccfbe9739de5f67209b9935e684faef9ce859fb3dc46d33317f1;

    /// @notice keccak256("WalletRegistry")
    bytes32 internal constant _WALLET_REGISTRY_HASH = 0x75559f593e25c44cbf7547c1b715821f42da95df7f98cc735242e5e68111f75b;

    /// @notice keccak256("PolicyRegistry")
    bytes32 internal constant _POLICY_REGISTRY_HASH = 0xbcf81d40f2af7491686907859b412c7908faa6fb0c2baa84d3a2f4ee8bddcac9;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          CORE                              */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /// @notice keccak256("ExecutorPlugin")
    bytes32 internal constant _EXECUTOR_PLUGIN_HASH = 0x93ae17d63c11c26435c52b81ff53503650df80d35c62972110e64a0454badbec;

    /// @notice keccak256("ConsoleFallbackHandler")
    bytes32 internal constant _CONSOLE_FALLBACK_HANDLER_HASH =
        0xae7411971cec68831bcab624e30a4a0a5f5439f59e63328ddc36cb3fd7a6e7c1;

    /// @notice keccak256("GnosisFallbackHandler")
    bytes32 internal constant _GNOSIS_FALLBACK_HANDLER_HASH =
        0x1d0e7baa67448e6f8f5d2d87a7a735e5169126f41c10a38f620af92e1330b40d;

    /// @notice keccak256("GnosisMultiSend")
    bytes32 internal constant _GNOSIS_MULTI_SEND_HASH =
        0x715c5882bd95d4620322df75c5ab7f02e94c69337dbd853ac1ee6f46017c2e70;

    /// @notice keccak256("GnosisProxyFactory")
    bytes32 internal constant _GNOSIS_PROXY_FACTORY_HASH =
        0x52941112416a4a1e2ba89836a1489d24ce80a72d85f6aac86c51a27cc3ad5aa1;

    /// @notice keccak256("GnosisSafeSingleton")
    bytes32 internal constant _GNOSIS_SINGLETON_HASH =
        0x2bfdce65c4c0ca0f23ed8aa5f1391eae3ebd542786781824b0cf2af1ee477849;

    /// @notice keccak256("PolicyValidator")
    bytes32 internal constant _POLICY_VALIDATOR_HASH =
        0x64f265888225e50b07bac47655ac1813ae55b484fcd2987f60cc44f47dd2bc62;

    /// @notice keccak256("SafeDeployer")
    bytes32 internal constant _SAFE_DEPLOYER_HASH = 0x6a361f18b7bdd4971167a9db369c1357f3ebc95ef7fca81cd1aebfaeb988666d;

    /// @notice keccak256("SafeEnabler")
    bytes32 internal constant _SAFE_ENABLER_HASH = 0xcfef2b3eaf4a23b5f44a9550982acf18e82082f6a9756b60ca375f7b497918ca;

    /// @notice keccak256("SafeModerator")
    bytes32 internal constant _SAFE_MODERATOR_HASH = 0x1ba997699674cf2f5c633ee918b93d66618d3081db3e508721439eeef694efc7;

    /// @notice keccak256("SafeModeratorOverridable")
    bytes32 internal constant _SAFE_MODERATOR_OVERRIDABLE_HASH =
        0xc70d2b4d45b7a19323a1c8274160190d132d8d675cb539a992b330caa33f7faa;

    /// @notice keccak256("TransactionValidator")
    bytes32 internal constant _TRANSACTION_VALIDATOR_HASH =
        0xafb0a433e8688b3129b23c7a328676ad1689d2ad64b49e0ed21edcd0d36ec73d;

    /// @notice keccak256("ConsoleOpBuilder")
    bytes32 internal constant _CONSOLE_OP_BUILDER_HASH =
        0x2fa1de21ef473c3db44f5bbcf769de9538366142cab32c7df7c0fb598c034a5b;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          ROLES                             */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /// @notice keccak256("Guardian")
    bytes32 internal constant _GUARDIAN_HASH = 0x424560fc12b0242dae8bb63e27dad69d2589059728e8daf9b2ff8557998f3402;

    /// @notice keccak256("TrustedValidator")
    bytes32 internal constant _TRUSTED_VALIDATOR_HASH =
        0xc8fab2cea6e498c7d5e11e57566a1bd0376d100edae95e1256aeb6072ee66f89;
}
