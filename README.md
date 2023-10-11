# Brahma.fi audit details
- Total Prize Pool: $31,250 USDC
  - HM awards: $19,500 USDC
  - Analysis awards: $1,500 USDC
  - QA awards: $750 USDC
  - Bot Race awards: $2,250 USDC
  - Gas awards: $750 USDC
  - Judge awards: $3,600 USDC
  - Lookout awards: $2,400 USDC
  - Scout awards: $500 USDC
- Submit findings [using the C4 form](https://code4rena.com/contests/2023-10-brahma/submit)
- [Read our guidelines for more details](https://docs.code4rena.com/roles/wardens)
- Starts October 13, 2023 20:00 UTC
- Ends October 20, 2023 20:00 UTC

## Automated Findings / Publicly Known Issues

Automated findings output for the audit can be found [here](https://github.com/code-423n4/2023-10-brahma/blob/main/bot-report.md) within 24 hours of audit opening.

*Note for C4 wardens: Anything included in the automated findings output is considered a publicly known issue and is ineligible for awards.*



# Overview

Brahma Console v2 is an orchestration layer designed to enhance the DeFi experience on smart contract wallets. Built on safe, with user-configurable automation/strategies for frequent DeFi interactions, available for low cost powered by Brahma. 


Brahma Console offers automation to users without requiring them to give up custody of their funds, all from the comfort of their wallet.
Users also have access to SafeSub-accounts that reduce their risk from the protocol by isolating their interactions.

-   `Console Account` - A standard off-the-shelf gnosis safe owned by `n` users.
-   `SubAccount` - A gnosis safe operated by the delegatee accounts called `Operators`, owned by `Console Account`, has enabled `Console Account` as a safe module and `SafeModerator` as safe guard. `Operators` have rights to execute certain transactions enabled by `Console Account (Owner)`. `Console Account` has supreme authority over `subAccount`.
-   `Operator` - Account that is one `delegated owner` of the subAccount with rights restricted by `SafeModerator`. Its rights can be updated by `ConsoleAccount`.
-   `Executor` - An account authorized to make module transactions on a `subAccount` via `ExecutorPlugin`, `ExecutorPlugin` needs to be enabled as module on `subAccount`.

## Links

- **Previous audits:** https://github.com/Brahma-fi/brahma-security/blob/master/audits/brahma-fi-consolev2-audit-10-23-ackee.pdf
- **Documentation:** https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/docs
- **Website:** https://brahma.fi
- **Twitter:** https://twitter.com/BrahmaFi
- **Discord:** https://discord.com/invite/brahma


# Scope


| Contract | SLOC | Purpose | Libraries used |
| ----------- | ----------- | ----------- | ----------- |
| [src/libraries/TypeHashHelper.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/libraries/TypeHashHelper.sol) | 45 | The `TypeHashHelper` library serves as a helper library, offering the functions required for building struct hashes for generating EIP712 digests that are required for signature validations. | N/A |
| [src/libraries/SafeHelper.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/libraries/SafeHelper.sol) | 83 | The `SafeHelper` library serves as a helper library, offering essential functions for a range of interactions with Safe. These include executing transactions, generating calldata, obtaining necessary storage slots, parsing data etc. | N/A |
| [src/core/TransactionValidator.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/TransactionValidator.sol) | 89 | The `TransactionValidator` contract provides hooks for validation of the various kinds of transactions on Console and SubAccount. These hooks include validating policy/state compliance before and after transactions for both Console and SubAccount via. the guards (`SafeModerator` & `SafeModeratorOverridable`), and also for module execution on SubAccount via. `ExecutorPlugin`. | N/A |
| [src/core/SafeModeratorOverridable.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/SafeModeratorOverridable.sol) | 32 | The `SafeModeratorOverridable` contract is a safe guard for Console accounts. It validates transactions, ensuring policy compliance using the `TransactionValidator` contract. It checks transactions before and after execution. |N/A |
| [src/core/SafeEnabler.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/SafeEnabler.sol) | 32 | The `SafeEnabler` contract provides bytecode for enabling modules and guards on Safe, during its initialization via DELEGATECALL by the safe itself. The `selfAuthorized` check on Safe's `ModuleManager` and `GuardManager` makes it unfeasible to DELEGATECALL into, to manage module/guard state, and thus, this contract provides bytecode for the same but while bypassing the `selfAuthorized` check. | [`safe-contracts/*`](https://github.com/safe-global/safe-contracts/tree/v1.3.0)|
| [src/core/SafeModerator.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/SafeModerator.sol) | 31 | The `SafeModerator` contract is a safe guard that validates transactions to be executed on console sub-accounts. It ensures that transactions adhere to predefined policies by validating with the `TransactionValidator` contract. This guard checks transactions both before and after execution for policy adherence on sub-accounts. | N/A|
| [src/core/Constants.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/Constants.sol) | 32 | Contains constants used by multiple contracts | N/A |
| [src/core/ConsoleFallbackHandler.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/ConsoleFallbackHandler.sol) | 68 | The `ConsoleFallbackHandler` contract acts as a fallback handler for safe. It performs all the same functions as the Safe's `CompatibilityFallbackHandler`, to provide compatibility between pre 1.3.0 and 1.3.0+ Safe contracts, and additionally also ensures policy validation guarantees required for `ConsoleAccounts`/`SubAccounts` that have policy validation enabled. Most of the bytecode in methods are kept as close as possible to `CompatibilityFallbackHandler`, with the only change being in signature validation, where additional checks are performed to ensure that they are policy compliant. | [`safe-contracts/*`](https://github.com/safe-global/safe-contracts/tree/v1.3.0) |
| [src/core/AddressProvider.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/AddressProvider.sol) | 68 | The `AddressProvider` contract manages and updates addresses of authorized contracts and registries within the system and serves as a singular source of truth when reading addresses. It enforces governance control over these updates and ensures that the addresses implement a valid `IAddressProviderService` interface. |N/A |
| [src/core/PolicyValidator.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/PolicyValidator.sol) | 65 | The `PolicyValidator` contract validates validator signature against account policies. It checks if transaction signatures and expiry timestamps are valid, ensuring policy compliance before execution based on EIP712 signatures. |[`solady/*`](https://github.com/vectorized/solady) |
| [src/core/registries/PolicyRegistry.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/registries/PolicyRegistry.sol) | 31 | `PolicyRegistry` is a registry contract for registering policy commits corresponding to wallets and subaccounts. It allows authorized entities (including the safe deployer, registered wallets) to set and update policy commitments for specific accounts. | N/A |
| [src/core/registries/ExecutorRegistry.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/registries/ExecutorRegistry.sol) | 32 | `ExecutorRegistry` is a registry contract that manages the registration and removal of executor addresses associated with sub-accounts. It ensures that only the owner of a sub-account (as determined by the "WalletRegistry") can register or deregister executors. The registered executors can execute module transactions on Console Account via ExecutorPlugin contract. | [`@openzeppelin/*`](https://openzeppelin.com/contracts/) |
| [src/core/registries/WalletRegistry.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/registries/WalletRegistry.sol) | 32 | `WalletRegistry` is a registry contract for wallets and their associated sub-accounts. It provides functions to register wallets and sub-accounts, query the list of sub-accounts for a wallet, and check ownership relationships between wallets and sub-accounts. | |
| [src/core/AddressProviderService.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/AddressProviderService.sol) | 30 | The `AddressProviderService` is an abstract contract, that is inherited by all the core contracts, and it provides `AddressProvider` as a dependency to the inheriting contracts and also equips them with all the required constants and helper functions to query from and interact with it. | N/A|
| [src/core/SafeDeployer.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/SafeDeployer.sol) | 133 | The `SafeDeployer` contract facilitates the deployment of Gnosis Safe accounts and configuring them as console accounts (i.e, registers them on `WalletRegistry` etc.). It allows creating console accounts with optional policy commitments and registering them, as well as sub-accounts with policy commitments, and also registers them. | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)|
| [src/core/ExecutorPlugin.sol](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src/core/ExecutorPlugin.sol) | 80 | The `ExecutorPlugin` contract acts as a safe module and facilitates execution requests on Console accounts with permissions. Executors can raise requests that are executed as module transactions on Console account. It validates the executor's signature, checks the executor's validity for the account, and verifies the policy for execution using the `TransactionValidator` contract. If all checks pass, it executes the transaction and handles the return data. |[`@openzeppelin/*`](https://openzeppelin.com/contracts/),[`solady/*`](https://github.com/vectorized/solady)  |

## Out of scope

- `contracts/src/core/ConsoleOpBuilder.sol`

# Additional Context

## Target Chains
- Ethereum
- Optimism
- Base
- Avalanche C Chan
- Polygon Mainnet
- Arbitrum
- Polygon zkEVM
- Binance Smart Chain
- Fantom



## Trusted Roles
- Guardian
- Trusted Validator
- Governance

## Miscellaneous

DOS active for more than 48 hours would be considered under valid findings.

## Contract Compliancies

  - `PolicyValidator`: Should comply with `EIP712`
  - `ExecutorPlugin`: Should comply with `EIP712`

## Attack ideas (Where to look for bugs)
- Users can choose to import their own safe wallet in console which can be malicious. Exploring potential attack vectors there. 

## Main invariants
- Main Console Account should always stay as a module enabled on any subaccount it owns (unless manually changed by Main Console)
- Subaccount should always have `SafeModerator` enabled as guard on it (unless manually changed by Main Console)
- Subaccount should always have `ConsoleFallbackHandler` enabled as the fallback handler on it (unless manually changed by Main Console)
- Main Console Account should always be able to remove `SafeModeratorOverridable` without validation from `PolicyValidator`
- Main Console Account should always be able to remove `ConsoleFallbackHandler` without validation from `PolicyValidator

## Scoping Details 

```
- If you have a public code repo, please share it here: NA
- How many contracts are in scope?: 16   
- Total SLoC for these contracts?: 883
- How many external imports are there?: 3 
- How many separate interfaces and struct definitions are there for the contracts within scope?: 11 
- Does most of your code generally use composition or inheritance?: Composition
- How many external calls?: 6   
- What is the overall line coverage percentage provided by your tests?: 100
- Is this an upgrade of an existing system?: False
- Check all that apply (e.g. timelock, NFT, AMM, ERC20, rollups, etc.): Multi-Chain
- Is there a need to understand a separate part of the codebase / get context in order to audit this part of the protocol?: False   
- Please describe required context: NA   
- Does it use an oracle?: No
- Describe any novel or unique curve logic or mathematical models your code uses: NA
- Is this either a fork of or an alternate implementation of another project?: NA   
- Does it use a side-chain?:
- Describe any specific areas you would like addressed:
```

# Tests

Change working directory

```sh
cd contracts
```

Run either commands to install JS dependencies used to create new deployments

```sh
yarn
```

OR

```sh
npm i
```

## Building and Running

```sh
forge build
```

Make sure you have lcov / genhtml installed for coverage reports in HTML

Alternatively you can skip the HTML gen command and use `lcov.info` file with any lcov parser

```sh
cp .env.example .env
make test_all
make coverage
```

## Building Slither Security Report

Make sure slither and solc v0.8.19 is installed and available in current execution environment

```sh
make slither
```

A `slither.md` file should be created in the project root folder
