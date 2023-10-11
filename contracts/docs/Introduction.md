## Introduction

Brahma Console v2 is an orchestration layer designed to enhance the DeFi experience on smart contract wallets. Built on safe, with user-configurable automation/strategies for frequent DeFi interactions, available for low cost powered by Brahma. 

Brahma Console offers automation to users without requiring them to give up custody of their funds, all from the comfort of their wallet.
Users also have access to SafeSub-accounts that reduce their risk from the protocol by isolating their interactions.

## Nomenclature

-   `Console Account` - A standard off-the-shelf gnosis safe owned by `n` users.
-   `SubAccount` - A gnosis safe operated by the delegatee accounts called `Operators`, owned by `Console Account`, has enabled `Console Account` as a safe module and `SafeModerator` as safe guard. `Operators` have rights to execute certain transactions enabled by `Console Account (Owner)`. `Console Account` has supreme authority over `subAccount`.
-   `Operator` - Account that is one `delegated owner` of the subAccount with rights restricted by `SafeModerator`. Its rights can be updated by `ConsoleAccount`.
-   `Executor` - An account authorized to make module transactions on a `subAccount` via `ExecutorPlugin`, `ExecutorPlugin` needs to be enabled as module on `subAccount`.
