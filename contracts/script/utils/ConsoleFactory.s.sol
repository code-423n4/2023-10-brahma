// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {AddressProvider} from "src/core/AddressProvider.sol";
import {ConsoleFallbackHandler} from "src/core/ConsoleFallbackHandler.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {SafeEnabler} from "src/core/SafeEnabler.sol";
import {SafeModerator} from "src/core/SafeModerator.sol";
import {PolicyValidator} from "src/core/PolicyValidator.sol";
import {ExecutorPlugin} from "src/core/ExecutorPlugin.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";
import {SafeModeratorOverridable} from "src/core/SafeModeratorOverridable.sol";
import {Constants} from "src/core/Constants.sol";
import {ConsoleOpBuilder} from "src/core/ConsoleOpBuilder.sol";
import {PolicyRegistry} from "src/core/registries/PolicyRegistry.sol";
import {ExecutorRegistry} from "src/core/registries/ExecutorRegistry.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";

import "test/commons/AddressRegistry.sol";

import {Deployer} from "./Deployer.sol";
import "./ConstantSetup.s.sol";

contract ConsoleFactory is Constants, ConstantSetup, AddressRegistry {
    string private suffix = "beta_v2";

    AddressProvider addressProvider;
    ConsoleFallbackHandler consoleFallbackHandler;
    WalletRegistry walletRegistry;
    PolicyRegistry policyRegistry;
    ExecutorRegistry executorRegistry;
    SafeDeployer safeDeployer;
    SafeModerator safeModerator;
    SafeModeratorOverridable safeModeratorOverridable;
    PolicyValidator policyValidator;
    ExecutorPlugin executorPlugin;
    TransactionValidator transactionValidator;
    SafeEnabler safeEnabler;
    ConsoleOpBuilder consoleOpBuilder;

    Deployer deployer;
    //
    // TODO:  set actual address during deployment
    address trustedValidator = makeAddr("TrustedValidator");

    bytes32 addressProviderSalt = salt("AddressProvider");
    bytes32 consoleFallbackHandlerSalt = salt("ConsoleFallbackHandler");
    bytes32 walletRegistrySalt = salt("WalletRegistry");
    bytes32 policyRegistrySalt = salt("PolicyRegistry");
    bytes32 executorRegistrySalt = salt("ExecutorRegistry");
    bytes32 safeDeployerSalt = salt("SafeDeployer");
    bytes32 safeModeratorSalt = salt("SafeModerator");
    bytes32 safeModeratorOverridableSalt = salt("SafeModeratorOverridable");
    bytes32 policyValidatorSalt = salt("PolicyValidator");
    bytes32 executorPluginSalt = salt("ExecutorPlugin");
    bytes32 safeEnablerSalt = salt("SafeEnabler");
    bytes32 transactionValidatorSalt = salt("TransactionValidator");
    bytes32 consoleOpBuilderSalt = salt("ConsoleOpBuilder");

    constructor(string memory _addressManagerPath) AddressRegistry(_addressManagerPath) {}

    function deployConsole(address gov, bool broadcast) public {
        if (broadcast) {
            vm.startBroadcast();
        } else {
            vm.startPrank(gov);
        }
        deployer = new Deployer{salt:"deployer"}();
        addressProvider = AddressProvider(
            deployer.create3Deploy(type(AddressProvider).creationCode, addressProviderSalt, abi.encode(gov, gov, gov))
        );

        consoleFallbackHandler = ConsoleFallbackHandler(
            deployer.create3Deploy(
                type(ConsoleFallbackHandler).creationCode,
                consoleFallbackHandlerSalt,
                abi.encode(address(addressProvider))
            )
        );

        walletRegistry = WalletRegistry(
            deployer.create3Deploy(
                type(WalletRegistry).creationCode, walletRegistrySalt, abi.encode(address(addressProvider))
            )
        );

        policyRegistry = PolicyRegistry(
            deployer.create3Deploy(
                type(PolicyRegistry).creationCode, policyRegistrySalt, abi.encode(address(addressProvider))
            )
        );

        executorRegistry = ExecutorRegistry(
            deployer.create3Deploy(
                type(ExecutorRegistry).creationCode, executorRegistrySalt, abi.encode(address(addressProvider))
            )
        );
        safeDeployer = SafeDeployer(
            deployer.create3Deploy(
                type(SafeDeployer).creationCode, safeDeployerSalt, abi.encode(address(addressProvider))
            )
        );
        safeModerator = SafeModerator(
            deployer.create3Deploy(
                type(SafeModerator).creationCode, safeModeratorSalt, abi.encode(address(addressProvider))
            )
        );
        safeModeratorOverridable = SafeModeratorOverridable(
            deployer.create3Deploy(
                type(SafeModeratorOverridable).creationCode,
                safeModeratorOverridableSalt,
                abi.encode(address(addressProvider))
            )
        );
        policyValidator = PolicyValidator(
            deployer.create3Deploy(
                type(PolicyValidator).creationCode, policyValidatorSalt, abi.encode(address(addressProvider))
            )
        );
        executorPlugin = ExecutorPlugin(
            deployer.create3Deploy(
                type(ExecutorPlugin).creationCode, executorPluginSalt, abi.encode(address(addressProvider))
            )
        );
        transactionValidator = TransactionValidator(
            deployer.create3Deploy(
                type(TransactionValidator).creationCode, transactionValidatorSalt, abi.encode(address(addressProvider))
            )
        );
        consoleOpBuilder = ConsoleOpBuilder(
            deployer.create3Deploy(
                type(ConsoleOpBuilder).creationCode, consoleOpBuilderSalt, abi.encode(address(addressProvider))
            )
        );
        safeEnabler = SafeEnabler(deployer.create3Deploy(type(SafeEnabler).creationCode, safeEnablerSalt, bytes("")));

        addressProvider.setRegistry(_WALLET_REGISTRY_HASH, address(walletRegistry));
        addressProvider.setRegistry(_POLICY_REGISTRY_HASH, address(policyRegistry));
        addressProvider.setRegistry(_EXECUTOR_REGISTRY_HASH, address(executorRegistry));
        //
        addressProvider.setAuthorizedAddress(_SAFE_DEPLOYER_HASH, address(safeDeployer), false);
        addressProvider.setAuthorizedAddress(_SAFE_ENABLER_HASH, address(safeEnabler), true);
        addressProvider.setAuthorizedAddress(_SAFE_MODERATOR_HASH, address(safeModerator), false);
        addressProvider.setAuthorizedAddress(_SAFE_MODERATOR_OVERRIDABLE_HASH, address(safeModeratorOverridable), false);
        addressProvider.setAuthorizedAddress(_POLICY_VALIDATOR_HASH, address(policyValidator), false);
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, trustedValidator, false);
        addressProvider.setAuthorizedAddress(_EXECUTOR_PLUGIN_HASH, address(executorPlugin), false);
        addressProvider.setAuthorizedAddress(_TRANSACTION_VALIDATOR_HASH, address(transactionValidator), false);
        addressProvider.setAuthorizedAddress(_CONSOLE_OP_BUILDER_HASH, address(consoleOpBuilder), false);
        //
        addressProvider.setAuthorizedAddress(_GNOSIS_PROXY_FACTORY_HASH, proxyDeployer, true);
        addressProvider.setAuthorizedAddress(_GNOSIS_SINGLETON_HASH, singleton, true);
        addressProvider.setAuthorizedAddress(_GNOSIS_MULTI_SEND_HASH, gnosisMultisend, true);
        addressProvider.setAuthorizedAddress(_GNOSIS_FALLBACK_HANDLER_HASH, fallbackHandler, true);
        addressProvider.setAuthorizedAddress(_CONSOLE_FALLBACK_HANDLER_HASH, address(consoleFallbackHandler), true);

        if (broadcast) {
            vm.stopBroadcast();

            saveToFile("AddressProvider", address(addressProvider));
            saveToFile("WalletRegistry", address(walletRegistry));
            saveToFile("PolicyRegistry", address(policyRegistry));
            saveToFile("ExecutorRegistry", address(executorRegistry));
            saveToFile("SafeDeployer", address(safeDeployer));
            saveToFile("SafeModerator", address(safeModerator));
            saveToFile("SafeModeratorOverridable", address(safeModeratorOverridable));
            saveToFile("PolicyValidator", address(policyValidator));
            saveToFile("ExecutorPlugin", address(executorPlugin));
            saveToFile("TransactionValidator", address(transactionValidator));
            saveToFile("SafeEnabler", address(safeEnabler));
            saveToFile("ConsoleFallbackHandler", address(consoleFallbackHandler));
            saveToFile("ConsoleOpBuilder", address(consoleOpBuilder));
        } else {
            vm.stopPrank();
        }
    }

    function useDeployment() public {
        addressProvider = AddressProvider(readFromFile("AddressProvider"));
        policyRegistry = PolicyRegistry(readFromFile("PolicyRegistry"));
        walletRegistry = WalletRegistry(readFromFile("WalletRegistry"));
        executorRegistry = ExecutorRegistry(readFromFile("ExecutorRegistry"));
    }

    function salt(string memory contractName) public view returns (bytes32) {
        return keccak256(abi.encodePacked(suffix, contractName));
    }
}
