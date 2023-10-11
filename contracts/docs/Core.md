# Contracts

## Address Provider

The `AddressProvider` contract manages and updates addresses of authorized contracts and registries within the system and serves as a singular source of truth when reading addresses. It enforces governance control over these updates and ensures that the addresses implement a valid `IAddressProviderService` interface.

## Address Provider Service

The `AddressProviderService` is an abstract contract, that is inherited by all the core contracts, and it provides `AddressProvider` as a dependency to the inheriting contracts and also equips them with all the required constants and helper functions to query from and interact with it.

## Safe Deployer

The `SafeDeployer` contract facilitates the deployment of Gnosis Safe accounts and configuring them as console accounts (i.e, registers them on `WalletRegistry` etc.). It allows creating console accounts with optional policy commitments and registering them, as well as sub-accounts with policy commitments, and also registers them.

Along with committing policy on behalf of the deployed account, it also sets up the following required states for policy validation -

-   For `ConsoleAccount` (with policy commit)
    -   `ConsoleFallbackHandler` as fallback handler
    -   `SafeModeratorOverridable` as safe guard
-   For `SubAccount`
    -   `ConsoleFallbackHandler` as fallback handler
    -   `SafeModerator` a safe guard
    -   `ConsoleAccount` as an enabled module

## Safe Moderator

The `SafeModerator` contract is a safe guard that validates transactions to be executed on console sub-accounts. It ensures that transactions adhere to predefined policies by validating with the `TransactionValidator` contract. This guard checks transactions both before and after execution for policy adherence on sub-accounts.

On top of policy compliance, it also ensures that the following is true for every transaction -

-   Transaction is policy compliant
-   `SafeModerator` is intact as the safe's guard
-   `ConsoleAccount` is intact as an enabled module
-   `ConsoleFallbackHandler` is intact as the safe's fallback handler

## Safe Moderator Overridable

The `SafeModeratorOverridable` contract is a safe guard for Console accounts. It validates transactions, ensuring policy compliance using the `TransactionValidator` contract. It checks transactions before and after execution.

On top of policy compliance, it also ensures that

-   an owner of a console override all checks to remove `SafeModeratorOverridable` as guard if needed.
-   an owner of a console override all checks to remove `ConsoleFallbackHandler` as fallback handler if needed.

These checks ensure that in a case where the owners of `ConsoleAccount` wish to override check policy checks from `SafeModeratorOverridable` or `ConsoleFallbackHandler`, they would be able to do so without any external intervention.
The calls made for the aforementioned actions are also required to be a direct, explicit call (not part of a multiCall etc.) as this ensures that the intent is solely for the purpose for overriding checks.

## Transaction Validator

The `TransactionValidator` contract provides hooks for validation of the various kinds of transactions on Console and SubAccount. These hooks include validating policy/state compliance before and after transactions for both Console and SubAccount via. the guards (`SafeModerator` & `SafeModeratorOverridable`), and also for module execution on SubAccount via. `ExecutorPlugin`.
All validation required by other contracts comes from these hooks, with a goal of being able to upgrade this contract to change the checks performed, thus it also includes hooks that are currently not in use but are intentionally left empty for potential future usage.

## Policy Validator

The `PolicyValidator` contract validates validator signature against account policies. It checks if transaction signatures and expiry timestamps are valid, ensuring policy compliance before execution based on EIP712 signatures.

## Executor Plugin

The `ExecutorPlugin` contract acts as a safe module and facilitates execution requests on Console accounts with permissions. Executors can raise requests that are executed as module transactions on Console account. It validates the executor's signature, checks the executor's validity for the account, and verifies the policy for execution using the `TransactionValidator` contract. If all checks pass, it executes the transaction and handles the return data.

## SafeEnabler

The `SafeEnabler` contract provides bytecode for enabling modules and guards on Safe, during its initialization via DELEGATECALL by the safe itself. The `selfAuthorized` check on Safe's `ModuleManager` and `GuardManager` makes it unfeasible to DELEGATECALL into, to manage module/guard state, and thus, this contract provides bytecode for the same but while bypassing the `selfAuthorized` check.

-   [ModuleManager Reference](https://github.com/safe-global/safe-contracts/blob/186a21a74b327f17fc41217a927dea7064f74604/contracts/base/ModuleManager.sol#L32C5-L32C5)
-   [GuardManager Reference](https://github.com/safe-global/safe-contracts/blob/186a21a74b327f17fc41217a927dea7064f74604/contracts/base/GuardManager.sol#L34)

## ConsoleFallbackHandler

The `ConsoleFallbackHandler` contract acts as a fallback handler for safe. It performs all the same functions as the Safe's `CompatibilityFallbackHandler`, to provide compatibility between pre 1.3.0 and 1.3.0+ Safe contracts, and additionally also ensures policy validation guarantees required for `ConsoleAccounts`/`SubAccounts` that have policy validation enabled.
Most of the bytecode in methods are kept as close as possible to `CompatibilityFallbackHandler`, with the only change being in signature validation, where additional checks are performed to ensure that they are policy compliant.

-   [CompatibilityFallbackHandler Reference](https://github.com/safe-global/safe-contracts/blob/main/contracts/handler/CompatibilityFallbackHandler.sol)

## ConsoleOpBuilder

The `ConsoleOpBuilder` contract contains functions that provide the multiCall execution bytecode needed for console user operations, such as managing policy, managing execution etc. The callData provided by this contract is meant to be executed via `GnosisMultiSend::multiSend()` from `ConsoleAccount` as DELEGATECALL. `GnosisMultiSend` here refers to the contract who's address is stored at `AddressProvider::authorizedAddresses(_GNOSIS_MULTI_SEND_HASH)`.

# Libraries

## Safe Helper

The `SafeHelper` library serves as a helper library, offering essential functions for a range of interactions with Safe. These include executing transactions, generating calldata, obtaining necessary storage slots, parsing data etc.

## TypeHashHelper

The `TypeHashHelper` library serves as a helper library, offering the functions required for building struct hashes for generating EIP712 digests that are required for signature validations.
