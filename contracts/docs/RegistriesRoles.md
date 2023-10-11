# Registries

## Wallet Registry

`WalletRegistry` is a registry contract for wallets and their associated sub-accounts. It provides functions to register wallets and sub-accounts, query the list of sub-accounts for a wallet, and check ownership relationships between wallets and sub-accounts.

## Policy Registry

`PolicyRegistry` is a registry contract for registering policy commits corresponding to wallets and subaccounts. It allows authorized entities (including the safe deployer, registered wallets) to set and update policy commitments for specific accounts.

## Executor Registry

`ExecutorRegistry` is a registry contract that manages the registration and removal of executor addresses associated with sub-accounts. It ensures that only the owner of a sub-account (as determined by the "WalletRegistry") can register or deregister executors. The registered executors can execute module transactions on Console Account via ExecutorPlugin contract.

# Roles

## Trusted Validator

An externally owned validator account that validates transactions to be executed on sub accounts and console accounts. It signs a validator signature that is verified in `PolicyValidator` before execution.

## Guardian

Handles emergency actions, including pausing functionalities and conducting withdrawals as needed, ensuring contract security and management.

## Governance

Brahma-owned governance address that plays a role in executing privileged actions, which encompass tasks like configuring addresses, initiating deployments, and funding contracts.
