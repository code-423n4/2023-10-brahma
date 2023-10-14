**Note:** There is a section for disputed findings below the usual findings sections

## Summary

### Low Risk Issues

| |Issue|Instances|
|-|:-|:-:|
| [[L&#x2011;01](#l01-consider-implementing-two-step-procedure-for-updating-protocol-addresses)] | Consider implementing two-step procedure for updating protocol addresses | 3 | 
| [[L&#x2011;02](#l02-numbers-downcast-to-addresses-may-result-in-collisions)] | Numbers downcast to `address`es may result in collisions | 2 | 
| [[L&#x2011;03](#l03-unsafe-downcast)] | Unsafe downcast | 1 | 

Total: 6 instances over 3 issues

### Non-critical Issues

| |Issue|Instances|
|-|:-|:-:|
| [[N&#x2011;01](#n01-constants-should-be-defined-rather-than-using-magic-numbers)] | `constant`s should be defined rather than using magic numbers | 8 | 
| [[N&#x2011;02](#n02-else-block-not-required)] | `else`-block not required | 1 | 
| [[N&#x2011;03](#n03-if-statement-can-be-converted-to-a-ternary)] | `if`-statement can be converted to a ternary | 1 | 
| [[N&#x2011;04](#n04-public-functions-not-called-by-the-contract-should-be-declared-external-instead)] | `public` functions not called by the contract should be declared `external` instead | 4 | 
| [[N&#x2011;05](#n05-array-indices-should-be-referenced-via-enums-rather-than-via-numeric-literals)] | Array indices should be referenced via `enum`s rather than via numeric literals | 4 | 
| [[N&#x2011;06](#n06-array-is-pushed-but-not-poped)] | Array is `push()`ed but not `pop()`ed | 1 | 
| [[N&#x2011;07](#n07-assembly-blocks-should-have-extensive-comments)] | Assembly blocks should have extensive comments | 1 | 
| [[N&#x2011;08](#n08-avoid-the-use-of-sensitive-terms)] | Avoid the use of sensitive terms | 1 | 
| [[N&#x2011;09](#n09-cast-to-bytes-or-bytes32-for-clearer-semantic-meaning)] | Cast to `bytes` or `bytes32` for clearer semantic meaning | 1 | 
| [[N&#x2011;10](#n10-common-functions-should-be-refactored-to-a-common-base-contract)] | Common functions should be refactored to a common base contract | 1 | 
| [[N&#x2011;11](#n11-complex-casting)] | Complex casting | 2 | 
| [[N&#x2011;12](#n12-consider-adding-a-blockdeny-list)] | Consider adding a block/deny-list | 1 | 
| [[N&#x2011;13](#n13-consider-adding-formal-verification-proofs)] | Consider adding formal verification proofs | 1 | 
| [[N&#x2011;14](#n14-consider-using-descriptive-constants-when-passing-zero-as-a-function-argument)] | Consider using descriptive `constant`s when passing zero as a function argument | 1 | 
| [[N&#x2011;15](#n15-consider-using-named-mappings)] | Consider using named mappings | 3 | 
| [[N&#x2011;16](#n16-constant-redefined-elsewhere)] | Constant redefined elsewhere | 1 | 
| [[N&#x2011;17](#n17-constants-in-comparisons-should-appear-on-the-left-side)] | Constants in comparisons should appear on the left side | 10 | 
| [[N&#x2011;18](#n18-contract-should-expose-an-interface)] | Contract should expose an `interface` | 33 | 
| [[N&#x2011;19](#n19-contract-timekeeping-will-break-earlier-than-the-ethereum-network-itself-will-stop-working)] | Contract timekeeping will break earlier than the Ethereum network itself will stop working | 1 | 
| [[N&#x2011;20](#n20-contract-uses-both-requirerevert-as-well-as-custom-errors)] | Contract uses both `require()`/`revert()` as well as custom errors | 1 | 
| [[N&#x2011;21](#n21-custom-error-has-no-error-details)] | Custom error has no error details | 30 | 
| [[N&#x2011;22](#n22-custom-errors-should-be-used-rather-than-revertrequire)] | Custom errors should be used rather than `revert()`/`require()` | 4 | 
| [[N&#x2011;23](#n23-empty-function-body)] | Empty function body | 10 | 
| [[N&#x2011;24](#n24-error-messages-should-descriptive-rather-that-cryptic)] | Error messages should descriptive, rather that cryptic | 2 | 
| [[N&#x2011;25](#n25-event-is-not-properly-indexed)] | Event is not properly `indexed` | 2 | 
| [[N&#x2011;26](#n26-events-are-missing-sender-information)] | Events are missing sender information | 8 | 
| [[N&#x2011;27](#n27-events-may-be-emitted-out-of-order-due-to-reentrancy)] | Events may be emitted out of order due to reentrancy | 1 | 
| [[N&#x2011;28](#n28-events-that-mark-critical-parameter-changes-should-contain-both-the-old-and-the-new-value)] | Events that mark critical parameter changes should contain both the old and the new value | 5 | 
| [[N&#x2011;29](#n29-expressions-for-constant-values-should-use-immutable-rather-than-constant)] | Expressions for constant values should use `immutable` rather than `constant` | 3 | 
| [[N&#x2011;30](#n30-import-declarations-should-import-specific-identifiers-rather-than-the-whole-file)] | Import declarations should import specific identifiers, rather than the whole file | 3 | 
| [[N&#x2011;31](#n31-imports-could-be-organized-more-systematically)] | Imports could be organized more systematically | 1 | 
| [[N&#x2011;32](#n32-inconsistent-spacing-in-comments)] | Inconsistent spacing in comments | 2 | 
| [[N&#x2011;33](#n33-large-numeric-literals-should-use-underscores-for-readability)] | Large numeric literals should use underscores for readability | 2 | 
| [[N&#x2011;34](#n34-large-or-complicated-code-bases-should-implement-invariant-tests)] | Large or complicated code bases should implement invariant tests | 1 | 
| [[N&#x2011;35](#n35-long-functions-should-be-refactored-into-multiple-smaller-functions)] | Long functions should be refactored into multiple, smaller, functions | 2 | 
| [[N&#x2011;36](#n36-multiple-addressid-mappings-can-be-combined-into-a-single-mapping-of-an-addressid-to-a-struct-for-readability)] | Multiple `address`/ID mappings can be combined into a single `mapping` of an `address`/ID to a `struct`, for readability | 1 | 
| [[N&#x2011;37](#n37-named-imports-of-parent-contracts-are-missing)] | Named imports of parent contracts are missing | 2 | 
| [[N&#x2011;38](#n38-natspec-contract-declarations-should-have-author-tags)] | NatSpec: Contract declarations should have `@author` tags | 1 | 
| [[N&#x2011;39](#n39-natspec-contract-declarations-should-have-dev-tags)] | NatSpec: Contract declarations should have `@dev` tags | 11 | 
| [[N&#x2011;40](#n40-natspec-error-declarations-should-have-descriptions)] | NatSpec: Error declarations should have descriptions | 36 | 
| [[N&#x2011;41](#n41-natspec-event-declarations-should-have-descriptions)] | NatSpec: Event declarations should have descriptions | 15 | 
| [[N&#x2011;42](#n42-natspec-function-param-tag-is-missing)] | NatSpec: Function `@param` tag is missing | 14 | 
| [[N&#x2011;43](#n43-natspec-function-return-tag-is-missing)] | NatSpec: Function `@return` tag is missing | 3 | 
| [[N&#x2011;44](#n44-natspec-function-declarations-should-have-notice-tags)] | NatSpec: Function declarations should have `@notice` tags | 12 | 
| [[N&#x2011;45](#n45-natspec-function-declarations-should-have-descriptions)] | NatSpec: Function declarations should have descriptions | 12 | 
| [[N&#x2011;46](#n46-natspec-state-variable-declarations-should-have-descriptions)] | NatSpec: State variable declarations should have descriptions | 4 | 
| [[N&#x2011;47](#n47-not-using-the-named-return-variables-anywhere-in-the-function-is-confusing)] | Not using the named return variables anywhere in the function is confusing | 4 | 
| [[N&#x2011;48](#n48-overflows-in-unchecked-blocks)] | Overflows in unchecked blocks | 1 | 
| [[N&#x2011;49](#n49-polymorphic-functions-make-security-audits-more-time-consuming-and-error-prone)] | Polymorphic functions make security audits more time-consuming and error-prone | 3 | 
| [[N&#x2011;50](#n50-setters-should-prevent-re-setting-of-the-same-value)] | Setters should prevent re-setting of the same value | 2 | 
| [[N&#x2011;51](#n51-style-guide-contract-does-not-follow-the-solidity-style-guides-suggested-layout-ordering)] | Style guide: Contract does not follow the Solidity style guide's suggested layout ordering | 6 | 
| [[N&#x2011;52](#n52-style-guide-function-ordering-does-not-follow-the-solidity-style-guide)] | Style guide: Function ordering does not follow the Solidity style guide | 1 | 
| [[N&#x2011;53](#n53-style-guide-lines-are-too-long)] | Style guide: Lines are too long | 32 | 
| [[N&#x2011;54](#n54-style-guide-non-externalpublic-variable-names-should-begin-with-an-underscore)] | Style guide: Non-`external`/`public` variable names should begin with an underscore | 5 | 
| [[N&#x2011;55](#n55-style-guide-variable-names-for-immutables-should-use-constant_case)] | Style guide: Variable names for `immutable`s should use CONSTANT_CASE | 1 | 
| [[N&#x2011;56](#n56-typos)] | Typos | 5 | 
| [[N&#x2011;57](#n57-unnecessary-cast)] | Unnecessary cast | 1 | 
| [[N&#x2011;58](#n58-unused-error-definition)] | Unused `error` definition | 1 | 
| [[N&#x2011;59](#n59-unused-event-definition)] | Unused `event` definition | 1 | 
| [[N&#x2011;60](#n60-unused-contract-variables)] | Unused contract variables | 3 | 
| [[N&#x2011;61](#n61-unused-import)] | Unused import | 4 | 
| [[N&#x2011;62](#n62-use-bytesconcat-on-bytes-instead-of-abiencodepacked-for-clearer-semantic-meaning)] | Use `bytes.concat()` on bytes instead of `abi.encodePacked()` for clearer semantic meaning | 5 | 
| [[N&#x2011;63](#n63-use-of-override-is-unnecessary)] | Use of `override` is unnecessary | 10 | 
| [[N&#x2011;64](#n64-variables-need-not-be-initialized-to-zero)] | Variables need not be initialized to zero | 2 | 
| [[N&#x2011;65](#n65-vulnerable-versions-of-packages-are-being-used)] | Vulnerable versions of packages are being used | 1 | 

Total: 352 instances over 65 issues

### Gas Optimizations

| |Issue|Instances|Total Gas Saved|
|-|:-|:-:|:-:|
| [[G&#x2011;01](#g01-enable-ir-based-code-generation)] | Enable IR-based code generation | 1 |  - |
| [[G&#x2011;02](#g02-multiple-addressid-mappings-can-be-combined-into-a-single-mapping-of-an-addressid-to-a-struct-where-appropriate)] | Multiple `address`/ID mappings can be combined into a single `mapping` of an `address`/ID to a `struct`, where appropriate | 1 |  - |
| [[G&#x2011;03](#g03-use-uint2561uint2562-instead-of-truefalse-to-save-gas-for-changes)] | Use `uint256(1)`/`uint256(2)` instead of `true`/`false` to save gas for changes | 1 |  8550 |
| [[G&#x2011;04](#g04-avoid-updating-storage-when-the-value-hasnt-changed)] | Avoid updating storage when the value hasn't changed | 2 |  1600 |
| [[G&#x2011;05](#g05-using-calldata-instead-of-memory-for-read-only-arguments-in-external-functions-saves-gas)] | Using `calldata` instead of `memory` for read-only arguments in `external` functions saves gas | 12 |  1440 |
| [[G&#x2011;06](#g06-using-bools-for-storage-incurs-overhead)] | Using `bool`s for storage incurs overhead | 1 |  100 |
| [[G&#x2011;07](#g07-use-local-variables-for-emitting)] | Use local variables for emitting | 3 |  291 |
| [[G&#x2011;08](#g08-use-assembly-for-small-keccak256-hashes-in-order-to-save-gas)] | Use assembly for small keccak256 hashes, in order to save gas | 2 |  160 |
| [[G&#x2011;09](#g09-keccak256-should-only-need-to-be-called-on-a-specific-string-literal-once)] | `keccak256()` should only need to be called on a specific string literal once | 1 |  42 |
| [[G&#x2011;10](#g10-use--for-mappings)] | Use `+=` for `mapping`s | 1 |  40 |
| [[G&#x2011;11](#g11-use-assembly-to-emit-events-in-order-to-save-gas)] | Use assembly to emit events, in order to save gas | 10 |  380 |
| [[G&#x2011;12](#g12-optimize-names-to-save-gas)] | Optimize names to save gas | 8 |  176 |
| [[G&#x2011;13](#g13-usage-of-uintsints-smaller-than-32-bytes-256-bits-incurs-overhead)] | Usage of `uints`/`ints` smaller than 32 bytes (256 bits) incurs overhead | 2 |  44 |
| [[G&#x2011;14](#g14-constructors-can-be-marked-payable)] | Constructors can be marked `payable` | 13 |  273 |
| [[G&#x2011;15](#g15-internalprivate-functions-only-called-once-can-be-inlined-to-save-gas)] | `internal`/`private` functions only called once can be inlined to save gas | 8 |  160 |
| [[G&#x2011;16](#g16-simple-checks-for-zero-can-be-done-using-assembly-to-save-gas)] | Simple checks for zero can be done using assembly to save gas | 7 |  42 |
| [[G&#x2011;17](#g17-nesting-if-statements-is-cheaper-than-using-)] | Nesting `if`-statements is cheaper than using `&&` | 3 |  18 |
| [[G&#x2011;18](#g18--costs-less-gas-than-)] | `>=` costs less gas than `>` | 2 |  6 |
| [[G&#x2011;19](#g19-splitting-require-statements-that-use--saves-gas)] | Splitting `require()` statements that use `&&` saves gas | 1 |  3 |
| [[G&#x2011;20](#g20-use-custom-errors-rather-than-revertrequire-strings-to-save-gas)] | Use custom errors rather than `revert()`/`require()` strings to save gas | 4 |  - |
| [[G&#x2011;21](#g21-using-constants-directly-rather-than-caching-the-value-saves-gas)] | Using `constant`s directly, rather than caching the value, saves gas | 1 |  - |
| [[G&#x2011;22](#g22-using-private-rather-than-public-for-constants-saves-gas)] | Using `private` rather than `public` for constants, saves gas | 4 |  - |

Total: 88 instances over 22 issues with **13325 gas** saved

Gas totals are estimates based on data from the Ethereum Yellowpaper. The estimates use the lower bounds of ranges and count two iterations of each `for`-loop. All values above are runtime, not deployment, values; deployment values are listed in the individual issue descriptions. The table above as well as its gas numbers do not include any of the excluded findings.

### Disputed Issues

The issues below may be reported by other bots/wardens, but can be penalized/ignored since either the rule or the specified instances are invalid

| |Issue|Instances|
|-|:-|:-:|
| [[D&#x2011;01](#d01-abiencode-is-less-efficient-than-abiencodepacked)] | ~~`abi.encode()` is less efficient than `abi.encodepacked()`~~ | 2 | 
| [[D&#x2011;02](#d02-abiencodepacked-should-not-be-used-with-dynamic-types-when-passing-the-result-to-a-hash-function-such-as-keccak256)] | ~~`abi.encodePacked()` should not be used with dynamic types when passing the result to a hash function such as `keccak256()`~~ | 2 | 
| [[D&#x2011;03](#d03-internal-functions-not-called-by-the-contract-should-be-removed)] | ~~`internal` functions not called by the contract should be removed~~ | 8 | 
| [[D&#x2011;04](#d04-internal-functions-not-called-by-the-contract-should-be-removed)] | ~~`internal` functions not called by the contract should be removed~~ | 2 | 
| [[D&#x2011;05](#d05-require--revert-statements-should-have-descriptive-reason-strings)] | ~~`require()` / `revert()` statements should have descriptive reason strings~~ | 40 | 
| [[D&#x2011;06](#d06-all-interfaces-used-within-a-project-should-be-imported)] | ~~All interfaces used within a project should be imported~~ | 4 | 
| [[D&#x2011;07](#d07-array-lengths-not-checked)] | ~~Array lengths not checked~~ | 6 | 
| [[D&#x2011;08](#d08-assembly-blocks-should-have-comments)] | ~~Assembly blocks should have comments~~ | 1 | 
| [[D&#x2011;09](#d09-avoid-updating-storage-when-the-value-hasnt-changed)] | ~~Avoid updating storage when the value hasn't changed~~ | 2 | 
| [[D&#x2011;10](#d10-bad-bot-rules)] | ~~Bad bot rules~~ | 1 | 
| [[D&#x2011;11](#d11-cast-to-bytes-or-bytes32-for-clearer-semantic-meaning)] | ~~Cast to `bytes` or `bytes32` for clearer semantic meaning~~ | 5 | 
| [[D&#x2011;12](#d12-change-public-function-visibility-to-external-to-save-gas)] | ~~Change `public` function visibility to `external` to save gas~~ | 3 | 
| [[D&#x2011;13](#d13-constant-redefined-elsewhere)] | ~~Constant redefined elsewhere~~ | 2 | 
| [[D&#x2011;14](#d14-constant-redefined-elsewhere)] | ~~Constant redefined elsewhere~~ | 6 | 
| [[D&#x2011;15](#d15-contracts-containing-only-utility-functions-should-be-made-into-libraries)] | ~~Contracts containing only utility functions should be made into libraries~~ | 1 | 
| [[D&#x2011;16](#d16-contracts-should-have-full-test-coverage)] | ~~Contracts should have full test coverage~~ | 1 | 
| [[D&#x2011;17](#d17-control-structures-do-not-follow-the-solidity-style-guide)] | ~~Control structures do not follow the Solidity Style Guide~~ | 12 | 
| [[D&#x2011;18](#d18-default-bool-values-are-manually-reset)] | ~~Default `bool` values are manually reset~~ | 1 | 
| [[D&#x2011;19](#d19-duplicated-requirerevert-checks-should-be-refactored-to-a-modifier-or-function)] | ~~Duplicated `require()`/`revert()` checks should be refactored to a modifier or function~~ | 4 | 
| [[D&#x2011;20](#d20-empty-function-body)] | ~~Empty function body~~ | 10 | 
| [[D&#x2011;21](#d21-event-names-should-use-camelcase)] | ~~Event names should use CamelCase~~ | 15 | 
| [[D&#x2011;22](#d22-events-that-mark-critical-parameter-changes-should-contain-both-the-old-and-the-new-value)] | ~~Events that mark critical parameter changes should contain both the old and the new value~~ | 2 | 
| [[D&#x2011;23](#d23-events-that-mark-critical-parameter-changes-should-contain-both-the-old-and-the-new-value)] | ~~Events that mark critical parameter changes should contain both the old and the new value~~ | 7 | 
| [[D&#x2011;24](#d24-inconsistent-comment-spacing)] | ~~Inconsistent comment spacing~~ | 2 | 
| [[D&#x2011;25](#d25-it-is-standard-for-all-external-and-public-functions-to-be-override-from-an-interface)] | ~~It is standard for all external and public functions to be override from an interface~~ | 10 | 
| [[D&#x2011;26](#d26-its-not-standard-to-end-and-begin-a-code-object-on-the-same-line)] | ~~It's not standard to end and begin a code object on the same line~~ | 44 | 
| [[D&#x2011;27](#d27-low-level-calls-with-solidity-before-0814-result-in-an-optimiser-bug)] | ~~Low level calls with Solidity before 0.8.14 result in an optimiser bug~~ | 1 | 
| [[D&#x2011;28](#d28-missing-checks-for-state-variable-assignments)] | ~~Missing checks for state variable assignments~~ | 1 | 
| [[D&#x2011;29](#d29-missing-contract-existence-checks-before-low-level-calls)] | ~~Missing contract-existence checks before low-level calls~~ | 1 | 
| [[D&#x2011;30](#d30-missing-contract-existence-checks-before-yul-call)] | ~~Missing contract-existence checks before yul `call()`~~ | 1 | 
| [[D&#x2011;31](#d31-natspec-contract-declarations-should-have-notice-tags)] | ~~NatSpec: Contract declarations should have `@notice` tags~~ | 16 | 
| [[D&#x2011;32](#d32-natspec-function-declarations-should-have-notice-tags)] | ~~NatSpec: Function declarations should have `@notice` tags~~ | 41 | 
| [[D&#x2011;33](#d33-natspec-invalid-comment-style)] | ~~NatSpec: Invalid comment style~~ | 7 | 
| [[D&#x2011;34](#d34-nesting-if-statements-is-cheaper-than-using-)] | ~~Nesting `if`-statements is cheaper than using `&&`~~ | 2 | 
| [[D&#x2011;35](#d35-non-assembly-method-available)] | ~~Non-assembly method available~~ | 1 | 
| [[D&#x2011;36](#d36-not-initializing-local-variables-to-zero-saves-gas)] | ~~Not initializing local variables to zero saves gas~~ | 1 | 
| [[D&#x2011;37](#d37-not-using-the-named-return-variables-anywhere-in-the-function-is-confusing)] | ~~Not using the named return variables anywhere in the function is confusing~~ | 1 | 
| [[D&#x2011;38](#d38-overly-complicated-arithmetic)] | ~~Overly complicated arithmetic~~ | 41 | 
| [[D&#x2011;39](#d39-public-functions-not-used-internally-can-be-marked-as-external-to-save-gas)] | ~~Public functions not used internally can be marked as external to save gas~~ | 4 | 
| [[D&#x2011;40](#d40-save-gas-with-the-use-of-specific-import-statements)] | ~~Save gas with the use of specific import statements~~ | 3 | 
| [[D&#x2011;41](#d41-setters-should-prevent-re-setting-of-the-same-value)] | ~~Setters should prevent re-setting of the same value~~ | 2 | 
| [[D&#x2011;42](#d42-shorten-the-array-rather-than-copying-to-a-new-one)] | ~~Shorten the array rather than copying to a new one~~ | 1 | 
| [[D&#x2011;43](#d43-spdx-identifier-should-be-the-in-the-first-line-of-a-solidity-file)] | ~~SPDX identifier should be the in the first line of a solidity file~~ | 16 | 
| [[D&#x2011;44](#d44-state-variables-should-be-cached-in-stack-variables-rather-than-re-reading-them-from-storage)] | ~~State variables should be cached in stack variables rather than re-reading them from storage~~ | 1 | 
| [[D&#x2011;45](#d45-storage-write-removal-bug-on-conditional-early-termination)] | ~~Storage Write Removal Bug On Conditional Early Termination~~ | 2 | 
| [[D&#x2011;46](#d46-style-guide-contract-does-not-follow-the-solidity-style-guides-suggested-layout-ordering)] | ~~Style guide: Contract does not follow the Solidity style guide's suggested layout ordering~~ | 10 | 
| [[D&#x2011;47](#d47-style-guide-function-names-not-in-mixedcase)] | ~~Style guide: Function Names Not in mixedCase~~ | 22 | 
| [[D&#x2011;48](#d48-timestamp-may-be-manipulation)] | ~~Timestamp may be manipulation~~ | 1 | 
| [[D&#x2011;49](#d49-unsafe-downcast)] | ~~Unsafe downcast~~ | 3 | 
| [[D&#x2011;50](#d50-unused-struct-definition)] | ~~Unused `struct` definition~~ | 3 | 
| [[D&#x2011;51](#d51-unused-contract-variables)] | ~~Unused contract variables~~ | 32 | 
| [[D&#x2011;52](#d52-unused-import)] | ~~Unused import~~ | 56 | 
| [[D&#x2011;53](#d53-unused-local-variable)] | ~~Unused local variable~~ | 1 | 
| [[D&#x2011;54](#d54-unused-named-return-variables-without-optimizer-waste-gas)] | ~~Unused named return variables without optimizer waste gas~~ | 4 | 
| [[D&#x2011;55](#d55-use-inheritdoc-rather-than-using-a-non-standard-annotation)] | ~~Use `@inheritdoc` rather than using a non-standard annotation~~ | 8 | 
| [[D&#x2011;56](#d56-use-assembly-to-write-addresscontract-type-storage-values)] | ~~Use `assembly` to write address/contract type storage values~~ | 3 | 
| [[D&#x2011;57](#d57-use-bytesconcat-on-bytes-instead-of-abiencodepacked-for-clearer-semantic-meaning)] | ~~Use `bytes.concat()` on bytes instead of `abi.encodePacked()` for clearer semantic meaning~~ | 1 | 
| [[D&#x2011;58](#d58-use-assembly-for-small-keccak256-hashes-in-order-to-save-gas)] | ~~Use assembly for small keccak256 hashes, in order to save gas~~ | 3 | 
| [[D&#x2011;59](#d59-use-multiple-require-and-if-statements-instead-of-)] | ~~Use multiple `require()` and `if` statements instead of `&&`~~ | 5 | 
| [[D&#x2011;60](#d60-using-blocktimestamp-as-the-deadlineexpiry-invites-mev)] | ~~Using `block.timestamp` as the deadline/expiry invites MEV~~ | 1 | 
| [[D&#x2011;61](#d61-using-calldata-instead-of-memory-for-read-only-arguments-in-external-functions-saves-gas)] | ~~Using `calldata` instead of `memory` for read-only arguments in `external` functions saves gas~~ | 2 | 
| [[D&#x2011;62](#d62-using-storage-instead-of-memory-for-structsarrays-saves-gas)] | ~~Using `storage` instead of `memory` for structs/arrays saves gas~~ | 1 | 
| [[D&#x2011;63](#d63-using-bitmap-to-store-bool-states-can-save-gas)] | ~~Using bitmap to store bool states can save gas~~ | 1 | 

Total: 493 instances over 63 issues





## Low Risk Issues


### [L&#x2011;01] Consider implementing two-step procedure for updating protocol addresses
A copy-paste error or a typo may end up bricking protocol functionality, or sending tokens to an address with no known private key. Consider implementing a two-step procedure for updating protocol addresses, where the recipient is set as pending, and must 'accept' the assignment by making an affirmative call. A straight forward way of doing this would be to have the target contracts implement [EIP-165](https://eips.ethereum.org/EIPS/eip-165), and to have the 'set' functions ensure that the recipient is of the right interface type.

*There are 3 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

77       function setAuthorizedAddress(bytes32 _key, address _authorizedAddress, bool _overrideCheck) external {
78           _onlyGov();
79           _notNull(_authorizedAddress);
80   
81           /// @dev skips checks for supported `addressProvider()` if `_overrideCheck` is true
82           if (!_overrideCheck) {
83               /// @dev skips checks for supported `addressProvider()` if `_authorizedAddress` is an EOA
84               if (_authorizedAddress.code.length != 0) _ensureAddressProvider(_authorizedAddress);
85           }
86   
87           authorizedAddresses[_key] = _authorizedAddress;
88   
89           emit AuthorizedAddressInitialised(_authorizedAddress, _key);
90:      }

97       function setRegistry(bytes32 _key, address _registry) external {
98           _onlyGov();
99           _ensureAddressProvider(_registry);
100  
101          if (registries[_key] != address(0)) revert RegistryAlreadyExists();
102          registries[_key] = _registry;
103  
104          emit RegistryInitialised(_registry, _key);
105:     }

```
*GitHub*: [77](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L77-L90), [97](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L97-L105)
```solidity
File: src/core/registries/WalletRegistry.sol

49       function registerSubAccount(address _wallet, address _subAccount) external {
50           if (msg.sender != AddressProviderService._getAuthorizedAddress(_SAFE_DEPLOYER_HASH)) revert InvalidSender();
51           if (subAccountToWallet[_subAccount] != address(0)) revert AlreadyRegistered();
52           subAccountToWallet[_subAccount] = _wallet;
53           walletToSubAccountList[_wallet].push(_subAccount);
54           emit RegisterSubAccount(_wallet, _subAccount);
55:      }

```
*GitHub*: [49](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L49-L55)


### [L&#x2011;02] Numbers downcast to `address`es may result in collisions
If a number is downcast to an `address` the upper bytes are truncated, which may mean that more than one value will map to the `address`

*There are 2 instances of this issue:*

```solidity
File: src/libraries/SafeHelper.sol

144:         return address(uint160(uint256(bytes32(guardAddress))));

154:         return address(uint160(uint256(bytes32(fallbackHandlerAddress))));

```
*GitHub*: [144](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L144-L144), [154](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L154-L154)


### [L&#x2011;03] Unsafe downcast
When a type is downcast to a smaller type, the higher order bits are truncated, effectively applying a modulo to the original value. Without any other checks, this wrapping will lead to unexpected behavior and bugs

*There is one instance of this issue:*

```solidity
File: src/core/PolicyValidator.sol

/// @audit uint32
116:          if (expiryEpoch < uint32(block.timestamp)) {

```
*GitHub*: [116](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L116)

## Non-critical Issues


### [N&#x2011;01] `constant`s should be defined rather than using magic numbers
Even [assembly](https://github.com/code-423n4/2022-05-opensea-seaport/blob/9d7ce4d08bf3c3010304a0476a785c70c0e90ae7/contracts/lib/TokenTransferrer.sol#L35-L39) can benefit from using readable constants instead of hex/numeric literals

*There are 8 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

70:          return keccak256(abi.encodePacked(bytes1(0x19), bytes1(0x01), safe.domainSeparator(), safeMessageHash));

```
*GitHub*: [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L70-L70), [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L70-L70)
```solidity
File: src/core/PolicyValidator.sol

162:         if (length < 8) revert InvalidSignatures();

```
*GitHub*: [162](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L162-L162)
```solidity
File: src/core/PolicyValidator.sol

164:         uint32 sigLength = uint32(bytes4(_signatures[length - 8:length - 4]));

```
*GitHub*: [164](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L164-L164)
```solidity
File: src/core/PolicyValidator.sol

164:         uint32 sigLength = uint32(bytes4(_signatures[length - 8:length - 4]));

```
*GitHub*: [164](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L164-L164)
```solidity
File: src/core/PolicyValidator.sol

165:         expiryEpoch = uint32(bytes4(_signatures[length - 4:length]));

```
*GitHub*: [165](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L165-L165)
```solidity
File: src/core/PolicyValidator.sol

166:         validatorSignature = _signatures[length - 8 - sigLength:length - 8];

```
*GitHub*: [166](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L166-L166)
```solidity
File: src/core/PolicyValidator.sol

166:         validatorSignature = _signatures[length - 8 - sigLength:length - 8];

```
*GitHub*: [166](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L166-L166)


### [N&#x2011;02] `else`-block not required
One level of nesting can be removed by not having an `else` block when the `if`-block returns, and `if (foo) { return 1; } else { return 2; }` becomes `if (foo) { return 1; } return 2;`. A following `else if` can become `if`

*There is one instance of this issue:*

```solidity
File: src/core/TransactionValidator.sol

166              if (SafeHelper._GUARD_REMOVAL_CALLDATA_HASH == keccak256(_data)) {
167                  return true;
168              } else if (SafeHelper._FALLBACK_REMOVAL_CALLDATA_HASH == keccak256(_data)) {
169                  return true;
170:             }

```
*GitHub*: [166](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L166-L170)


### [N&#x2011;03] `if`-statement can be converted to a ternary
The code can be made more compact while also increasing readability by converting the following `if`-statements to ternaries (e.g. `foo += (x > y) ? a : b`)

*There is one instance of this issue:*

```solidity
File: src/libraries/SafeHelper.sol

123              if (i != 0) {
124                  // If not first transaction, append to packedTxns
125                  packedTxns = abi.encodePacked(packedTxns, encodedTxn);
126              } else {
127                  // If first transaction, set packedTxns to encodedTxn
128                  packedTxns = encodedTxn;
129:             }

```
*GitHub*: [123](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L123-L129)


### [N&#x2011;04] `public` functions not called by the contract should be declared `external` instead
Contracts [are allowed](https://docs.soliditylang.org/en/latest/contracts.html#function-overriding) to override their parents' functions and change the visibility from `external` to `public`.

*There are 4 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

39:       function isValidSignature(bytes memory _data, bytes memory _signature) public view override returns (bytes4) {

60:       function getMessageHash(bytes memory message) public view returns (bytes32) {

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L39), [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L60)
```solidity
File: src/core/SafeEnabler.sol

43:       function enableModule(address module) public {

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L43)
```solidity
File: src/core/SafeEnabler.sol

66:       function setGuard(address guard) public {

```
*GitHub*: [66](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L66)


### [N&#x2011;05] Array indices should be referenced via `enum`s rather than via numeric literals


*There are 4 instances of this issue:*

```solidity
File: src/core/SafeDeployer.sol

123:             txns[1] = Types.Executable({

140:         txns[0] = Types.Executable({

177:         txns[0] = Types.Executable({

185:         txns[1] = Types.Executable({

```
*GitHub*: [123](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L123-L123), [140](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L140-L140), [177](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L177-L177), [185](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L185-L185)


### [N&#x2011;06] Array is `push()`ed but not `pop()`ed
Array entries are added but are never removed. Consider whether this should be the case, or whether there should be a maximum, or whether old entries should be removed. Cases where there are specific potential problems will be flagged separately under a different issue.

*There is one instance of this issue:*

```solidity
File: src/core/registries/WalletRegistry.sol

53:          walletToSubAccountList[_wallet].push(_subAccount);

```
*GitHub*: [53](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L53-L53)


### [N&#x2011;07] Assembly blocks should have extensive comments
Assembly blocks take a lot more time to audit than normal Solidity code, and often have gotchas and side-effects that the Solidity versions of the same code do not. Consider adding more comments explaining what is being done in every step of the assembly code, and describe why assembly is being used instead of Solidity.

*There is one instance of this issue:*

```solidity
File: src/core/SafeEnabler.sol

71            assembly {
72                sstore(slot, guard)
73:           }

```
*GitHub*: [71](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L71-L73)


### [N&#x2011;08] Avoid the use of sensitive terms
Use [alternative variants](https://www.zdnet.com/article/mysql-drops-master-slave-and-blacklist-whitelist-terminology/), e.g. allowlist/denylist instead of whitelist/blacklist

*There is one instance of this issue:*

```solidity
File: src/core/SafeEnabler.sol

41:        * @param module Module to be whitelisted.

```
*GitHub*: [41](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L41)


### [N&#x2011;09] Cast to `bytes` or `bytes32` for clearer semantic meaning
Using a [cast](https://ethereum.stackexchange.com/questions/30912/how-to-compare-strings-in-solidity#answer-82739) on a single argument, rather than `abi.encodePacked()` makes the intended operation more clear, leading to less reviewer confusion.

*There is one instance of this issue:*

```solidity
File: src/core/SafeDeployer.sol

144:             data: abi.encodePacked(WalletRegistry.registerWallet.selector)

```
*GitHub*: [144](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L144-L144)


### [N&#x2011;10] Common functions should be refactored to a common base contract
The functions below have the same implementation as is seen in other files. The functions should be refactored into functions of a common base contract

*There is one instance of this issue:*

```solidity
File: src/core/PolicyValidator.sol

/// @audit seen in src/core/ExecutorPlugin.sol
174       function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {
175           return (_NAME, _VERSION);
176:      }

```
*GitHub*: [174](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L174-L176)


### [N&#x2011;11] Complex casting
Consider whether the number of casts is really necessary, or whether using a different type would be more appropriate. Alternatively, add comments to explain in detail why the casts are necessary, and any implicit reasons why the cast does not introduce an overflow.

*There are 2 instances of this issue:*

```solidity
File: src/core/PolicyValidator.sol

163  
164:         uint32 sigLength = uint32(bytes4(_signatures[length - 8:length - 4]));

164          uint32 sigLength = uint32(bytes4(_signatures[length - 8:length - 4]));
165:         expiryEpoch = uint32(bytes4(_signatures[length - 4:length]));

```
*GitHub*: [163](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L163-L164), [164](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L164-L165)


### [N&#x2011;12] Consider adding a block/deny-list
Doing so will significantly increase centralization, but will help to prevent hackers from using stolen tokens

*There is one instance of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

20   contract ConsoleFallbackHandler is AddressProviderService, DefaultCallbackHandler, ISignatureValidator {
21:      //keccak256("SafeMessage(bytes message)");

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L20-L21)


### [N&#x2011;13] Consider adding formal verification proofs
Consider using formal verification to mathematically prove that your code does what is intended, and does not have any edge cases with unexpected behavior. The solidity compiler itself has this functionality [built in](https://docs.soliditylang.org/en/latest/smtchecker.html#smtchecker-and-formal-verification)

*There is one instance of this issue:*

```solidity
File: Various Files


```
*GitHub*: [various](https://github.com/code-423n4/2023-10-brahma/tree/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts)


### [N&#x2011;14] Consider using descriptive `constant`s when passing zero as a function argument
Passing zero as a function argument can sometimes result in a security issue (e.g. passing zero as the slippage parameter). Consider using a `constant` variable with a descriptive name, so it's clear that the argument is intentionally being used, and for the right reasons.

*There is one instance of this issue:*

```solidity
File: src/libraries/SafeHelper.sol

64           bool success = IGnosisSafe(safe).execTransaction(
65               address(target), // to
66               0, // value
67               data, // data
68               op, // operation
69               0, // safeTxGas
70               0, // baseGas
71               0, // gasPrice
72               address(0), // gasToken
73               payable(address(0)), // refundReceiver
74               _generateSingleThresholdSignature(address(this)) // signatures
75:          );

```
*GitHub*: [64](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L64-L75)


### [N&#x2011;15] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/a/145555) to make it easier to understand the purpose of each mapping

*There are 3 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

35:      mapping(bytes32 => address) public authorizedAddresses;

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L35-L35)
```solidity
File: src/core/registries/WalletRegistry.sol

27:      mapping(address => bool) public isWallet;

41:      mapping(bytes32 => address) public registries;

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L27-L27), [41](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L41-L41)


### [N&#x2011;16] Constant redefined elsewhere
Consider defining in only one contract so that values cannot become out of sync when only one location is updated. A [cheap way](https://medium.com/coinmonks/gas-cost-of-solidity-library-functions-dbe0cedd4678) to store constants in a single location is to create an `internal constant` in a `library`. If the variable is a local cache of another contract's value, consider making the cache variable internal or private, which will require external users to query the contract with the source of truth, so that callers don't get out of sync.

*There is one instance of this issue:*

```solidity
File: src/libraries/SafeHelper.sol

/// @audit seen in src/core/SafeEnabler.sol 
23        uint256 internal constant _GUARD_STORAGE_SLOT =
24:           33528237782592280163068556224972516439282563014722366175641814928123294921928;

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L23-L24)


### [N&#x2011;17] Constants in comparisons should appear on the left side
Doing so will prevent [typo bugs](https://www.moserware.com/2008/01/constants-on-left-are-better-but-this.html)

*There are 10 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

84:              if (_authorizedAddress.code.length != 0) _ensureAddressProvider(_authorizedAddress);

```
*GitHub*: [84](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L84-L84)
```solidity
File: src/core/ConsoleFallbackHandler.sol

43:          if (_signature.length == 0) {

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L43-L43)
```solidity
File: src/core/ConsoleFallbackHandler.sol

44:              require(safe.signedMessages(messageHash) != 0, "Hash not approved");

```
*GitHub*: [44](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L44-L44)
```solidity
File: src/core/ExecutorPlugin.sol

117:         if (execRequest.executor.code.length == 0 && execRequest.executorSignature.length == 0) {

```
*GitHub*: [117](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L117-L117)
```solidity
File: src/core/ExecutorPlugin.sol

117:         if (execRequest.executor.code.length == 0 && execRequest.executorSignature.length == 0) {

```
*GitHub*: [117](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L117-L117)
```solidity
File: src/core/PolicyValidator.sol

135:         if (trustedValidator.code.length == 0 && validatorSignature.length == 0) {

```
*GitHub*: [135](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L135-L135)
```solidity
File: src/core/PolicyValidator.sol

135:         if (trustedValidator.code.length == 0 && validatorSignature.length == 0) {

```
*GitHub*: [135](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L135-L135)
```solidity
File: src/core/TransactionValidator.sol

165:         if (_from == _to && _value == 0 && _operation == Enum.Operation.Call) {

```
*GitHub*: [165](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L165-L165)
```solidity
File: src/libraries/SafeHelper.sol

105:         if (len == 0) revert InvalidMultiSendInput();

```
*GitHub*: [105](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L105-L105)
```solidity
File: src/libraries/SafeHelper.sol

123:             if (i != 0) {

```
*GitHub*: [123](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L123-L123)


### [N&#x2011;18] Contract should expose an `interface`
The `contract`s should expose an `interface` so that other projects can more easily integrate with it, without having to develop their own non-standard variants.

*There are 33 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

52:      function setGovernance(address _newGovernance) external {

62:      function acceptGovernance() external {

77:      function setAuthorizedAddress(bytes32 _key, address _authorizedAddress, bool _overrideCheck) external {

97:      function setRegistry(bytes32 _key, address _registry) external {

112:     function getAuthorizedAddress(bytes32 _key) external view returns (address) {

121:     function getRegistry(bytes32 _key) external view returns (address) {

```
*GitHub*: [52](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L52-L52), [62](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L62-L62), [77](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L77-L77), [97](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L97-L97), [112](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L112-L112), [121](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L121-L121)
```solidity
File: src/core/ConsoleFallbackHandler.sol

60:      function getMessageHash(bytes memory message) public view returns (bytes32) {

```
*GitHub*: [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L60-L60)
```solidity
File: src/core/ConsoleFallbackHandler.sol

68:      function getMessageHashForSafe(GnosisSafe safe, bytes memory message) public view returns (bytes32) {

```
*GitHub*: [68](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L68-L68)
```solidity
File: src/core/ConsoleFallbackHandler.sol

83:      function isValidSignature(bytes32 _dataHash, bytes calldata _signature) external view returns (bytes4) {

```
*GitHub*: [83](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L83-L83)
```solidity
File: src/core/ConsoleFallbackHandler.sol

91:      function getModules() external view returns (address[] memory) {

```
*GitHub*: [91](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L91-L91)
```solidity
File: src/core/ConsoleFallbackHandler.sol

104      function simulate(address targetContract, bytes calldata calldataPayload)
105          external
106          returns (bytes memory response)
107:     {

```
*GitHub*: [104](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L104-L107)
```solidity
File: src/core/ExecutorPlugin.sol

68:      function executeTransaction(ExecutionRequest calldata execRequest) external nonReentrant returns (bytes memory) {

```
*GitHub*: [68](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L68-L68)
```solidity
File: src/core/PolicyValidator.sol

54       function isPolicySignatureValid(
55           address account,
56           address to,
57           uint256 value,
58           bytes memory data,
59           Enum.Operation operation,
60           bytes calldata signatures
61:      ) external view returns (bool) {

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L54-L61)
```solidity
File: src/core/PolicyValidator.sol

100      function isPolicySignatureValid(address account, bytes32 transactionStructHash, bytes calldata signatures)
101          public
102          view
103          returns (bool)
104:     {

```
*GitHub*: [100](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L100-L104)
```solidity
File: src/core/SafeDeployer.sol

56       function deployConsoleAccount(address[] calldata _owners, uint256 _threshold, bytes32 _policyCommit, bytes32 _salt)
57           external
58           nonReentrant
59           returns (address _safe)
60:      {

```
*GitHub*: [56](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L56-L60)
```solidity
File: src/core/SafeDeployer.sol

82       function deploySubAccount(address[] calldata _owners, uint256 _threshold, bytes32 _policyCommit, bytes32 _salt)
83           external
84           nonReentrant
85           returns (address _subAcc)
86:      {

```
*GitHub*: [82](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L82-L86)
```solidity
File: src/core/SafeEnabler.sol

43:      function enableModule(address module) public {

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L43-L43)
```solidity
File: src/core/SafeEnabler.sol

66:      function setGuard(address guard) public {

```
*GitHub*: [66](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L66-L66)
```solidity
File: src/core/TransactionValidator.sol

64:      function validatePreTransactionOverridable(SafeTransactionParams memory txParams) external view {

```
*GitHub*: [64](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L64-L64)
```solidity
File: src/core/TransactionValidator.sol

81       function validatePostTransactionOverridable(bytes32, /*txHash */ bool, /*success */ address /*console */ )
82           external
83           view
84:      {}

```
*GitHub*: [81](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L81-L84)
```solidity
File: src/core/TransactionValidator.sol

95:      function validatePreTransaction(SafeTransactionParams memory txParams) external view {

```
*GitHub*: [95](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L95-L95)
```solidity
File: src/core/TransactionValidator.sol

105:     function validatePostTransaction(bytes32, /*txHash */ bool, /*success */ address subAccount) external view {

```
*GitHub*: [105](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L105-L105)
```solidity
File: src/core/TransactionValidator.sol

119      function validatePreExecutorTransaction(
120          address, /*msgSender */
121          address from,
122          bytes32 transactionStructHash,
123          bytes memory signatures
124:     ) external view {

```
*GitHub*: [119](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L119-L124)
```solidity
File: src/core/TransactionValidator.sol

132:     function validatePostExecutorTransaction(address, /*msgSender */ address subAccount) external view {

```
*GitHub*: [132](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L132-L132)
```solidity
File: src/core/registries/ExecutorRegistry.sol

38:      function registerExecutor(address _subAccount, address _executor) external {

```
*GitHub*: [38](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L38-L38)
```solidity
File: src/core/registries/ExecutorRegistry.sol

53:      function deRegisterExecutor(address _subAccount, address _executor) external {

```
*GitHub*: [53](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L53-L53)
```solidity
File: src/core/registries/ExecutorRegistry.sol

67:      function isExecutor(address _subAccount, address _executor) external view returns (bool) {

```
*GitHub*: [67](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L67-L67)
```solidity
File: src/core/registries/ExecutorRegistry.sol

75:      function getExecutorsForSubAccount(address _subAccount) external view returns (address[] memory) {

```
*GitHub*: [75](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L75-L75)
```solidity
File: src/core/registries/PolicyRegistry.sol

35:      function updatePolicy(address account, bytes32 policyCommit) external {

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L35-L35)
```solidity
File: src/core/registries/WalletRegistry.sol

35:      function registerWallet() external {

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L35-L35)
```solidity
File: src/core/registries/WalletRegistry.sol

49:      function registerSubAccount(address _wallet, address _subAccount) external {

```
*GitHub*: [49](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L49-L49)
```solidity
File: src/core/registries/WalletRegistry.sol

63:      function getSubAccountsForWallet(address _wallet) external view returns (address[] memory) {

```
*GitHub*: [63](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L63-L63)
```solidity
File: src/core/registries/WalletRegistry.sol

73:      function isOwner(address _wallet, address _subAccount) external view returns (bool) {

```
*GitHub*: [73](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L73-L73)
</details>





### [N&#x2011;19] Contract timekeeping will break earlier than the Ethereum network itself will stop working
When a timestamp is downcast from `uint256` to `uint32`, the value will wrap in the year 2106, and the contracts will break. Other downcasts will have different endpoints. Consider whether your contract is intended to live past the size of the type being used.

*There is one instance of this issue:*

```solidity
File: src/core/PolicyValidator.sol

116:         if (expiryEpoch < uint32(block.timestamp)) {

```
*GitHub*: [116](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L116-L116)


### [N&#x2011;20] Contract uses both `require()`/`revert()` as well as custom errors
Consider using just one method in a single file

*There is one instance of this issue:*

```solidity
File: src/core/SafeEnabler.sol

16:  contract SafeEnabler is GnosisSafeStorage {

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L16-L16)


### [N&#x2011;21] Custom error has no error details
Consider adding parameters to the error to indicate which user or values caused the failure

*There are 30 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

15:      error RegistryAlreadyExists();

16:      error AddressProviderUnsupported();

19:      error NullAddress();

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L15-L15), [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L16-L16), [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L19-L19)
```solidity
File: src/core/AddressProviderService.sol

19:      error InvalidAddressProvider();

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L19-L19)
```solidity
File: src/core/AddressProviderService.sol

21:      error InvalidAddress();

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L21-L21)
```solidity
File: src/core/ExecutorPlugin.sol

25:      error InvalidExecutor();

```
*GitHub*: [25](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L25-L25)
```solidity
File: src/core/ExecutorPlugin.sol

26:      error InvalidSignature();

```
*GitHub*: [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L26-L26)
```solidity
File: src/core/ExecutorPlugin.sol

27:      error ModuleExecutionFailed();

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L27-L27)
```solidity
File: src/core/PolicyValidator.sol

20:      error InvalidSignature();

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L20-L20)
```solidity
File: src/core/PolicyValidator.sol

21:      error NoPolicyCommit();

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L21-L21)
```solidity
File: src/core/PolicyValidator.sol

23:      error InvalidSignatures();

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L23-L23)
```solidity
File: src/core/SafeDeployer.sol

37:      error InvalidCommitment();

```
*GitHub*: [37](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L37-L37)
```solidity
File: src/core/SafeDeployer.sol

38:      error NotWallet();

```
*GitHub*: [38](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L38-L38)
```solidity
File: src/core/SafeDeployer.sol

40:      error SafeProxyCreationFailed();

```
*GitHub*: [40](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L40-L40)
```solidity
File: src/core/SafeEnabler.sol

17:      error OnlyDelegateCall();

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L17-L17)
```solidity
File: src/core/TransactionValidator.sol

19:      error TxnUnAuthorized();

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L19-L19)
```solidity
File: src/core/TransactionValidator.sol

20:      error InvalidGuard();

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L20-L20)
```solidity
File: src/core/TransactionValidator.sol

21:      error InvalidFallbackHandler();

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L21-L21)
```solidity
File: src/core/TransactionValidator.sol

22:      error InvalidModule();

```
*GitHub*: [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L22-L22)
```solidity
File: src/core/registries/ExecutorRegistry.sol

19:      error NotOwnerWallet();

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L19-L19)
```solidity
File: src/core/registries/ExecutorRegistry.sol

20:      error AlreadyExists();

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L20-L20)
```solidity
File: src/core/registries/ExecutorRegistry.sol

21:      error DoesNotExist();

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L21-L21)
```solidity
File: src/core/registries/PolicyRegistry.sol

16:      error PolicyCommitInvalid();

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L16-L16)
```solidity
File: src/core/registries/PolicyRegistry.sol

17:      error UnauthorizedPolicyUpdate();

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L17-L17)
```solidity
File: src/core/registries/WalletRegistry.sol

15:      error AlreadyRegistered();

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L15-L15)
```solidity
File: src/core/registries/WalletRegistry.sol

16:      error InvalidSender();

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L16-L16)
```solidity
File: src/core/registries/WalletRegistry.sol

17:      error IsSubAccount();

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L17-L17)
```solidity
File: src/libraries/SafeHelper.sol

17:      error InvalidMultiSendInput();

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L17-L17)
```solidity
File: src/libraries/SafeHelper.sol

18:      error SafeExecTransactionFailed();

```
*GitHub*: [18](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L18-L18)
```solidity
File: src/libraries/SafeHelper.sol

19:      error UnableToParseOperation();

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L19-L19)
</details>





### [N&#x2011;22] Custom errors should be used rather than `revert()`/`require()`
Custom errors are available from solidity version 0.8.4. Custom errors are more easily processed in `try`-`catch` blocks, and are easier to re-use and maintain.

*There are 4 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

44:               require(safe.signedMessages(messageHash) != 0, "Hash not approved");

51:               require(policyValidator.isPolicySignatureValid(msg.sender, messageHash, _signature), "Policy not approved");

```
*GitHub*: [44](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L44), [51](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L51)
```solidity
File: src/core/SafeEnabler.sol

48:           require(module != address(0) && module != _SENTINEL_MODULES, "GS101");

```
*GitHub*: [48](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L48)
```solidity
File: src/core/SafeEnabler.sol

52:           require(modules[module] == address(0), "GS102");

```
*GitHub*: [52](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L52)


### [N&#x2011;23] Empty function body
Consider adding a comment about why the function body is empty

*There are 10 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/ConsoleFallbackHandler.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L29-L29)
```solidity
File: src/core/ExecutorPlugin.sol

60:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L60-L60)
```solidity
File: src/core/PolicyValidator.sol

30:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [30](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L30-L30)
```solidity
File: src/core/SafeDeployer.sol

42:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [42](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L42-L42)
```solidity
File: src/core/SafeModerator.sol

17:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L17-L17)
```solidity
File: src/core/SafeModeratorOverridable.sol

23:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L23-L23)
```solidity
File: src/core/TransactionValidator.sol

54:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L54-L54)
```solidity
File: src/core/registries/ExecutorRegistry.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L29-L29)
```solidity
File: src/core/registries/PolicyRegistry.sol

24:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L24-L24)
```solidity
File: src/core/registries/WalletRegistry.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L29-L29)
</details>





### [N&#x2011;24] Error messages should descriptive, rather that cryptic
The error message should clearly state _how_/_why_ something is an error, not just that a specific error state was reached; someone shouldn't have to read the code in order to see how to resolve the problem

*There are 2 instances of this issue:*

```solidity
File: src/core/SafeEnabler.sol

48:          require(module != address(0) && module != _SENTINEL_MODULES, "GS101");

52:          require(modules[module] == address(0), "GS102");

```
*GitHub*: [48](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L48-L48), [52](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L52-L52)


### [N&#x2011;25] Event is not properly `indexed`
Index event fields make the field more quickly accessible [to off-chain tools](https://ethereum.stackexchange.com/questions/40396/can-somebody-please-explain-the-concept-of-event-indexing) that parse events. This is especially useful when it comes to filtering based on an address. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Where applicable, each `event` should use three `indexed` fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three applicable fields, all of the applicable fields should be indexed.

*There are 2 instances of this issue:*

```solidity
File: src/core/SafeEnabler.sol

19:       event EnabledModule(address module);

20:       event ChangedGuard(address guard);

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L19), [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L20)


### [N&#x2011;26] Events are missing sender information
When an action is triggered based on a user's action, not being able to filter based on who triggered the action makes event processing a lot more cumbersome. Including the `msg.sender` the events of these types of action will make events much more useful to end users, especially when `msg.sender` is not `tx.origin`.

*There are 8 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

89:          emit AuthorizedAddressInitialised(_authorizedAddress, _key);

104:         emit RegistryInitialised(_registry, _key);

```
*GitHub*: [89](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L89-L89), [104](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L104-L104)
```solidity
File: src/core/SafeDeployer.sol

70:          emit ConsoleAccountDeployed(_safe);

```
*GitHub*: [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L70-L70)
```solidity
File: src/core/SafeDeployer.sol

239:                 emit SafeProxyCreationFailure(gnosisSafeSingleton, nonce, _initializer);

```
*GitHub*: [239](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L239-L239)
```solidity
File: src/core/SafeEnabler.sol

55:          emit EnabledModule(module);

```
*GitHub*: [55](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L55-L55)
```solidity
File: src/core/SafeEnabler.sol

74:          emit ChangedGuard(guard);

```
*GitHub*: [74](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L74-L74)
```solidity
File: src/core/registries/PolicyRegistry.sol

67:          emit UpdatedPolicyCommit(account, policyCommit, commitments[account]);

```
*GitHub*: [67](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L67-L67)
```solidity
File: src/core/registries/WalletRegistry.sol

54:          emit RegisterSubAccount(_wallet, _subAccount);

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L54-L54)


### [N&#x2011;27] Events may be emitted out of order due to reentrancy
Ensure that events follow the best practice of check-effects-interaction, and are emitted before external calls

*There is one instance of this issue:*

```solidity
File: src/core/SafeDeployer.sol

/// @audit registerSubAccount() prior to emission
102:         emit SubAccountDeployed(_subAcc, msg.sender);

```
*GitHub*: [102](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L102-L102)


### [N&#x2011;28] Events that mark critical parameter changes should contain both the old and the new value
This should especially be done if the new value is not required to be different from the old value

*There are 5 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

/// @audit setAuthorizedAddress()
89:           emit AuthorizedAddressInitialised(_authorizedAddress, _key);

/// @audit setRegistry()
104:          emit RegistryInitialised(_registry, _key);

```
*GitHub*: [89](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L89), [104](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L104)
```solidity
File: src/core/SafeEnabler.sol

/// @audit setGuard()
74:           emit ChangedGuard(guard);

```
*GitHub*: [74](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L74)
```solidity
File: src/core/registries/ExecutorRegistry.sol

/// @audit registerExecutor()
43:           emit RegisterExecutor(_subAccount, msg.sender, _executor);

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L43)
```solidity
File: src/core/registries/WalletRegistry.sol

/// @audit registerSubAccount()
54:           emit RegisterSubAccount(_wallet, _subAccount);

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L54)


### [N&#x2011;29] Expressions for constant values should use `immutable` rather than `constant`
While it does not save gas for some simple binary expressions because the compiler knows that developers often make this mistake, it's still best to use the right tool for the task at hand. There is a difference between `constant` variables and `immutable` variables, and they should each be used in their appropriate contexts. `constants` should be used for literal values written into the code, and `immutable` variables should be used for expressions, or values calculated in, or passed into the constructor.

*There are 3 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

24:      bytes4 internal constant SIMULATE_SELECTOR = bytes4(keccak256("simulate(address,bytes)"));

26:      address internal constant SENTINEL_MODULES = address(0x1);

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L24-L24), [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L26-L26)
```solidity
File: src/core/SafeEnabler.sol

26:      address internal constant _SENTINEL_MODULES = address(0x1);

```
*GitHub*: [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L26-L26)


### [N&#x2011;30] Import declarations should import specific identifiers, rather than the whole file
Using import declarations of the form `import {<identifier_name>} from "some/file.sol"` avoids polluting the symbol namespace making flattened files smaller, and speeds up compilation (but does not save any gas)

*There are 3 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

7:    import "safe-contracts/handler/DefaultCallbackHandler.sol";

8:    import "safe-contracts/interfaces/ISignatureValidator.sol";

9:    import "safe-contracts/GnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L7), [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L8), [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L9)


### [N&#x2011;31] Imports could be organized more systematically
The contract's interface should be imported first, followed by each of the interfaces it uses, followed by all other files. The examples below do not follow this layout.

*There is one instance of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

8:   import "safe-contracts/interfaces/ISignatureValidator.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L8-L8)


### [N&#x2011;32] Inconsistent spacing in comments
Some lines use `// x` and some use `//x`. The instances below point out the usages that don't follow the majority, within each file

*There are 2 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

21:       //keccak256("SafeMessage(bytes message)");

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L21)
```solidity
File: src/core/registries/PolicyRegistry.sol

51:               //In case invoker is updating on behalf of sub account

```
*GitHub*: [51](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L51)


### [N&#x2011;33] Large numeric literals should use underscores for readability


*There are 2 instances of this issue:*

```solidity
File: src/libraries/SafeHelper.sol

24:          33528237782592280163068556224972516439282563014722366175641814928123294921928;

28:          49122629484629529244014240937346711770925847994644146912111677022347558721749;

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L24-L24), [28](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L28-L28)


### [N&#x2011;34] Large or complicated code bases should implement invariant tests
Large code bases, or code with lots of inline-assembly, complicated math, or complicated interactions between multiple contracts, should implement [invariant fuzzing tests](https://medium.com/coinmonks/smart-contract-fuzzing-d9b88e0b0a05). Invariant fuzzers such as Echidna require the test writer to come up with invariants which should not be violated under any circumstances, and the fuzzer tests various inputs and function calls to ensure that the invariants always hold. Even code with 100% code coverage can still have bugs due to the order of the operations a user performs, and invariant fuzzers, with properly and extensively-written invariants, can close this testing gap significantly.

*There is one instance of this issue:*

```solidity
File: Various Files


```
*GitHub*: [various](https://github.com/code-423n4/2023-10-brahma/tree/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts)


### [N&#x2011;35] Long functions should be refactored into multiple, smaller, functions


*There are 2 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

/// @audit 58 lines (53 in the body)
104       function simulate(address targetContract, bytes calldata calldataPayload)
105           external
106:          returns (bytes memory response)

```
*GitHub*: [104](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L104-L106)
```solidity
File: src/core/SafeDeployer.sol

/// @audit 51 lines (45 in the body)
110       function _setupConsoleAccount(address[] memory _owners, uint256 _threshold, bool _policyHashValid)
111           private
112           view
113:          returns (bytes memory)

```
*GitHub*: [110](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L110-L113)


### [N&#x2011;36] Multiple `address`/ID mappings can be combined into a single `mapping` of an `address`/ID to a `struct`, for readability
Well-organized data structures make code reviews easier, which may lead to fewer bugs. Consider combining related mappings into mappings to structs, so it's clear what data is related

*There is one instance of this issue:*

```solidity
File: src/core/registries/WalletRegistry.sol

23        mapping(address subAccount => address wallet) public subAccountToWallet;
24        /// @notice wallet addresses mapped to list of subAccounts
25        mapping(address wallet => address[] subAccountList) public walletToSubAccountList;
26        /// @notice address of wallet mapped to boolean indicating if it's a wallet
27:       mapping(address => bool) public isWallet;

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L23-L27)


### [N&#x2011;37] Named imports of parent contracts are missing


*There are 2 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

/// @audit DefaultCallbackHandler
/// @audit ISignatureValidator
20:  contract ConsoleFallbackHandler is AddressProviderService, DefaultCallbackHandler, ISignatureValidator {

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L20-L20), [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L20-L20)


### [N&#x2011;38] NatSpec: Contract declarations should have `@author` tags


*There is one instance of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

20   contract ConsoleFallbackHandler is AddressProviderService, DefaultCallbackHandler, ISignatureValidator {
21:      //keccak256("SafeMessage(bytes message)");

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L20-L21)


### [N&#x2011;39] NatSpec: Contract declarations should have `@dev` tags
`@dev` is used to explain extra details to developers

*There are 11 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

14:  contract AddressProvider {

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L14-L14)
```solidity
File: src/core/PolicyValidator.sol

19:  contract PolicyValidator is AddressProviderService, EIP712 {

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L19-L19)
```solidity
File: src/core/SafeDeployer.sol

21   contract SafeDeployer is AddressProviderService, ReentrancyGuard {
22:      /// @notice version of safe deployer

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L21-L22)
```solidity
File: src/core/SafeModerator.sol

16:  contract SafeModerator is AddressProviderService, IGuard {

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L16-L16)
```solidity
File: src/core/SafeModeratorOverridable.sol

16   contract SafeModeratorOverridable is AddressProviderService, IGuard {
17       /**
18        * @dev Token interface change used to bypass foundry coverage issue
19        * Refer https://github.com/foundry-rs/foundry/issues/5729
20:       */

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L16-L20)
```solidity
File: src/core/TransactionValidator.sol

18:  contract TransactionValidator is AddressProviderService {

```
*GitHub*: [18](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L18-L18)
```solidity
File: src/core/registries/ExecutorRegistry.sol

16:  contract ExecutorRegistry is AddressProviderService {

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L16-L16)
```solidity
File: src/core/registries/PolicyRegistry.sol

15:  contract PolicyRegistry is AddressProviderService {

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L15-L15)
```solidity
File: src/core/registries/WalletRegistry.sol

14:  contract WalletRegistry is AddressProviderService {

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L14-L14)
```solidity
File: src/libraries/SafeHelper.sol

15:  library SafeHelper {

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L15-L15)
```solidity
File: src/libraries/TypeHashHelper.sol

12   library TypeHashHelper {
13       /**
14        * @notice Structural representation of transaction details
15        * @param operation type of operation
16        * @param to address to send tx to
17        * @param account address of safe
18        * @param executor address of executor if executed via executor plugin, address(0) if executed via execTransaction
19        * @param value txn value
20        * @param nonce txn nonce
21        * @param data txn callData
22:       */

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L12-L22)
</details>





### [N&#x2011;40] NatSpec: Error declarations should have descriptions


*There are 36 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

15:      error RegistryAlreadyExists();

16:      error AddressProviderUnsupported();

17:      error NotGovernance(address);

18:      error NotPendingGovernance(address);

19:      error NullAddress();

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L15-L15), [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L16-L16), [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L17-L17), [18](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L18-L18), [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L19-L19)
```solidity
File: src/core/AddressProviderService.sol

19:      error InvalidAddressProvider();

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L19-L19)
```solidity
File: src/core/AddressProviderService.sol

20:      error NotGovernance(address);

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L20-L20)
```solidity
File: src/core/AddressProviderService.sol

21:      error InvalidAddress();

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L21-L21)
```solidity
File: src/core/ExecutorPlugin.sol

25:      error InvalidExecutor();

```
*GitHub*: [25](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L25-L25)
```solidity
File: src/core/ExecutorPlugin.sol

26:      error InvalidSignature();

```
*GitHub*: [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L26-L26)
```solidity
File: src/core/ExecutorPlugin.sol

27:      error ModuleExecutionFailed();

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L27-L27)
```solidity
File: src/core/PolicyValidator.sol

20:      error InvalidSignature();

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L20-L20)
```solidity
File: src/core/PolicyValidator.sol

21:      error NoPolicyCommit();

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L21-L21)
```solidity
File: src/core/PolicyValidator.sol

22:      error TxnExpired(uint32 expiryEpoch);

```
*GitHub*: [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L22-L22)
```solidity
File: src/core/PolicyValidator.sol

23:      error InvalidSignatures();

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L23-L23)
```solidity
File: src/core/SafeDeployer.sol

37:      error InvalidCommitment();

```
*GitHub*: [37](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L37-L37)
```solidity
File: src/core/SafeDeployer.sol

38:      error NotWallet();

```
*GitHub*: [38](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L38-L38)
```solidity
File: src/core/SafeDeployer.sol

39:      error PreComputedAccount(address addr);

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L39-L39)
```solidity
File: src/core/SafeDeployer.sol

40:      error SafeProxyCreationFailed();

```
*GitHub*: [40](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L40-L40)
```solidity
File: src/core/SafeEnabler.sol

17:      error OnlyDelegateCall();

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L17-L17)
```solidity
File: src/core/TransactionValidator.sol

19:      error TxnUnAuthorized();

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L19-L19)
```solidity
File: src/core/TransactionValidator.sol

20:      error InvalidGuard();

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L20-L20)
```solidity
File: src/core/TransactionValidator.sol

21:      error InvalidFallbackHandler();

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L21-L21)
```solidity
File: src/core/TransactionValidator.sol

22:      error InvalidModule();

```
*GitHub*: [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L22-L22)
```solidity
File: src/core/registries/ExecutorRegistry.sol

19:      error NotOwnerWallet();

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L19-L19)
```solidity
File: src/core/registries/ExecutorRegistry.sol

20:      error AlreadyExists();

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L20-L20)
```solidity
File: src/core/registries/ExecutorRegistry.sol

21:      error DoesNotExist();

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L21-L21)
```solidity
File: src/core/registries/PolicyRegistry.sol

16:      error PolicyCommitInvalid();

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L16-L16)
```solidity
File: src/core/registries/PolicyRegistry.sol

17:      error UnauthorizedPolicyUpdate();

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L17-L17)
```solidity
File: src/core/registries/WalletRegistry.sol

15:      error AlreadyRegistered();

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L15-L15)
```solidity
File: src/core/registries/WalletRegistry.sol

16:      error InvalidSender();

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L16-L16)
```solidity
File: src/core/registries/WalletRegistry.sol

17:      error IsSubAccount();

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L17-L17)
```solidity
File: src/libraries/SafeHelper.sol

16:      error InvalidMultiSendCall(uint256);

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L16-L16)
```solidity
File: src/libraries/SafeHelper.sol

17:      error InvalidMultiSendInput();

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L17-L17)
```solidity
File: src/libraries/SafeHelper.sol

18:      error SafeExecTransactionFailed();

```
*GitHub*: [18](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L18-L18)
```solidity
File: src/libraries/SafeHelper.sol

19:      error UnableToParseOperation();

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L19-L19)
</details>





### [N&#x2011;41] NatSpec: Event declarations should have descriptions


*There are 15 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

21:      event RegistryInitialised(address indexed registry, bytes32 indexed key);

22:      event AuthorizedAddressInitialised(address indexed authorizedAddress, bytes32 indexed key);

23:      event GovernanceTransferRequested(address indexed previousGovernance, address indexed newGovernance);

24:      event GovernanceTransferred(address indexed previousGovernance, address indexed newGovernance);

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L21-L21), [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L22-L22), [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L23-L23), [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L24-L24)
```solidity
File: src/core/SafeDeployer.sol

32:      event SafeProxyCreationFailure(address indexed singleton, uint256 indexed nonce, bytes initializer);

```
*GitHub*: [32](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L32-L32)
```solidity
File: src/core/SafeDeployer.sol

33:      event ConsoleAccountDeployed(address indexed consoleAddress);

```
*GitHub*: [33](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L33-L33)
```solidity
File: src/core/SafeDeployer.sol

34:      event SubAccountDeployed(address indexed subAccountAddress, address indexed consoleAddress);

```
*GitHub*: [34](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L34-L34)
```solidity
File: src/core/SafeDeployer.sol

35:      event PreComputeAccount(address[] indexed owners, uint256 indexed threshold);

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L35-L35)
```solidity
File: src/core/SafeEnabler.sol

19:      event EnabledModule(address module);

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L19-L19)
```solidity
File: src/core/SafeEnabler.sol

20:      event ChangedGuard(address guard);

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L20-L20)
```solidity
File: src/core/registries/ExecutorRegistry.sol

23:      event RegisterExecutor(address indexed _subAccount, address indexed _owner, address indexed _executor);

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L23-L23)
```solidity
File: src/core/registries/ExecutorRegistry.sol

24:      event DeRegisterExecutor(address indexed _subAccount, address indexed _owner, address indexed _executor);

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L24-L24)
```solidity
File: src/core/registries/PolicyRegistry.sol

19:      event UpdatedPolicyCommit(address indexed account, bytes32 policyCommit, bytes32 oldPolicyCommit);

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L19-L19)
```solidity
File: src/core/registries/WalletRegistry.sol

19:      event RegisterWallet(address indexed wallet);

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L19-L19)
```solidity
File: src/core/registries/WalletRegistry.sol

20:      event RegisterSubAccount(address indexed wallet, address indexed subAccount);

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L20-L20)


### [N&#x2011;42] NatSpec: Function `@param` tag is missing


*There are 14 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

/// @audit Missing '@param _governance'
43:      constructor(address _governance) {

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L43-L43)
```solidity
File: src/core/AddressProviderService.sol

/// @audit Missing '@param _addressProvider'
27:      constructor(address _addressProvider) {

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L27-L27)
```solidity
File: src/core/ConsoleFallbackHandler.sol

/// @audit Missing '@param _addressProvider'
29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L29-L29)
```solidity
File: src/core/ExecutorPlugin.sol

/// @audit Missing '@param _addressProvider'
60:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L60-L60)
```solidity
File: src/core/PolicyValidator.sol

/// @audit Missing '@param _addressProvider'
30:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [30](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L30-L30)
```solidity
File: src/core/SafeDeployer.sol

/// @audit Missing '@param _addressProvider'
42:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [42](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L42-L42)
```solidity
File: src/core/SafeDeployer.sol

/// @audit Missing '@param _policyHashValid'
105      /**
106       * @notice Private helper function to setup Console account with setUp transactions
107       * @param _owners list of owners addresses
108       * @param _threshold safe threshold
109       */
110:     function _setupConsoleAccount(address[] memory _owners, uint256 _threshold, bool _policyHashValid)

```
*GitHub*: [105](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L105-L110)
```solidity
File: src/core/SafeDeployer.sol

/// @audit Missing '@param _initializer'
209       * @dev SafeDeployer calls createProxyWithNonce to deploy a new Gnosis Safe. This also contains initializer bytes
210       *  which are used during creation to setup the safe with owners and threshold. An actor can precompute the salt
211       *  for a given set of owners and deploy the safe. We choose to not consider that safe as a valid safe and deploy a new
212       *  safe. In case the actor chooses to deploy multiple precomputed safes with bumped nonces, the transaction will run out
213       *  of gas and user can retry with a new random salt
214       *  To generate deterministic addresses for a given set of owners, the order of owner addresses and threshold should be same
215       * @param _owners list of owners addresses
216       * @param _salt salt to be used during creation of safe, to generate nonce
217       * @return _safe The address of the created Gnosis Safe.
218       */
219:     function _createSafe(address[] calldata _owners, bytes memory _initializer, bytes32 _salt)

```
*GitHub*: [209](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L209-L219)
```solidity
File: src/core/SafeModerator.sol

/// @audit Missing '@param _addressProvider'
17:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L17-L17)
```solidity
File: src/core/SafeModeratorOverridable.sol

/// @audit Missing '@param _addressProvider'
23:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L23-L23)
```solidity
File: src/core/TransactionValidator.sol

/// @audit Missing '@param _addressProvider'
54:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L54-L54)
```solidity
File: src/core/registries/ExecutorRegistry.sol

/// @audit Missing '@param _addressProvider'
29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L29-L29)
```solidity
File: src/core/registries/PolicyRegistry.sol

/// @audit Missing '@param _addressProvider'
24:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L24-L24)
```solidity
File: src/core/registries/WalletRegistry.sol

/// @audit Missing '@param _addressProvider'
29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L29-L29)
</details>





### [N&#x2011;43] NatSpec: Function `@return` tag is missing


*There are 3 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

/// @audit Missing '@return response'
98       /**
99        * @dev Performs a delegetecall on a targetContract in the context of self.
100       * Internally reverts execution to avoid side effects (making it static). Catches revert and returns encoded result as bytes.
101       * @param targetContract Address of the contract containing the code to execute.
102       * @param calldataPayload Calldata that should be sent to the target contract (encoded method name and arguments).
103       */
104      function simulate(address targetContract, bytes calldata calldataPayload)
105          external
106:         returns (bytes memory response)

```
*GitHub*: [98](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L98-L106)
```solidity
File: src/core/SafeDeployer.sol

/// @audit Missing '@return '
105      /**
106       * @notice Private helper function to setup Console account with setUp transactions
107       * @param _owners list of owners addresses
108       * @param _threshold safe threshold
109       */
110      function _setupConsoleAccount(address[] memory _owners, uint256 _threshold, bool _policyHashValid)
111          private
112          view
113:         returns (bytes memory)

```
*GitHub*: [105](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L105-L113)
```solidity
File: src/core/SafeDeployer.sol

/// @audit Missing '@return '
162      /**
163       * @notice Private helper function to setup subAccount safe with setUp transactions
164       * @param _owners list of owners addresses
165       * @param _threshold safe threshold
166       * @param _consoleAccount address of Console account
167       */
168      function _setupSubAccount(address[] memory _owners, uint256 _threshold, address _consoleAccount)
169          private
170          view
171:         returns (bytes memory)

```
*GitHub*: [162](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L162-L171)


### [N&#x2011;44] NatSpec: Function declarations should have `@notice` tags
`@notice` is used to explain to end users what the function does, and the compiler interprets `///` or `/**` comments (but not `//` or `/*`) as this tag if one wasn't explicitly provided

*There are 12 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

43:      constructor(address _governance) {

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L43-L43)
```solidity
File: src/core/ConsoleFallbackHandler.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L29-L29)
```solidity
File: src/core/ExecutorPlugin.sol

60:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L60-L60)
```solidity
File: src/core/PolicyValidator.sol

30:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [30](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L30-L30)
```solidity
File: src/core/SafeDeployer.sol

42:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [42](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L42-L42)
```solidity
File: src/core/SafeEnabler.sol

32:      constructor() {

```
*GitHub*: [32](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L32-L32)
```solidity
File: src/core/SafeModerator.sol

17:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L17-L17)
```solidity
File: src/core/SafeModeratorOverridable.sol

23:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L23-L23)
```solidity
File: src/core/TransactionValidator.sol

54:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L54-L54)
```solidity
File: src/core/registries/ExecutorRegistry.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L29-L29)
```solidity
File: src/core/registries/PolicyRegistry.sol

24:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L24-L24)
```solidity
File: src/core/registries/WalletRegistry.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L29-L29)
</details>





### [N&#x2011;45] NatSpec: Function declarations should have descriptions


*There are 12 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

43:      constructor(address _governance) {

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L43-L43)
```solidity
File: src/core/ConsoleFallbackHandler.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L29-L29)
```solidity
File: src/core/ExecutorPlugin.sol

60:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L60-L60)
```solidity
File: src/core/PolicyValidator.sol

30:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [30](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L30-L30)
```solidity
File: src/core/SafeDeployer.sol

42:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [42](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L42-L42)
```solidity
File: src/core/SafeEnabler.sol

32:      constructor() {

```
*GitHub*: [32](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L32-L32)
```solidity
File: src/core/SafeModerator.sol

17:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L17-L17)
```solidity
File: src/core/SafeModeratorOverridable.sol

23:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L23-L23)
```solidity
File: src/core/TransactionValidator.sol

54:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L54-L54)
```solidity
File: src/core/registries/ExecutorRegistry.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L29-L29)
```solidity
File: src/core/registries/PolicyRegistry.sol

24:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L24-L24)
```solidity
File: src/core/registries/WalletRegistry.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L29-L29)
</details>





### [N&#x2011;46] NatSpec: State variable declarations should have descriptions
e.g. `@notice` for public state variables, and `@dev` for [non-public](https://docs.soliditylang.org/en/latest/natspec-format.html#tags) ones

*There are 4 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

22:      bytes32 private constant SAFE_MSG_TYPEHASH = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca;

24:      bytes4 internal constant SIMULATE_SELECTOR = bytes4(keccak256("simulate(address,bytes)"));

26:      address internal constant SENTINEL_MODULES = address(0x1);

27:      bytes4 internal constant UPDATED_MAGIC_VALUE = 0x1626ba7e;

```
*GitHub*: [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L22-L22), [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L24-L24), [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L26-L26), [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L27-L27)


### [N&#x2011;47] Not using the named return variables anywhere in the function is confusing
Consider changing the variable to be an unnamed one, since the variable is never assigned, nor is it returned by name. If the optimizer is not turned on, leaving the code as it is will also waste gas for the stack variable.

*There are 4 instances of this issue:*

```solidity
File: src/core/ExecutorPlugin.sol

/// @audit name
/// @audit version
159:      function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [159](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L159), [159](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L159)
```solidity
File: src/core/PolicyValidator.sol

/// @audit name
174:      function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [174](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L174)
```solidity
File: src/core/PolicyValidator.sol

/// @audit version
174:      function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [174](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L174)


### [N&#x2011;48] Overflows in unchecked blocks
While integers with a large number of bits are unlikely to overflow on human time scales, it is not strictly correct to use an `unchecked` block around them, because _eventually_ they will overflow, and `unchecked` blocks are meant for cases where it's mathematically impossible for an operation to trigger an overflow (e.g. a prior `require()` statement prevents the overflow case)

*There is one instance of this issue:*

```solidity
File: src/libraries/SafeHelper.sol

132:                 ++i;

```
*GitHub*: [132](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L132-L132)


### [N&#x2011;49] Polymorphic functions make security audits more time-consuming and error-prone
The instances below point to one of two functions with the same name. Consider naming each function differently, in order to make code navigation and analysis easier.

*There are 3 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

83:      function isValidSignature(bytes32 _dataHash, bytes calldata _signature) external view returns (bytes4) {

```
*GitHub*: [83](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L83-L83)
```solidity
File: src/core/PolicyValidator.sol

100      function isPolicySignatureValid(address account, bytes32 transactionStructHash, bytes calldata signatures)
101          public
102          view
103          returns (bool)
104:     {

```
*GitHub*: [100](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L100-L104)
```solidity
File: src/core/TransactionValidator.sol

234      function _validatePolicySignature(address _from, bytes32 _transactionStructHash, bytes memory _signatures)
235          internal
236          view
237:     {

```
*GitHub*: [234](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L234-L237)


### [N&#x2011;50] Setters should prevent re-setting of the same value
This especially problematic when the setter also emits the same value, which may be confusing to offline parsers

*There are 2 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

52       function setGovernance(address _newGovernance) external {
53           _notNull(_newGovernance);
54           _onlyGov();
55           emit GovernanceTransferRequested(governance, _newGovernance);
56           pendingGovernance = _newGovernance;
57:      }

77       function setAuthorizedAddress(bytes32 _key, address _authorizedAddress, bool _overrideCheck) external {
78           _onlyGov();
79           _notNull(_authorizedAddress);
80   
81           /// @dev skips checks for supported `addressProvider()` if `_overrideCheck` is true
82           if (!_overrideCheck) {
83               /// @dev skips checks for supported `addressProvider()` if `_authorizedAddress` is an EOA
84               if (_authorizedAddress.code.length != 0) _ensureAddressProvider(_authorizedAddress);
85           }
86   
87           authorizedAddresses[_key] = _authorizedAddress;
88   
89           emit AuthorizedAddressInitialised(_authorizedAddress, _key);
90:      }

```
*GitHub*: [52](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L52-L57), [77](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L77-L90)


### [N&#x2011;51] Style guide: Contract does not follow the Solidity style guide's suggested layout ordering
The [style guide](https://docs.soliditylang.org/en/v0.8.16/style-guide.html#order-of-layout) says that, within a contract, the ordering should be 1) Type declarations, 2) State variables, 3) Events, 4) Modifiers, and 5) Functions, but the contract(s) below do not follow this ordering

*There are 6 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

/// @audit event GovernanceTransferred came earlier
27:       address public governance;

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L27)
```solidity
File: src/core/SafeDeployer.sol

/// @audit function constructor came earlier
45:       mapping(bytes32 ownersHash => uint256 count) public ownerSafeCount;

```
*GitHub*: [45](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L45)
```solidity
File: src/core/SafeEnabler.sol

/// @audit event ChangedGuard came earlier
23:       address internal immutable _self;

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L23)
```solidity
File: src/core/registries/ExecutorRegistry.sol

/// @audit event DeRegisterExecutor came earlier
27:       mapping(address subAccount => EnumerableSet.AddressSet) private subAccountToExecutors;

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L27)
```solidity
File: src/core/registries/PolicyRegistry.sol

/// @audit event UpdatedPolicyCommit came earlier
22:       mapping(address account => bytes32 policyCommit) public commitments;

```
*GitHub*: [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L22)
```solidity
File: src/core/registries/WalletRegistry.sol

/// @audit event RegisterSubAccount came earlier
23        mapping(address subAccount => address wallet) public subAccountToWallet;
24        /// @notice wallet addresses mapped to list of subAccounts
25        mapping(address wallet => address[] subAccountList) public walletToSubAccountList;
26        /// @notice address of wallet mapped to boolean indicating if it's a wallet
27:       mapping(address => bool) public isWallet;

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L23-L27)


### [N&#x2011;52] Style guide: Function ordering does not follow the Solidity style guide
According to the [Solidity style guide](https://docs.soliditylang.org/en/v0.8.17/style-guide.html#order-of-functions), functions should be laid out in the following order :`constructor()`, `receive()`, `fallback()`, `external`, `public`, `internal`, `private`, but the cases below do not follow this pattern

*There is one instance of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

/// @audit getMessageHashForSafe() came earlier
83:       function isValidSignature(bytes32 _dataHash, bytes calldata _signature) external view returns (bytes4) {

```
*GitHub*: [83](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L83)


### [N&#x2011;53] Style guide: Lines are too long
Usually lines in source code are limited to [80](https://softwareengineering.stackexchange.com/questions/148677/why-is-80-characters-the-standard-limit-for-code-width) characters. Today's screens are much larger so it's reasonable to stretch this in some cases. The solidity style guide recommends a maximumum line length of [120 characters](https://docs.soliditylang.org/en/v0.8.17/style-guide.html#maximum-line-length), so the lines below should be split when they reach that length.

*There are 32 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/ConsoleFallbackHandler.sol

15:    * @title Console Fallback Handler - fallback handler to provide compatibility between pre 1.3.0 and 1.3.0+ Safe contracts, and ensure actions performed are policy abiding

34:        * @dev This is modified from CompatibilityFallbackHandler::isValidSignature(): https://github.com/safe-global/safe-contracts/blob/ff4c6761fbfae8ab8a94f36fd26bcfb2b5414eb1/contracts/handler/CompatibilityFallbackHandler.sol#L57, to provide additional policy compliance guarantees during signature validation

81:        * @notice See https://github.com/gnosis/util-contracts/blob/bb5fe5fb5df6d8400998094fb1b32a178a47c3a1/contracts/StorageAccessible.sol

100:       * Internally reverts execution to avoid side effects (making it static). Catches revert and returns encoded result as bytes.

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L15), [34](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L34), [81](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L81), [100](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L100)
```solidity
File: src/core/Constants.sol

22:       bytes32 internal constant _WALLET_REGISTRY_HASH = 0x75559f593e25c44cbf7547c1b715821f42da95df7f98cc735242e5e68111f75b;

```
*GitHub*: [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L22)
```solidity
File: src/core/Constants.sol

25:       bytes32 internal constant _POLICY_REGISTRY_HASH = 0xbcf81d40f2af7491686907859b412c7908faa6fb0c2baa84d3a2f4ee8bddcac9;

```
*GitHub*: [25](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L25)
```solidity
File: src/core/Constants.sol

31:       bytes32 internal constant _EXECUTOR_PLUGIN_HASH = 0x93ae17d63c11c26435c52b81ff53503650df80d35c62972110e64a0454badbec;

```
*GitHub*: [31](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L31)
```solidity
File: src/core/ExecutorPlugin.sol

64:        * @dev The Executors are expected to sign the EIP712 digest generated from following struct: TypeHashHelper.Transaction

```
*GitHub*: [64](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L64)
```solidity
File: src/core/SafeDeployer.sol

128:                      IGnosisSafe.setGuard, (AddressProviderService._getAuthorizedAddress(_SAFE_MODERATOR_OVERRIDABLE_HASH))

```
*GitHub*: [128](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L128)
```solidity
File: src/core/SafeDeployer.sol

189:              data: abi.encodeCall(IGnosisSafe.setGuard, (AddressProviderService._getAuthorizedAddress(_SAFE_MODERATOR_HASH)))

```
*GitHub*: [189](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L189)
```solidity
File: src/core/SafeDeployer.sol

211:       *  for a given set of owners and deploy the safe. We choose to not consider that safe as a valid safe and deploy a new

```
*GitHub*: [211](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L211)
```solidity
File: src/core/SafeDeployer.sol

212:       *  safe. In case the actor chooses to deploy multiple precomputed safes with bumped nonces, the transaction will run out

```
*GitHub*: [212](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L212)
```solidity
File: src/core/SafeDeployer.sol

214:       *  To generate deterministic addresses for a given set of owners, the order of owner addresses and threshold should be same

```
*GitHub*: [214](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L214)
```solidity
File: src/core/SafeEnabler.sol

40:        *  Refer https://github.com/safe-global/safe-contracts/blob/186a21a74b327f17fc41217a927dea7064f74604/contracts/base/ModuleManager.sol#L32C5-L32C5

```
*GitHub*: [40](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L40)
```solidity
File: src/core/SafeEnabler.sol

62:        *  Refer https://github.com/safe-global/safe-contracts/blob/186a21a74b327f17fc41217a927dea7064f74604/contracts/base/GuardManager.sol#L34

```
*GitHub*: [62](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L62)
```solidity
File: src/core/SafeModerator.sol

76:        * @notice Inherited from IGuard, function is called after executing a Safe transaction during execTransactionViaModule

```
*GitHub*: [76](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L76)
```solidity
File: src/core/SafeModeratorOverridable.sol

14:    * @notice A guard that validates transactions and allows only policy abiding txns, on Brhma console account and can be overriden by removal of guard

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L14)
```solidity
File: src/core/SafeModeratorOverridable.sol

82:        * @notice Inherited from IGuard, function is called after executing a Safe transaction during execTransactionViaModule

```
*GitHub*: [82](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L82)
```solidity
File: src/core/TransactionValidator.sol

141:       * @dev This ensures that, if a `ConsoleAccount` wishes to override policy checks, to change the guard or fallback handler, it can do so without any external intervention

```
*GitHub*: [141](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L141)
```solidity
File: src/core/TransactionValidator.sol

160:           *         data == abi.encodeCall(IGnosisSafe.setGuard, (address(0))) || abi.encodeCall(IGnosisSafe.setFallbackHandler, (address(0)))

```
*GitHub*: [160](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L160)
```solidity
File: src/core/TransactionValidator.sol

219:              !PolicyValidator(AddressProviderService._getAuthorizedAddress(_POLICY_VALIDATOR_HASH)).isPolicySignatureValid(

```
*GitHub*: [219](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L219)
```solidity
File: src/core/TransactionValidator.sol

239:              !PolicyValidator(AddressProviderService._getAuthorizedAddress(_POLICY_VALIDATOR_HASH)).isPolicySignatureValid(

```
*GitHub*: [239](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L239)
```solidity
File: src/libraries/SafeHelper.sol

22:       /// @dev This refers to the storage slot where guard is stored in Safe's layout: https://github.com/safe-global/safe-contracts/blob/ff4c6761fbfae8ab8a94f36fd26bcfb2b5414eb1/contracts/base/GuardManager.sol#L77

```
*GitHub*: [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L22)
```solidity
File: src/libraries/SafeHelper.sol

26:       /// @dev This refers to the storage slot where fallback handler is stored in Safe's layout: https://github.com/safe-global/safe-contracts/blob/ff4c6761fbfae8ab8a94f36fd26bcfb2b5414eb1/contracts/base/FallbackManager.sol#L14

```
*GitHub*: [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L26)
```solidity
File: src/libraries/SafeHelper.sol

34:        * abi.encodeCall(IGnosisSafe.setGuard, (address(0))) = 0xe19a9dd90000000000000000000000000000000000000000000000000000000000000000

```
*GitHub*: [34](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L34)
```solidity
File: src/libraries/SafeHelper.sol

35:        * keccak256(abi.encodeCall(IGnosisSafe.setGuard, (address(0)))) = 0xc0e2c16ecb99419a40dd8b9c0b339b27acebd27c481a28cd606927aeb86f5079

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L35)
```solidity
File: src/libraries/SafeHelper.sol

44:        * abi.encodeCall(IGnosisSafe.setFallbackHandler, (address(0))) = 0xf08a0323000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

```
*GitHub*: [44](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L44)
```solidity
File: src/libraries/SafeHelper.sol

45:        * keccak256(abi.encodeCall(IGnosisSafe.setFallbackHandler, (address(0)))) = 0x5bdf8c44c012c1347b2b15694dc5cc39b899eb99e32614676b7661001be925b7

```
*GitHub*: [45](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L45)
```solidity
File: src/libraries/SafeHelper.sol

98:        * @notice Packs multiple executables into a single bytes array compatible with Safe's MultiSend contract which can be used as argument for multicall method

```
*GitHub*: [98](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L98)
```solidity
File: src/libraries/SafeHelper.sol

99:        * @dev Reference contract at https://github.com/safe-global/safe-contracts/blob/main/contracts/libraries/MultiSend.sol

```
*GitHub*: [99](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L99)
```solidity
File: src/libraries/TypeHashHelper.sol

47:        * @dev keccak256("ExecutionParams(address to,uint256 value,bytes data,uint8 operation,address account,address executor,uint256 nonce)");

```
*GitHub*: [47](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L47)
```solidity
File: src/libraries/TypeHashHelper.sol

54:        * @dev keccak256("ValidationParams(ExecutionParams executionParams,bytes32 policyHash,uint32 expiryEpoch)ExecutionParams(address to,uint256 value,bytes data,uint8 operation,address account,address executor,uint256 nonce)")

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L54)
</details>





### [N&#x2011;54] Style guide: Non-`external`/`public` variable names should begin with an underscore
According to the Solidity Style Guide, non-`external`/`public` variable names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*There are 5 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

22:      bytes32 private constant SAFE_MSG_TYPEHASH = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca;

24:      bytes4 internal constant SIMULATE_SELECTOR = bytes4(keccak256("simulate(address,bytes)"));

26:      address internal constant SENTINEL_MODULES = address(0x1);

27:      bytes4 internal constant UPDATED_MAGIC_VALUE = 0x1626ba7e;

```
*GitHub*: [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L22-L22), [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L24-L24), [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L26-L26), [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L27-L27)
```solidity
File: src/core/registries/ExecutorRegistry.sol

27:      mapping(address subAccount => EnumerableSet.AddressSet) private subAccountToExecutors;

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L27-L27)


### [N&#x2011;55] Style guide: Variable names for `immutable`s should use CONSTANT_CASE
For `immutable` variable names, each word should use all capital letters, with underscores separating each word (CONSTANT_CASE)

*There is one instance of this issue:*

```solidity
File: src/core/AddressProviderService.sol

25:      AddressProvider public immutable addressProvider;

```
*GitHub*: [25](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L25-L25)


### [N&#x2011;56] Typos


*There are 5 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

/// @audit updatable
33:        * @dev authorizedAddresses are updatable by governance

```
*GitHub*: [33](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L33)
```solidity
File: src/core/SafeDeployer.sol

/// @audit Brhma
176:          // Enable Brhma Console account as module on sub Account

```
*GitHub*: [176](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L176)
```solidity
File: src/core/SafeModeratorOverridable.sol

/// @audit Brhma
14:    * @notice A guard that validates transactions and allows only policy abiding txns, on Brhma console account and can be overriden by removal of guard

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L14)
```solidity
File: src/core/SafeModeratorOverridable.sol

/// @audit overriden
14:    * @notice A guard that validates transactions and allows only policy abiding txns, on Brhma console account and can be overriden by removal of guard

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L14)
```solidity
File: src/core/TransactionValidator.sol

/// @audit Brhma
78:        * @notice Provides on-chain guarantees on security critical expected states of a Brhma console account

```
*GitHub*: [78](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L78)


### [N&#x2011;57] Unnecessary cast
The variable is being cast to its own type

*There is one instance of this issue:*

```solidity
File: src/libraries/SafeHelper.sol

/// @audit target
65:              address(target), // to

```
*GitHub*: [65](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L65-L65)


### [N&#x2011;58] Unused `error` definition
Note that there may be cases where an error superficially appears to be used, but this is only because there are multiple definitions of the error in different files. In such cases, the error definition should be moved into a separate file. The instances below are the unused definitions.

*There is one instance of this issue:*

```solidity
File: src/core/SafeDeployer.sol

39:      error PreComputedAccount(address addr);

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L39-L39)


### [N&#x2011;59] Unused `event` definition
Note that there may be cases where an event superficially appears to be used, but this is only because there are multiple definitions of the event in different files. In such cases, the event definition should be moved into a separate file. The instances below are the unused definitions.

*There is one instance of this issue:*

```solidity
File: src/core/SafeDeployer.sol

35:      event PreComputeAccount(address[] indexed owners, uint256 indexed threshold);

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L35-L35)


### [N&#x2011;60] Unused contract variables
Note that there may be cases where a variable appears to be used, but this is only because there are multiple definitions of the varible in different files. In such cases, the variable definition should be moved into a separate file. The instances below are the unused variables.

*There are 3 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

24:      bytes4 internal constant SIMULATE_SELECTOR = bytes4(keccak256("simulate(address,bytes)"));

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L24-L24)
```solidity
File: src/core/Constants.sol

75       bytes32 internal constant _CONSOLE_OP_BUILDER_HASH =
76:          0x2fa1de21ef473c3db44f5bbcf769de9538366142cab32c7df7c0fb598c034a5b;

```
*GitHub*: [75](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L75-L76)
```solidity
File: src/core/Constants.sol

82:      bytes32 internal constant _GUARDIAN_HASH = 0x424560fc12b0242dae8bb63e27dad69d2589059728e8daf9b2ff8557998f3402;

```
*GitHub*: [82](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L82-L82)


### [N&#x2011;61] Unused import
The identifier is imported but never used within the file

*There are 4 instances of this issue:*

```solidity
File: src/core/ExecutorPlugin.sol

/// @audit Types
16:  import {Types} from "interfaces/Types.sol";

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L16-L16)
```solidity
File: src/core/PolicyValidator.sol

/// @audit Enum
12:  import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L12-L12)
```solidity
File: src/core/SafeModerator.sol

/// @audit Enum
7:   import {IGuard, Enum} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L7-L7)
```solidity
File: src/core/SafeModeratorOverridable.sol

/// @audit Enum
7:   import {IGuard, Enum} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L7-L7)


### [N&#x2011;62] Use `bytes.concat()` on bytes instead of `abi.encodePacked()` for clearer semantic meaning
Starting with version 0.8.4, Solidity has the `bytes.concat()` function, which allows one to concatenate a list of bytes/strings, without extra padding. Using this function rather than `abi.encodePacked()` makes the intended operation more clear, leading to less reviewer confusion.

*There are 5 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

70:          return keccak256(abi.encodePacked(bytes1(0x19), bytes1(0x01), safe.domainSeparator(), safeMessageHash));

```
*GitHub*: [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L70-L70)
```solidity
File: src/core/SafeDeployer.sol

144:             data: abi.encodePacked(WalletRegistry.registerWallet.selector)

```
*GitHub*: [144](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L144-L144)
```solidity
File: src/libraries/SafeHelper.sol

88           bytes memory signatures = abi.encodePacked(
89               bytes12(0), // Padding for signature verifier address
90               bytes20(owner), // Signature Verifier
91               bytes32(0), // Position of extra data bytes (last set of data)
92               bytes1(hex"01") // Signature Type - 1 (presigned transaction)
93:          );

```
*GitHub*: [88](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L88-L93)
```solidity
File: src/libraries/SafeHelper.sol

119              bytes memory encodedTxn = abi.encodePacked(
120                  bytes1(call), bytes20(_txns[i].target), bytes32(_txns[i].value), bytes32(calldataLength), _txns[i].data
121:             );

```
*GitHub*: [119](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L119-L121)
```solidity
File: src/libraries/SafeHelper.sol

125:                 packedTxns = abi.encodePacked(packedTxns, encodedTxn);

```
*GitHub*: [125](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L125-L125)


### [N&#x2011;63] Use of `override` is unnecessary
Starting with Solidity version [0.8.8](https://docs.soliditylang.org/en/v0.8.20/contracts.html#function-overriding), using the `override` keyword when the function solely overrides an interface function, and the function doesn't exist in multiple base contracts, is unnecessary.

*There are 10 instances of this issue:*

```solidity
File: src/core/AddressProviderService.sol

35:      function addressProviderTarget() external view override returns (address) {

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L35-L35)
```solidity
File: src/core/ConsoleFallbackHandler.sol

39:      function isValidSignature(bytes memory _data, bytes memory _signature) public view override returns (bytes4) {

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L39-L39)
```solidity
File: src/core/ExecutorPlugin.sol

159:     function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [159](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L159-L159)
```solidity
File: src/core/PolicyValidator.sol

174:     function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [174](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L174-L174)
```solidity
File: src/core/SafeModerator.sol

33       function checkTransaction(
34           address to,
35           uint256 value,
36           bytes memory data,
37           Enum.Operation operation,
38           uint256 safeTxGas,
39           uint256 baseGas,
40           uint256 gasPrice,
41           address gasToken,
42           address payable refundReceiver,
43           bytes memory signatures,
44           address msgSender
45:      ) external view override {

```
*GitHub*: [33](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L33-L45)
```solidity
File: src/core/SafeModerator.sol

70:      function checkAfterExecution(bytes32 txHash, bool success) external view override {

```
*GitHub*: [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L70-L70)
```solidity
File: src/core/SafeModerator.sol

80       function checkModuleTransaction(
81           address, /* to */
82           uint256, /* value */
83           bytes memory, /* data */
84           Enum.Operation, /* operation */
85           address /* module */
86:      ) external override {}

```
*GitHub*: [80](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L80-L86)
```solidity
File: src/core/SafeModeratorOverridable.sol

39       function checkTransaction(
40           address to,
41           uint256 value,
42           bytes memory data,
43           Enum.Operation operation,
44           uint256 safeTxGas,
45           uint256 baseGas,
46           uint256 gasPrice,
47           address gasToken,
48           address payable refundReceiver,
49           bytes memory signatures,
50           address msgSender
51:      ) external view override {

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L39-L51)
```solidity
File: src/core/SafeModeratorOverridable.sol

76:      function checkAfterExecution(bytes32 txHash, bool success) external view override {

```
*GitHub*: [76](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L76-L76)
```solidity
File: src/core/SafeModeratorOverridable.sol

86       function checkModuleTransaction(
87           address, /* to */
88           uint256, /* value */
89           bytes memory, /* data */
90           Enum.Operation, /* operation */
91           address /* module */
92:      ) external override {}

```
*GitHub*: [86](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L86-L92)


### [N&#x2011;64] Variables need not be initialized to zero
The default value for variables is zero, so initializing them to zero is superfluous.

*There are 2 instances of this issue:*

```solidity
File: src/core/SafeModeratorOverridable.sol

21:      uint8 public constant DIFFER_SAFE_MOD = 0;

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L21-L21)
```solidity
File: src/libraries/SafeHelper.sol

107:         uint256 i = 0;

```
*GitHub*: [107](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L107-L107)


### [N&#x2011;65] Vulnerable versions of packages are being used
This project's specific package versions are vulnerable to the specific CVEs listed below. While the CVEs may involve code not in use by your project, consider switching to more recent versions of these packages that don't have these vulnerabilities, to avoid reviewers wasting time trying to determine whether there is vulnerable code from these packages in use.

*There is one instance of this issue:*

```solidity
File: Various Files

/// @audit Vulnerabilities:
///          
```



- [CVE-2022-35915](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-35915) - **MEDIUM** -  (`@openzeppelin/contracts >= 2.0.0 <4.7.2`): OpenZeppelin Contracts is a library for secure smart contract development. The target contract of an EIP-165 `supportsInterface` query can cause unbounded gas consumption by returning a lot of data, while it is generally assumed that this operation has a bounded cost. The issue has been fixed in v4.7.2. Users are advised to upgrade. There are no known workarounds for this issue.
- [CVE-2022-39384](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-39384) - **MEDIUM** -  (`@openzeppelin/contracts >=3.2.0 <4.4.1`): OpenZeppelin Contracts is a library for secure smart contract development. Before version 4.4.1 but after 3.2.0, initializer functions that are invoked separate from contract creation (the most prominent example being minimal proxies) may be reentered if they make an untrusted non-view external call. Once an initializer has finished running it can never be re-executed. However, an exception put in place to support multiple inheritance made reentrancy possible in the scenario described above, breaking the expectation that there is a single execution. Note that upgradeable proxies are commonly initialized together with contract creation, where reentrancy is not feasible, so the impact of this issue is believed to be minor. This issue has been patched, please upgrade to version 4.4.1. As a workaround, avoid untrusted external calls during initialization.
- [CVE-2023-30541](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-30541) - **MEDIUM** -  (`@openzeppelin/contracts >=3.2.0 <4.8.3`): OpenZeppelin Contracts is a library for secure smart contract development. A function in the implementation contract may be inaccessible if its selector clashes with one of the proxy's own selectors. Specifically, if the clashing function has a different signature with incompatible ABI encoding, the proxy could revert while attempting to decode the arguments from calldata. The probability of an accidental clash is negligible, but one could be caused deliberately and could cause a reduction in availability. The issue has been fixed in version 4.8.3. As a workaround if a function appears to be inaccessible for this reason, it may be possible to craft the calldata such that ABI decoding does not fail at the proxy and the function is properly proxied through.
```

```
*GitHub*: [various](https://github.com/code-423n4/2023-10-brahma/tree/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts)

## Gas Optimizations


### [G&#x2011;01] Enable IR-based code generation
By using `--via-ir` or `{"viaIR": true}`, the compiler is able to use more advanced [multi-function optimizations](https://docs.soliditylang.org/en/v0.8.17/ir-breaking-changes.html#solidity-ir-based-codegen-changes), for extra gas savings.

*There is one instance of this issue:*

```solidity
File: Various Files


```
*GitHub*: [various](https://github.com/code-423n4/2023-10-brahma/tree/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts)


### [G&#x2011;02] Multiple `address`/ID mappings can be combined into a single `mapping` of an `address`/ID to a `struct`, where appropriate
Saves a storage slot for the mapping. Depending on the circumstances and sizes of types, can avoid a Gsset (**20000 gas**) per mapping combined. Reads and subsequent writes can also be cheaper when a function requires both values and they both fit in the same storage slot. Finally, if both fields are accessed in the same function, can save **~42 gas per access** due to [not having to recalculate the key's keccak256 hash](https://gist.github.com/IllIllI000/ec23a57daa30a8f8ca8b9681c8ccefb0) (Gkeccak256 - 30 gas) and that calculation's associated stack operations.

*There is one instance of this issue:*

```solidity
File: src/core/registries/WalletRegistry.sol

23        mapping(address subAccount => address wallet) public subAccountToWallet;
24        /// @notice wallet addresses mapped to list of subAccounts
25        mapping(address wallet => address[] subAccountList) public walletToSubAccountList;
26        /// @notice address of wallet mapped to boolean indicating if it's a wallet
27:       mapping(address => bool) public isWallet;

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L23-L27)


### [G&#x2011;03] Use `uint256(1)`/`uint256(2)` instead of `true`/`false` to save gas for changes
Avoids a Gsset (**20000 gas**) when changing from `false` to `true`, after having been `true` in the past. Since most of the bools aren't changed twice in one transaction, I've counted the amount of gas as half of the full amount, for each variable

*There is one instance of this issue:*

```solidity
File: src/core/registries/WalletRegistry.sol

27:      mapping(address => bool) public isWallet;

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L27-L27)


### [G&#x2011;04] Avoid updating storage when the value hasn't changed
If the old value is equal to the new value, not re-storing the value will avoid a Gsreset (**2900 gas**), potentially at the expense of a Gcoldsload (**2100 gas**) or a Gwarmaccess (**100 gas**)

*There are 2 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

52       function setGovernance(address _newGovernance) external {
53           _notNull(_newGovernance);
54           _onlyGov();
55           emit GovernanceTransferRequested(governance, _newGovernance);
56           pendingGovernance = _newGovernance;
57:      }

77       function setAuthorizedAddress(bytes32 _key, address _authorizedAddress, bool _overrideCheck) external {
78           _onlyGov();
79           _notNull(_authorizedAddress);
80   
81           /// @dev skips checks for supported `addressProvider()` if `_overrideCheck` is true
82           if (!_overrideCheck) {
83               /// @dev skips checks for supported `addressProvider()` if `_authorizedAddress` is an EOA
84               if (_authorizedAddress.code.length != 0) _ensureAddressProvider(_authorizedAddress);
85           }
86   
87           authorizedAddresses[_key] = _authorizedAddress;
88   
89           emit AuthorizedAddressInitialised(_authorizedAddress, _key);
90:      }

```
*GitHub*: [52](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L52-L57), [77](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L77-L90)


### [G&#x2011;05] Using `calldata` instead of `memory` for read-only arguments in `external` functions saves gas
When a function with a `memory` array is called externally, the `abi.decode()` step has to copy read each index of the `calldata` to `memory`. **Each copy costs at least 60 gas** (i.e. `60 * <mem_array>.length`). Using `calldata` directly, obviates the need for copies of words of the struct/array not being read. Note that even if an interface defines a function as having `memory` arguments, it's still valid for implementation contracts to use `calldata` arguments instead. 

If the array is passed to an `internal` function which passes the array to another internal function where the array is modified and therefore `memory` is used in the `external` call, it's still more gass-efficient to use `calldata` when the `external` function uses modifiers, since the modifiers may prevent the internal functions from being called. Structs have the same overhead as an array of length one

Note that I've also flagged instances where the function is `public` but can be marked as `external` since it's not called by the contract, and cases where a constructor is involved

*There are 12 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

/// @audit isValidSignature(_data)
/// @audit isValidSignature(_signature)
39:      function isValidSignature(bytes memory _data, bytes memory _signature) public view override returns (bytes4) {

/// @audit getMessageHash(message)
60:      function getMessageHash(bytes memory message) public view returns (bytes32) {

/// @audit getMessageHashForSafe(message)
68:      function getMessageHashForSafe(GnosisSafe safe, bytes memory message) public view returns (bytes32) {

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L39-L39), [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L39-L39), [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L60-L60), [68](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L68-L68)
```solidity
File: src/core/PolicyValidator.sol

/// @audit isPolicySignatureValid(data)
58:          bytes memory data,

```
*GitHub*: [58](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L58-L58)
```solidity
File: src/core/SafeModerator.sol

/// @audit checkTransaction(data)
36:          bytes memory data,

```
*GitHub*: [36](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L36-L36)
```solidity
File: src/core/SafeModerator.sol

/// @audit checkTransaction(signatures)
43:          bytes memory signatures,

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L43-L43)
```solidity
File: src/core/SafeModeratorOverridable.sol

/// @audit checkTransaction(data)
42:          bytes memory data,

```
*GitHub*: [42](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L42-L42)
```solidity
File: src/core/SafeModeratorOverridable.sol

/// @audit checkTransaction(signatures)
49:          bytes memory signatures,

```
*GitHub*: [49](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L49-L49)
```solidity
File: src/core/TransactionValidator.sol

/// @audit validatePreTransactionOverridable(txParams)
64:      function validatePreTransactionOverridable(SafeTransactionParams memory txParams) external view {

```
*GitHub*: [64](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L64-L64)
```solidity
File: src/core/TransactionValidator.sol

/// @audit validatePreTransaction(txParams)
95:      function validatePreTransaction(SafeTransactionParams memory txParams) external view {

```
*GitHub*: [95](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L95-L95)
```solidity
File: src/core/TransactionValidator.sol

/// @audit validatePreExecutorTransaction(signatures)
123:         bytes memory signatures

```
*GitHub*: [123](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L123-L123)


### [G&#x2011;06] Using `bool`s for storage incurs overhead
```solidity
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.
```
https://github.com/OpenZeppelin/openzeppelin-contracts/blob/58f635312aa21f947cae5f8578638a85aa2519f5/contracts/security/ReentrancyGuard.sol#L23-L27
Use `uint256(0)` and `uint256(1)` for true/false to avoid a Gwarmaccess (**[100 gas](https://gist.github.com/IllIllI000/1b70014db712f8572a72378321250058)**) for the extra SLOAD

*There is one instance of this issue:*

```solidity
File: src/core/registries/WalletRegistry.sol

27:      mapping(address => bool) public isWallet;

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L27-L27)


### [G&#x2011;07] Use local variables for emitting
Use the function/modifier's local copy of the state variable, rather than incurring an extra Gwarmaccess (**100 gas**). In the unlikely event that the state variable hasn't already been used by the function/modifier, consider whether it is really necessary to include it in the event, given the fact that it incurs a Gcoldsload (**2100 gas**), or whether it can be passed in to or back out of the functions that _do_ use it

*There are 3 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

/// @audit governance
55:          emit GovernanceTransferRequested(governance, _newGovernance);

/// @audit governance
66:          emit GovernanceTransferred(governance, msg.sender);

```
*GitHub*: [55](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L55-L55), [66](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L66-L66)
```solidity
File: src/core/registries/PolicyRegistry.sol

/// @audit commitments
67:          emit UpdatedPolicyCommit(account, policyCommit, commitments[account]);

```
*GitHub*: [67](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L67-L67)


### [G&#x2011;08] Use assembly for small keccak256 hashes, in order to save gas
If the arguments to the encode call can fit into the scratch space (two words or fewer), then it's more efficient to use assembly to generate the hash (**80 gas**):
`keccak256(abi.encodePacked(x, y))` -> `assembly {mstore(0x00, a); mstore(0x20, b); let hash := keccak256(0x00, 0x40); }`

*There are 2 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

69:          bytes32 safeMessageHash = keccak256(abi.encode(SAFE_MSG_TYPEHASH, keccak256(message)));

```
*GitHub*: [69](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L69-L69)
```solidity
File: src/core/SafeDeployer.sol

225:         bytes32 ownersHash = keccak256(abi.encode(_owners));

```
*GitHub*: [225](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L225-L225)


### [G&#x2011;09] `keccak256()` should only need to be called on a specific string literal once
It should be saved to an immutable variable, and the variable used instead. If the hash is being used as a part of a function selector, the cast to `bytes4` should also only be done once

*There is one instance of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

24:      bytes4 internal constant SIMULATE_SELECTOR = bytes4(keccak256("simulate(address,bytes)"));

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L24-L24)


### [G&#x2011;10] Use `+=` for `mapping`s
Using `+=` for mappings saves **[40 gas](https://gist.github.com/IllIllI000/4fc5f83a9edc6ed16677258bf58f32a5)** due to not having to recalculate the mapping's value's hash

*There is one instance of this issue:*

```solidity
File: src/core/SafeEnabler.sol

53:          modules[module] = modules[_SENTINEL_MODULES];

```
*GitHub*: [53](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L53-L53)


### [G&#x2011;11] Use assembly to emit events, in order to save gas
Using the [scratch space](https://github.com/Vectorized/solady/blob/30558f5402f02351b96eeb6eaf32bcea29773841/src/tokens/ERC1155.sol#L501-L504) for event arguments (two words or fewer) will save gas over needing Solidity's full abi memory expansion used for emitting normally.

*There are 10 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

55:          emit GovernanceTransferRequested(governance, _newGovernance);

66:          emit GovernanceTransferred(governance, msg.sender);

89:          emit AuthorizedAddressInitialised(_authorizedAddress, _key);

104:         emit RegistryInitialised(_registry, _key);

```
*GitHub*: [55](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L55-L55), [66](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L66-L66), [89](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L89-L89), [104](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L104-L104)
```solidity
File: src/core/SafeDeployer.sol

70:          emit ConsoleAccountDeployed(_safe);

```
*GitHub*: [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L70-L70)
```solidity
File: src/core/SafeDeployer.sol

102:         emit SubAccountDeployed(_subAcc, msg.sender);

```
*GitHub*: [102](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L102-L102)
```solidity
File: src/core/SafeEnabler.sol

55:          emit EnabledModule(module);

```
*GitHub*: [55](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L55-L55)
```solidity
File: src/core/SafeEnabler.sol

74:          emit ChangedGuard(guard);

```
*GitHub*: [74](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L74-L74)
```solidity
File: src/core/registries/WalletRegistry.sol

39:          emit RegisterWallet(msg.sender);

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L39-L39)
```solidity
File: src/core/registries/WalletRegistry.sol

54:          emit RegisterSubAccount(_wallet, _subAccount);

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L54-L54)


### [G&#x2011;12] Optimize names to save gas
`public`/`external` function names and `public` member variable names can be optimized to save gas. See [this](https://gist.github.com/IllIllI000/a5d8b486a8259f9f77891a919febd1a9) link for an example of how it works. Below are the interfaces/abstract contracts that can be optimized so that the most frequently-called functions use the least amount of gas possible during method lookup. Method IDs that have two leading zero bytes can save **128 gas** each during deployment, and renaming functions to have lower method IDs will save **22 gas** per call, [per sorted position shifted](https://medium.com/joyso/solidity-how-does-function-name-affect-gas-consumption-in-smart-contract-47d270d8ac92)

*There are 8 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

/// @audit setGovernance(), acceptGovernance(), setAuthorizedAddress(), setRegistry(), getAuthorizedAddress(), getRegistry()
14:   contract AddressProvider {

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L14)
```solidity
File: src/core/ConsoleFallbackHandler.sol

/// @audit getMessageHash(), getMessageHashForSafe(), getModules(), simulate()
20:   contract ConsoleFallbackHandler is AddressProviderService, DefaultCallbackHandler, ISignatureValidator {

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L20)
```solidity
File: src/core/PolicyValidator.sol

/// @audit isPolicySignatureValid(), isPolicySignatureValid()
19:   contract PolicyValidator is AddressProviderService, EIP712 {

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L19)
```solidity
File: src/core/SafeDeployer.sol

/// @audit deployConsoleAccount(), deploySubAccount()
21:   contract SafeDeployer is AddressProviderService, ReentrancyGuard {

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L21)
```solidity
File: src/core/SafeEnabler.sol

/// @audit enableModule(), setGuard()
16:   contract SafeEnabler is GnosisSafeStorage {

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L16)
```solidity
File: src/core/TransactionValidator.sol

/// @audit validatePreTransactionOverridable(), validatePostTransactionOverridable(), validatePreTransaction(), validatePostTransaction(), validatePreExecutorTransaction(), validatePostExecutorTransaction()
18:   contract TransactionValidator is AddressProviderService {

```
*GitHub*: [18](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L18)
```solidity
File: src/core/registries/ExecutorRegistry.sol

/// @audit registerExecutor(), deRegisterExecutor(), isExecutor(), getExecutorsForSubAccount()
16:   contract ExecutorRegistry is AddressProviderService {

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L16)
```solidity
File: src/core/registries/WalletRegistry.sol

/// @audit registerWallet(), registerSubAccount(), getSubAccountsForWallet(), isOwner()
14:   contract WalletRegistry is AddressProviderService {

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L14)
</details>





### [G&#x2011;13] Usage of `uints`/`ints` smaller than 32 bytes (256 bits) incurs overhead
> When using elements that are smaller than 32 bytes, your contract’s gas usage may be higher. This is because the EVM operates on 32 bytes at a time. Therefore, if the element is smaller than that, the EVM must use more operations in order to reduce the size of the element from 32 bytes to the desired size.

https://docs.soliditylang.org/en/v0.8.11/internals/layout_in_storage.html
Each operation involving a `uint8` costs an extra [**22-28 gas**](https://gist.github.com/IllIllI000/9388d20c70f9a4632eb3ca7836f54977) (depending on whether the other operand is also a variable of type `uint8`) as compared to ones involving `uint256`, due to the compiler having to clear the higher bits of the memory word before operating on the `uint8`, as well as the associated stack operations of doing so. Use a larger size then downcast where needed

*There are 2 instances of this issue:*

```solidity
File: src/core/PolicyValidator.sol

/// @audit uint32 expiryEpoch
165:          expiryEpoch = uint32(bytes4(_signatures[length - 4:length]));

```
*GitHub*: [165](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L165)
```solidity
File: src/libraries/SafeHelper.sol

/// @audit uint8 call
112:                  call = uint8(Enum.Operation.DelegateCall);

```
*GitHub*: [112](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L112)


### [G&#x2011;14] Constructors can be marked `payable`
Payable functions cost less gas to execute, since the compiler does not have to add extra checks to ensure that a payment wasn't provided. A constructor can safely be marked as payable, since only the deployer would be able to pass funds, and the project itself would not pass any funds.

*There are 13 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

43:       constructor(address _governance) {

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L43)
```solidity
File: src/core/AddressProviderService.sol

27:       constructor(address _addressProvider) {

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L27)
```solidity
File: src/core/ConsoleFallbackHandler.sol

29:       constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L29)
```solidity
File: src/core/ExecutorPlugin.sol

60:       constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L60)
```solidity
File: src/core/PolicyValidator.sol

30:       constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [30](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L30)
```solidity
File: src/core/SafeDeployer.sol

42:       constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [42](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L42)
```solidity
File: src/core/SafeEnabler.sol

32        constructor() {
33:           _self = address(this);

```
*GitHub*: [32](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L32-L33)
```solidity
File: src/core/SafeModerator.sol

17:       constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L17)
```solidity
File: src/core/SafeModeratorOverridable.sol

23:       constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L23)
```solidity
File: src/core/TransactionValidator.sol

54:       constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L54)
```solidity
File: src/core/registries/ExecutorRegistry.sol

29:       constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L29)
```solidity
File: src/core/registries/PolicyRegistry.sol

24:       constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L24)
```solidity
File: src/core/registries/WalletRegistry.sol

29:       constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L29)
</details>





### [G&#x2011;15] `internal`/`private` functions only called once can be inlined to save gas
Not inlining costs **20 to 40 gas** because of two extra `JUMP` instructions and additional stack operations needed for function calls.

*There are 8 instances of this issue:*

```solidity
File: src/core/ExecutorPlugin.sol

86       function _executeTxnAsModule(address _account, Types.Executable memory _executable)
87           internal
88           returns (bytes memory)
89:      {

106:     function _validateExecutionRequest(ExecutionRequest calldata execRequest) internal {

```
*GitHub*: [86](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L86-L89), [106](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L106-L106)
```solidity
File: src/core/PolicyValidator.sol

156      function _decompileSignatures(bytes calldata _signatures)
157          internal
158          pure
159          returns (uint32 expiryEpoch, bytes memory validatorSignature)
160:     {

```
*GitHub*: [156](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L156-L160)
```solidity
File: src/core/SafeDeployer.sol

110      function _setupConsoleAccount(address[] memory _owners, uint256 _threshold, bool _policyHashValid)
111          private
112          view
113          returns (bytes memory)
114:     {

```
*GitHub*: [110](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L110-L114)
```solidity
File: src/core/SafeDeployer.sol

168      function _setupSubAccount(address[] memory _owners, uint256 _threshold, address _consoleAccount)
169          private
170          view
171          returns (bytes memory)
172:     {

```
*GitHub*: [168](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L168-L172)
```solidity
File: src/core/TransactionValidator.sol

149      function _isConsoleBeingOverriden(
150          address _from,
151          address _to,
152          uint256 _value,
153          bytes memory _data,
154          Enum.Operation _operation
155:     ) internal pure returns (bool) {

```
*GitHub*: [149](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L149-L155)
```solidity
File: src/core/TransactionValidator.sol

234      function _validatePolicySignature(address _from, bytes32 _transactionStructHash, bytes memory _signatures)
235          internal
236          view
237:     {

```
*GitHub*: [234](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L234-L237)
```solidity
File: src/core/registries/PolicyRegistry.sol

66:      function _updatePolicy(address account, bytes32 policyCommit) internal {

```
*GitHub*: [66](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L66-L66)


### [G&#x2011;16] Simple checks for zero can be done using assembly to save gas


*There are 7 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

148:         if (addr == address(0)) revert NullAddress();

```
*GitHub*: [148](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L148-L148)
```solidity
File: src/core/AddressProviderService.sol

28:          if (_addressProvider == address(0)) revert InvalidAddressProvider();

```
*GitHub*: [28](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L28-L28)
```solidity
File: src/core/AddressProviderService.sol

73:          if (_addr == address(0)) revert InvalidAddress();

```
*GitHub*: [73](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L73-L73)
```solidity
File: src/core/PolicyValidator.sol

108:         if (policyHash == bytes32(0)) {

```
*GitHub*: [108](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L108-L108)
```solidity
File: src/core/SafeDeployer.sol

88:          if (_policyCommit == bytes32(0)) revert InvalidCommitment();

```
*GitHub*: [88](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L88-L88)
```solidity
File: src/core/registries/PolicyRegistry.sol

36:          if (policyCommit == bytes32(0)) {

```
*GitHub*: [36](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L36-L36)
```solidity
File: src/libraries/SafeHelper.sol

105:         if (len == 0) revert InvalidMultiSendInput();

```
*GitHub*: [105](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L105-L105)


### [G&#x2011;17] Nesting `if`-statements is cheaper than using `&&`
Nesting `if`-statements avoids the stack operations of setting up and using an extra `jumpdest`, and saves **6 [gas](https://gist.github.com/IllIllI000/7f3b818abecfadbef93b894481ae7d19)**

*There are 3 instances of this issue:*

```solidity
File: src/core/ExecutorPlugin.sol

117          if (execRequest.executor.code.length == 0 && execRequest.executorSignature.length == 0) {
118              // Executor is an EOA and no executor signature is provided
119              revert InvalidSignature();
120:         }

```
*GitHub*: [117](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L117-L120)
```solidity
File: src/core/PolicyValidator.sol

135          if (trustedValidator.code.length == 0 && validatorSignature.length == 0) {
136              // TrustedValidator is an EOA and no trustedValidator signature is provided
137              revert InvalidSignature();
138:         }

```
*GitHub*: [135](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L135-L138)
```solidity
File: src/core/TransactionValidator.sol

165          if (_from == _to && _value == 0 && _operation == Enum.Operation.Call) {
166              if (SafeHelper._GUARD_REMOVAL_CALLDATA_HASH == keccak256(_data)) {
167                  return true;
168              } else if (SafeHelper._FALLBACK_REMOVAL_CALLDATA_HASH == keccak256(_data)) {
169                  return true;
170              }
171:         }

```
*GitHub*: [165](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L165-L171)


### [G&#x2011;18] `>=` costs less gas than `>`
The compiler uses opcodes `GT` and `ISZERO` for solidity code that uses `>`, but only requires `LT` for `>=`, [which saves **3 gas**](https://gist.github.com/IllIllI000/3dc79d25acccfa16dee4e83ffdc6ffde). If `<` is being used, the condition can be inverted.

*There are 2 instances of this issue:*

```solidity
File: src/core/PolicyValidator.sol

116:         if (expiryEpoch < uint32(block.timestamp)) {

162:         if (length < 8) revert InvalidSignatures();

```
*GitHub*: [116](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L116-L116), [162](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L162-L162)


### [G&#x2011;19] Splitting `require()` statements that use `&&` saves gas
See [this issue](https://github.com/code-423n4/2022-01-xdefi-findings/issues/128) which describes the fact that there is a larger deployment gas cost, but with enough runtime calls, the change ends up being cheaper by **3 gas**

*There is one instance of this issue:*

```solidity
File: src/core/SafeEnabler.sol

48:          require(module != address(0) && module != _SENTINEL_MODULES, "GS101");

```
*GitHub*: [48](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L48-L48)


### [G&#x2011;20] Use custom errors rather than `revert()`/`require()` strings to save gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

*There are 4 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

44:               require(safe.signedMessages(messageHash) != 0, "Hash not approved");

51:               require(policyValidator.isPolicySignatureValid(msg.sender, messageHash, _signature), "Policy not approved");

```
*GitHub*: [44](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L44), [51](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L51)
```solidity
File: src/core/SafeEnabler.sol

48:           require(module != address(0) && module != _SENTINEL_MODULES, "GS101");

```
*GitHub*: [48](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L48)
```solidity
File: src/core/SafeEnabler.sol

52:           require(modules[module] == address(0), "GS102");

```
*GitHub*: [52](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L52)


### [G&#x2011;21] Using `constant`s directly, rather than caching the value, saves gas


*There is one instance of this issue:*

```solidity
File: src/core/SafeEnabler.sol

/// @audit _GUARD_STORAGE_SLOT
69:          bytes32 slot = _GUARD_STORAGE_SLOT;

```
*GitHub*: [69](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L69-L69)


### [G&#x2011;22] Using `private` rather than `public` for constants, saves gas
If needed, the values can be read from the verified contract source code, or if there are multiple values there can be a single getter function that [returns a tuple](https://github.com/code-423n4/2022-08-frax/blob/90f55a9ce4e25bceed3a74290b854341d8de6afa/src/contracts/FraxlendPair.sol#L156-L178) of the values of all currently-public constants. Saves **3406-3606 gas** in deployment gas due to the compiler not having to create non-payable getter functions for deployment calldata, not having to store the bytes of the value outside of where it's used, and not adding another entry to the method ID table

*There are 4 instances of this issue:*

```solidity
File: src/core/SafeDeployer.sol

23:       string public constant VERSION = "1";

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L23)
```solidity
File: src/core/SafeModeratorOverridable.sol

21:       uint8 public constant DIFFER_SAFE_MOD = 0;

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L21)
```solidity
File: src/libraries/TypeHashHelper.sol

49        bytes32 public constant TRANSACTION_PARAMS_TYPEHASH =
50:           0xfd4628b53a91b366f1977138e2eda53b93c8f5cc74bda8440f108d7da1e99290;

```
*GitHub*: [49](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L49-L50)
```solidity
File: src/libraries/TypeHashHelper.sol

56        bytes32 public constant VALIDATION_PARAMS_TYPEHASH =
57:           0x0c7f653e0f641e41fbb4ed1440c7d0b08b8d2a19e1c35cfc98de2d47519e15b1;

```
*GitHub*: [56](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L56-L57)

## Disputed Issues

The issues below may be reported by other bots/wardens, but can be penalized/ignored since either the rule or the specified instances are invalid


### [D&#x2011;01] ~~`abi.encode()` is less efficient than `abi.encodepacked()`~~
`abi.encodePacked()` does not always save gas over `abi.encode()` and in fact often costs [more](https://gist.github.com/IllIllI000/2ee970e4f05af4d2a3d89a56b5cc93a5) gas. The [comparison](https://github.com/ConnorBlockchain/Solidity-Encode-Gas-Comparison) sometimes linked to itself even shows that when addresses are involved, the packed flavor costs more gas.

*There are 2 instances of this issue:*

```solidity
File: src/core/SafeDeployer.sol

225:         bytes32 ownersHash = keccak256(abi.encode(_owners));

```
*GitHub*: [225](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L225-L225)
```solidity
File: src/libraries/TypeHashHelper.sol

66:              abi.encode(

```
*GitHub*: [66](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L66-L66)


### [D&#x2011;02] ~~`abi.encodePacked()` should not be used with dynamic types when passing the result to a hash function such as `keccak256()`~~
The cases below do not have consecutive `bytes`/`string` arguments

*There are 2 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

70:           return keccak256(abi.encodePacked(bytes1(0x19), bytes1(0x01), safe.domainSeparator(), safeMessageHash));

```
*GitHub*: [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L70)
```solidity
File: src/core/SafeDeployer.sol

254:          return uint256(keccak256(abi.encodePacked(_ownersHash, ownerSafeCount[_ownersHash]++, _salt, VERSION)));

```
*GitHub*: [254](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L254)


### [D&#x2011;03] ~~`internal` functions not called by the contract should be removed~~
These functions are referenced by other contracts other than the defining one

*There are 8 instances of this issue:*

```solidity
File: src/core/AddressProviderService.sol

44:      function _getRegistry(bytes32 _key) internal view returns (address registry) {

54:      function _getAuthorizedAddress(bytes32 _key) internal view returns (address authorizedAddress) {

```
*GitHub*: [44](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L44-L44), [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L54-L54)
```solidity
File: src/libraries/SafeHelper.sol

103:     function _packMultisendTxns(Types.Executable[] memory _txns) internal pure returns (bytes memory packedTxns) {

```
*GitHub*: [103](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L103-L103)
```solidity
File: src/libraries/SafeHelper.sol

142:     function _getGuard(address safe) internal view returns (address) {

```
*GitHub*: [142](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L142-L142)
```solidity
File: src/libraries/SafeHelper.sol

152:     function _getFallbackHandler(address safe) internal view returns (address) {

```
*GitHub*: [152](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L152-L152)
```solidity
File: src/libraries/SafeHelper.sol

163:     function _parseOperationEnum(Types.CallType callType) internal pure returns (Enum.Operation operation) {

```
*GitHub*: [163](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L163-L163)
```solidity
File: src/libraries/TypeHashHelper.sol

64:      function _buildTransactionStructHash(Transaction memory txn) internal pure returns (bytes32) {

```
*GitHub*: [64](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L64-L64)
```solidity
File: src/libraries/TypeHashHelper.sol

84:      function _buildValidationStructHash(Validation memory validation) internal pure returns (bytes32) {

```
*GitHub*: [84](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L84-L84)


### [D&#x2011;04] ~~`internal` functions not called by the contract should be removed~~
These are required to exist, and override parent contracts' functions

*There are 2 instances of this issue:*

```solidity
File: src/core/ExecutorPlugin.sol

159:     function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [159](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L159-L159)
```solidity
File: src/core/PolicyValidator.sol

174:     function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [174](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L174-L174)


### [D&#x2011;05] ~~`require()` / `revert()` statements should have descriptive reason strings~~
These are not `revert()` calls, so these findings are invalid

*There are 40 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

64:              revert NotPendingGovernance(msg.sender);

101:         if (registries[_key] != address(0)) revert RegistryAlreadyExists();

132:             revert AddressProviderUnsupported();

140:         if (msg.sender != governance) revert NotGovernance(msg.sender);

148:         if (addr == address(0)) revert NullAddress();

```
*GitHub*: [64](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L64-L64), [101](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L101-L101), [132](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L132-L132), [140](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L140-L140), [148](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L148-L148)
```solidity
File: src/core/AddressProviderService.sol

28:          if (_addressProvider == address(0)) revert InvalidAddressProvider();

```
*GitHub*: [28](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L28-L28)
```solidity
File: src/core/AddressProviderService.sol

64:              revert NotGovernance(msg.sender);

```
*GitHub*: [64](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L64-L64)
```solidity
File: src/core/AddressProviderService.sol

73:          if (_addr == address(0)) revert InvalidAddress();

```
*GitHub*: [73](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L73-L73)
```solidity
File: src/core/ExecutorPlugin.sol

96:          if (!success) revert ModuleExecutionFailed();

```
*GitHub*: [96](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L96-L96)
```solidity
File: src/core/ExecutorPlugin.sol

113:             revert InvalidExecutor();

```
*GitHub*: [113](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L113-L113)
```solidity
File: src/core/ExecutorPlugin.sol

119:             revert InvalidSignature();

```
*GitHub*: [119](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L119-L119)
```solidity
File: src/core/ExecutorPlugin.sol

144:             revert InvalidExecutor();

```
*GitHub*: [144](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L144-L144)
```solidity
File: src/core/PolicyValidator.sol

109:             revert NoPolicyCommit();

```
*GitHub*: [109](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L109-L109)
```solidity
File: src/core/PolicyValidator.sol

117:             revert TxnExpired(expiryEpoch);

```
*GitHub*: [117](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L117-L117)
```solidity
File: src/core/PolicyValidator.sol

137:             revert InvalidSignature();

```
*GitHub*: [137](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L137-L137)
```solidity
File: src/core/PolicyValidator.sol

162:         if (length < 8) revert InvalidSignatures();

```
*GitHub*: [162](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L162-L162)
```solidity
File: src/core/SafeDeployer.sol

88:          if (_policyCommit == bytes32(0)) revert InvalidCommitment();

```
*GitHub*: [88](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L88-L88)
```solidity
File: src/core/SafeDeployer.sol

92:          if (!_walletRegistry.isWallet(msg.sender)) revert NotWallet();

```
*GitHub*: [92](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L92-L92)
```solidity
File: src/core/SafeDeployer.sol

237:                     revert SafeProxyCreationFailed();

```
*GitHub*: [237](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L237-L237)
```solidity
File: src/core/SafeDeployer.sol

242:                 revert SafeProxyCreationFailed();

```
*GitHub*: [242](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L242-L242)
```solidity
File: src/core/SafeEnabler.sol

82:          if (address(this) == _self) revert OnlyDelegateCall();

```
*GitHub*: [82](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L82-L82)
```solidity
File: src/core/TransactionValidator.sol

186:         if (guard != AddressProviderService._getAuthorizedAddress(_SAFE_MODERATOR_HASH)) revert InvalidGuard();

```
*GitHub*: [186](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L186-L186)
```solidity
File: src/core/TransactionValidator.sol

190:             revert InvalidFallbackHandler();

```
*GitHub*: [190](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L190-L190)
```solidity
File: src/core/TransactionValidator.sol

197:         if (!IGnosisSafe(_subAccount).isModuleEnabled(ownerConsole)) revert InvalidModule();

```
*GitHub*: [197](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L197-L197)
```solidity
File: src/core/TransactionValidator.sol

223:             revert TxnUnAuthorized();

```
*GitHub*: [223](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L223-L223)
```solidity
File: src/core/TransactionValidator.sol

243:             revert TxnUnAuthorized();

```
*GitHub*: [243](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L243-L243)
```solidity
File: src/core/registries/ExecutorRegistry.sol

40:          if (!_walletRegistry.isOwner(msg.sender, _subAccount)) revert NotOwnerWallet();

```
*GitHub*: [40](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L40-L40)
```solidity
File: src/core/registries/ExecutorRegistry.sol

42:          if (!subAccountToExecutors[_subAccount].add(_executor)) revert AlreadyExists();

```
*GitHub*: [42](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L42-L42)
```solidity
File: src/core/registries/ExecutorRegistry.sol

55:          if (_walletRegistry.subAccountToWallet(_subAccount) != msg.sender) revert NotOwnerWallet();

```
*GitHub*: [55](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L55-L55)
```solidity
File: src/core/registries/ExecutorRegistry.sol

57:          if (!subAccountToExecutors[_subAccount].remove(_executor)) revert DoesNotExist();

```
*GitHub*: [57](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L57-L57)
```solidity
File: src/core/registries/PolicyRegistry.sol

37:              revert PolicyCommitInvalid();

```
*GitHub*: [37](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L37-L37)
```solidity
File: src/core/registries/PolicyRegistry.sol

55:              revert UnauthorizedPolicyUpdate();

```
*GitHub*: [55](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L55-L55)
```solidity
File: src/core/registries/WalletRegistry.sol

36:          if (isWallet[msg.sender]) revert AlreadyRegistered();

```
*GitHub*: [36](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L36-L36)
```solidity
File: src/core/registries/WalletRegistry.sol

37:          if (subAccountToWallet[msg.sender] != address(0)) revert IsSubAccount();

```
*GitHub*: [37](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L37-L37)
```solidity
File: src/core/registries/WalletRegistry.sol

50:          if (msg.sender != AddressProviderService._getAuthorizedAddress(_SAFE_DEPLOYER_HASH)) revert InvalidSender();

```
*GitHub*: [50](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L50-L50)
```solidity
File: src/core/registries/WalletRegistry.sol

51:          if (subAccountToWallet[_subAccount] != address(0)) revert AlreadyRegistered();

```
*GitHub*: [51](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L51-L51)
```solidity
File: src/libraries/SafeHelper.sol

77:          if (!success) revert SafeExecTransactionFailed();

```
*GitHub*: [77](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L77-L77)
```solidity
File: src/libraries/SafeHelper.sol

105:         if (len == 0) revert InvalidMultiSendInput();

```
*GitHub*: [105](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L105-L105)
```solidity
File: src/libraries/SafeHelper.sol

114:                 revert InvalidMultiSendCall(i);

```
*GitHub*: [114](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L114-L114)
```solidity
File: src/libraries/SafeHelper.sol

169:             revert UnableToParseOperation();

```
*GitHub*: [169](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L169-L169)
</details>





### [D&#x2011;06] ~~All interfaces used within a project should be imported~~
These contracts don't rely on other contracts for their definitions, so there's nothing to import

*There are 4 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

14:  contract AddressProvider {

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L14-L14)
```solidity
File: src/core/Constants.sol

13   abstract contract Constants {
14       /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
15       /*                        REGISTRIES                          */
16       /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
17:      /// @notice keccak256("ExecutorRegistry")

```
*GitHub*: [13](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L13-L17)
```solidity
File: src/libraries/SafeHelper.sol

15:  library SafeHelper {

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L15-L15)
```solidity
File: src/libraries/TypeHashHelper.sol

12   library TypeHashHelper {
13       /**
14        * @notice Structural representation of transaction details
15        * @param operation type of operation
16        * @param to address to send tx to
17        * @param account address of safe
18        * @param executor address of executor if executed via executor plugin, address(0) if executed via execTransaction
19        * @param value txn value
20        * @param nonce txn nonce
21        * @param data txn callData
22:       */

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L12-L22)


### [D&#x2011;07] ~~Array lengths not checked~~
These instances only have one array

*There are 6 instances of this issue:*

```solidity
File: src/core/SafeDeployer.sol

56       function deployConsoleAccount(address[] calldata _owners, uint256 _threshold, bytes32 _policyCommit, bytes32 _salt)
57           external
58           nonReentrant
59           returns (address _safe)
60:      {

82       function deploySubAccount(address[] calldata _owners, uint256 _threshold, bytes32 _policyCommit, bytes32 _salt)
83           external
84           nonReentrant
85           returns (address _subAcc)
86:      {

110      function _setupConsoleAccount(address[] memory _owners, uint256 _threshold, bool _policyHashValid)
111          private
112          view
113          returns (bytes memory)
114:     {

168      function _setupSubAccount(address[] memory _owners, uint256 _threshold, address _consoleAccount)
169          private
170          view
171          returns (bytes memory)
172:     {

219      function _createSafe(address[] calldata _owners, bytes memory _initializer, bytes32 _salt)
220          private
221          returns (address _safe)
222:     {

```
*GitHub*: [56](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L56-L60), [82](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L82-L86), [110](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L110-L114), [168](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L168-L172), [219](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L219-L222)
```solidity
File: src/libraries/SafeHelper.sol

103:     function _packMultisendTxns(Types.Executable[] memory _txns) internal pure returns (bytes memory packedTxns) {

```
*GitHub*: [103](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L103-L103)


### [D&#x2011;08] ~~Assembly blocks should have comments~~
These blocks already have comments

*There is one instance of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

115           assembly {
116               let internalCalldata := mload(0x40)
117               // Store `simulateAndRevert.selector`.
118               // String representation is used to force right padding
119               mstore(internalCalldata, "\xb4\xfa\xba\x09")
120               // Abuse the fact that both this and the internal methods have the
121               // same signature, and differ only in symbol name (and therefore,
122               // selector) and copy calldata directly. This saves us approximately
123               // 250 bytes of code and 300 gas at runtime over the
124               // `abi.encodeWithSelector` builtin.
125               calldatacopy(add(internalCalldata, 0x04), 0x04, sub(calldatasize(), 0x04))
126   
127               // `pop` is required here by the compiler, as top level expressions
128               // can't have return values in inline assembly. `call` typically
129               // returns a 0 or 1 value indicated whether or not it reverted, but
130               // since we know it will always revert, we can safely ignore it.
131               pop(
132                   call(
133                       gas(),
134                       // address() has been changed to caller() to use the implementation of the Safe
135                       caller(),
136                       0,
137                       internalCalldata,
138                       calldatasize(),
139                       // The `simulateAndRevert` call always reverts, and
140                       // instead encodes whether or not it was successful in the return
141                       // data. The first 32-byte word of the return data contains the
142                       // `success` value, so write it to memory address 0x00 (which is
143                       // reserved Solidity scratch space and OK to use).
144                       0x00,
145                       0x20
146                   )
147               )
148   
149               // Allocate and copy the response bytes, making sure to increment
150               // the free memory pointer accordingly (in case this method is
151               // called as an internal function). The remaining `returndata[0x20:]`
152               // contains the ABI encoded response bytes, so we can just write it
153               // as is to memory.
154               let responseSize := sub(returndatasize(), 0x20)
155               response := mload(0x40)
156               mstore(0x40, add(response, responseSize))
157               returndatacopy(response, 0x20, responseSize)
158   
159               if iszero(mload(0x00)) { revert(add(response, 0x20), mload(response)) }
160:          }

```
*GitHub*: [115](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L115-L160)


### [D&#x2011;09] ~~Avoid updating storage when the value hasn't changed~~
The general rule is valid, but the instances below are invalid

*There are 2 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

97       function setRegistry(bytes32 _key, address _registry) external {
98           _onlyGov();
99           _ensureAddressProvider(_registry);
100  
101          if (registries[_key] != address(0)) revert RegistryAlreadyExists();
102          registries[_key] = _registry;
103  
104          emit RegistryInitialised(_registry, _key);
105:     }

```
*GitHub*: [97](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L97-L105)
```solidity
File: src/core/registries/WalletRegistry.sol

49       function registerSubAccount(address _wallet, address _subAccount) external {
50           if (msg.sender != AddressProviderService._getAuthorizedAddress(_SAFE_DEPLOYER_HASH)) revert InvalidSender();
51           if (subAccountToWallet[_subAccount] != address(0)) revert AlreadyRegistered();
52           subAccountToWallet[_subAccount] = _wallet;
53           walletToSubAccountList[_wallet].push(_subAccount);
54           emit RegisterSubAccount(_wallet, _subAccount);
55:      }

```
*GitHub*: [49](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L49-L55)


### [D&#x2011;10] ~~Bad bot rules~~
The titles below correspond to issues submitted by various bots, where the submitting bot solely submitted invalid findings (i.e. the submitter didn't filter the results of the rule), so they should be given extra scrutiny:
- **Max allowance is not compatible with all tokens** - internal approval for the contract's own balance, so the rule is pointing to the support **for** max allowance
- **increase/decrease allowance should be used instead of approve** - this is an internal approval function
- **Must approve or increase allowance first** - the rule is flagging all transferFrom() calls, without approval logic
- **Contract existence is not checked before low level call** - reading calldata, not making an external call
- **Empty function blocks** - the bot's removed the extensive comment documentation in the 'code blocks' it shows for these virtual functions used to allow child contracts to implement functionality, or are constructors
- **Utility contracts can be made into libraries** - all provided examples are invalid
- **Address values should be used through variables rather than used as literals** - none of the examples are of addresses
- **Employ Explicit Casting to Bytes or Bytes32 for Enhanced Code Clarity and Meaning** - the large majority of the examples are of multiple arguments, not just one
- **Some if-statement can be converted to a ternary** - you can't use a ternary when only one of the branches is a `return`
- **Addresses shouldn't be hard-coded** - none of these are addresses
- **State variables used within a function more than once should be cached to save gas** - none of these are state variables
- **Use storage instead of memory for structs/arrays** - these all are array call arguments, not arrays copied from storage
- **Use bitmap to save gas** - none of these are examples where bitmaps can be used
- **Consider merging sequential for loops** - the examples cannot be merged
- **Emitting storage values instead of the memory one.** - this is a gas finding, not a Low one
- **`selfbalance()` is cheaper than `address(this).balance`** - some bots submit the issue twice (under the heading `Use assembly when getting a contractundefineds balance of ETH`)
- **Imports could be organized more systematically** - a lot of bots are blindly checking for interfaces not coming first. That is not the only way of organizing imports, and most projects are doing it in a systematic, valid, way
- **Unused * definition** - some bots are reporting false positives for these rules. Check that it isn't used, or that if it's used, that there are two definitions, with one being unused
- **`internal` functions not called by the contract should be removed** - some bots are reporting false positives when the function is called by a child contract, rather than the defining contract
- **Change `public` to `external` for functions that are not called internally** - some bots are reporting false positives when the function is called by a child contract, rather than the defining contract
- **Avoid contract existence checks by using low level calls** - at least one bot isn't checking that the version is prior to 0.8.10
- **For Operations that will not overflow, you could use unchecked** - at least one bot is flagging every single line, which has nothing to do with using `unchecked`

Some of these have been raised as invalid in multiple contests, and the bot owners have not fixed them. Without penalties, they're unlikely to make any changes

*There is one instance of this issue:*

```solidity
File: src/libraries/TypeHashHelper.sol

5:   pragma solidity 0.8.19;

```
*GitHub*: [5](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L5-L5)


### [D&#x2011;11] ~~Cast to `bytes` or `bytes32` for clearer semantic meaning~~
These calls to `abi.encodePacked()` have more than one argument

*There are 5 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

70:          return keccak256(abi.encodePacked(bytes1(0x19), bytes1(0x01), safe.domainSeparator(), safeMessageHash));

```
*GitHub*: [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L70-L70)
```solidity
File: src/core/SafeDeployer.sol

254:         return uint256(keccak256(abi.encodePacked(_ownersHash, ownerSafeCount[_ownersHash]++, _salt, VERSION)));

```
*GitHub*: [254](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L254-L254)
```solidity
File: src/libraries/SafeHelper.sol

88           bytes memory signatures = abi.encodePacked(
89               bytes12(0), // Padding for signature verifier address
90               bytes20(owner), // Signature Verifier
91               bytes32(0), // Position of extra data bytes (last set of data)
92               bytes1(hex"01") // Signature Type - 1 (presigned transaction)
93:          );

```
*GitHub*: [88](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L88-L93)
```solidity
File: src/libraries/SafeHelper.sol

119              bytes memory encodedTxn = abi.encodePacked(
120                  bytes1(call), bytes20(_txns[i].target), bytes32(_txns[i].value), bytes32(calldataLength), _txns[i].data
121:             );

```
*GitHub*: [119](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L119-L121)
```solidity
File: src/libraries/SafeHelper.sol

125:                 packedTxns = abi.encodePacked(packedTxns, encodedTxn);

```
*GitHub*: [125](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L125-L125)


### [D&#x2011;12] ~~Change `public` function visibility to `external` to save gas~~
Both `public` and `external` functions use the same amount of gas (both deployment and runtime gas), so this finding is invalid

*There are 3 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

60:      function getMessageHash(bytes memory message) public view returns (bytes32) {

```
*GitHub*: [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L60-L60)
```solidity
File: src/core/SafeEnabler.sol

43:      function enableModule(address module) public {

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L43-L43)
```solidity
File: src/core/SafeEnabler.sol

66:      function setGuard(address guard) public {

```
*GitHub*: [66](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L66-L66)


### [D&#x2011;13] ~~Constant redefined elsewhere~~
Consider defining in only one contract so that values cannot become out of sync when only one location is updated. A [cheap way](https://medium.com/coinmonks/gas-cost-of-solidity-library-functions-dbe0cedd4678) to store constants in a single location is to create an `internal constant` in a `library`. If the variable is a local cache of another contract's value, consider making the cache variable internal or private, which will require external users to query the contract with the source of truth, so that callers don't get out of sync.

*There are 2 instances of this issue:*

```solidity
File: src/core/PolicyValidator.sol

/// @audit seen in src/core/ExecutorPlugin.sol 
26:       string private constant _NAME = "PolicyValidator";

/// @audit seen in src/core/ExecutorPlugin.sol 
28:       string private constant _VERSION = "1.0";

```
*GitHub*: [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L26), [28](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L28)


### [D&#x2011;14] ~~Constant redefined elsewhere~~
It's perfectly reasonable to split constants across multiple files, as long as they're appropriately scoped and not duplicated. This is especially true if the constants are members of libraries, which is the case for these constants.

*There are 6 instances of this issue:*

```solidity
File: src/libraries/SafeHelper.sol

23       uint256 internal constant _GUARD_STORAGE_SLOT =
24:          33528237782592280163068556224972516439282563014722366175641814928123294921928;

27       uint256 internal constant _FALLBACK_HANDLER_STORAGE_SLOT =
28:          49122629484629529244014240937346711770925847994644146912111677022347558721749;

37       bytes32 internal constant _GUARD_REMOVAL_CALLDATA_HASH =
38:          0xc0e2c16ecb99419a40dd8b9c0b339b27acebd27c481a28cd606927aeb86f5079;

47       bytes32 internal constant _FALLBACK_REMOVAL_CALLDATA_HASH =
48:          0x5bdf8c44c012c1347b2b15694dc5cc39b899eb99e32614676b7661001be925b7;

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L23-L24), [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L27-L28), [37](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L37-L38), [47](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L47-L48)
```solidity
File: src/libraries/TypeHashHelper.sol

49       bytes32 public constant TRANSACTION_PARAMS_TYPEHASH =
50:          0xfd4628b53a91b366f1977138e2eda53b93c8f5cc74bda8440f108d7da1e99290;

```
*GitHub*: [49](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L49-L50)
```solidity
File: src/libraries/TypeHashHelper.sol

56       bytes32 public constant VALIDATION_PARAMS_TYPEHASH =
57:          0x0c7f653e0f641e41fbb4ed1440c7d0b08b8d2a19e1c35cfc98de2d47519e15b1;

```
*GitHub*: [56](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L56-L57)


### [D&#x2011;15] ~~Contracts containing only utility functions should be made into libraries~~
Cannot be converted to a library because it has state variables

*There is one instance of this issue:*

```solidity
File: src/core/Constants.sol

13   abstract contract Constants {
14       /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
15       /*                        REGISTRIES                          */
16       /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
17:      /// @notice keccak256("ExecutorRegistry")

```
*GitHub*: [13](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L13-L17)


### [D&#x2011;16] ~~Contracts should have full test coverage~~
While 100% code coverage does not guarantee that there are no bugs, it often will catch easy-to-find bugs, and will ensure that there are fewer regressions when the code invariably has to be modified. Furthermore, in order to get full coverage, code authors will often have to re-organize their code so that it is more modular, so that each component can be tested separately, which reduces interdependencies between modules and layers, and makes for code that is easier to reason about and audit.

*There is one instance of this issue:*

```solidity
File: Various Files


```
*GitHub*: [various](https://github.com/code-423n4/2023-10-brahma/tree/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts)


### [D&#x2011;17] ~~Control structures do not follow the Solidity Style Guide~~
The instances below properly drop down to the next line when the arguments are too long

*There are 12 instances of this issue:*

```solidity
File: src/core/ExecutorPlugin.sol

138           // Validate executor signature
139           if (
140:              !SignatureCheckerLib.isValidSignatureNow(

```
*GitHub*: [138](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L138-L140)
```solidity
File: src/core/PolicyValidator.sol

53         */
54        function isPolicySignatureValid(
55:           address account,

```
*GitHub*: [53](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L53-L55)
```solidity
File: src/core/SafeModerator.sol

32         */
33        function checkTransaction(
34:           address to,

```
*GitHub*: [32](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L32-L34)
```solidity
File: src/core/SafeModerator.sol

79        /* solhint-disable no-empty-blocks */
80        function checkModuleTransaction(
81:           address, /* to */

```
*GitHub*: [79](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L79-L81)
```solidity
File: src/core/SafeModeratorOverridable.sol

38         */
39        function checkTransaction(
40:           address to,

```
*GitHub*: [38](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L38-L40)
```solidity
File: src/core/SafeModeratorOverridable.sol

85        /* solhint-disable no-empty-blocks */
86        function checkModuleTransaction(
87:           address, /* to */

```
*GitHub*: [85](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L85-L87)
```solidity
File: src/core/TransactionValidator.sol

118        */
119       function validatePreExecutorTransaction(
120:          address, /*msgSender */

```
*GitHub*: [118](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L118-L120)
```solidity
File: src/core/TransactionValidator.sol

148        */
149       function _isConsoleBeingOverriden(
150:          address _from,

```
*GitHub*: [148](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L148-L150)
```solidity
File: src/core/TransactionValidator.sol

209        */
210       function _validatePolicySignature(
211:          address _from,

```
*GitHub*: [209](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L209-L211)
```solidity
File: src/core/TransactionValidator.sol

217       ) internal view {
218           if (
219:              !PolicyValidator(AddressProviderService._getAuthorizedAddress(_POLICY_VALIDATOR_HASH)).isPolicySignatureValid(

```
*GitHub*: [217](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L217-L219)
```solidity
File: src/core/TransactionValidator.sol

237       {
238           if (
239:              !PolicyValidator(AddressProviderService._getAuthorizedAddress(_POLICY_VALIDATOR_HASH)).isPolicySignatureValid(

```
*GitHub*: [237](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L237-L239)
```solidity
File: src/core/registries/PolicyRegistry.sol

44            // solhint-disable no-empty-blocks
45            if (
46:               currentCommit == bytes32(0)

```
*GitHub*: [44](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L44-L46)


### [D&#x2011;18] ~~Default `bool` values are manually reset~~
Using delete instead of assigning zero/false to state variables does not save any extra gas with the optimizer [on](https://gist.github.com/IllIllI000/ef8ec3a70aede7f12433fe63dc418515#with-the-optimizer-set-at-200-runs) (saves 5-8 gas with optimizer completely off), so this finding is invalid, especially since if they were interested in gas savings, they'd have the optimizer enabled. Some bots are also flagging `true` rather than just `false`

*There is one instance of this issue:*

```solidity
File: src/core/registries/WalletRegistry.sol

38:          isWallet[msg.sender] = true;

```
*GitHub*: [38](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L38-L38)


### [D&#x2011;19] ~~Duplicated `require()`/`revert()` checks should be refactored to a modifier or function~~
This instance appears only once

*There are 4 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

44:               require(safe.signedMessages(messageHash) != 0, "Hash not approved");

51:               require(policyValidator.isPolicySignatureValid(msg.sender, messageHash, _signature), "Policy not approved");

```
*GitHub*: [44](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L44), [51](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L51)
```solidity
File: src/core/SafeEnabler.sol

48:           require(module != address(0) && module != _SENTINEL_MODULES, "GS101");

```
*GitHub*: [48](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L48)
```solidity
File: src/core/SafeEnabler.sol

52:           require(modules[module] == address(0), "GS102");

```
*GitHub*: [52](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L52)


### [D&#x2011;20] ~~Empty function body~~
These constructors have calls to base contracts, so the empty function body cannot be removed. Adding a comment about this is not useful.

*There are 10 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/ConsoleFallbackHandler.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L29-L29)
```solidity
File: src/core/ExecutorPlugin.sol

60:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L60-L60)
```solidity
File: src/core/PolicyValidator.sol

30:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [30](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L30-L30)
```solidity
File: src/core/SafeDeployer.sol

42:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [42](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L42-L42)
```solidity
File: src/core/SafeModerator.sol

17:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [17](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L17-L17)
```solidity
File: src/core/SafeModeratorOverridable.sol

23:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L23-L23)
```solidity
File: src/core/TransactionValidator.sol

54:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L54-L54)
```solidity
File: src/core/registries/ExecutorRegistry.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L29-L29)
```solidity
File: src/core/registries/PolicyRegistry.sol

24:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L24-L24)
```solidity
File: src/core/registries/WalletRegistry.sol

29:      constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L29-L29)
</details>





### [D&#x2011;21] ~~Event names should use CamelCase~~
The instances below are already CamelCase (events are supposed to use CamelCase, not lowerCamelCase)

*There are 15 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

21:      event RegistryInitialised(address indexed registry, bytes32 indexed key);

22:      event AuthorizedAddressInitialised(address indexed authorizedAddress, bytes32 indexed key);

23:      event GovernanceTransferRequested(address indexed previousGovernance, address indexed newGovernance);

24:      event GovernanceTransferred(address indexed previousGovernance, address indexed newGovernance);

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L21-L21), [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L22-L22), [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L23-L23), [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L24-L24)
```solidity
File: src/core/SafeDeployer.sol

32:      event SafeProxyCreationFailure(address indexed singleton, uint256 indexed nonce, bytes initializer);

```
*GitHub*: [32](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L32-L32)
```solidity
File: src/core/SafeDeployer.sol

33:      event ConsoleAccountDeployed(address indexed consoleAddress);

```
*GitHub*: [33](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L33-L33)
```solidity
File: src/core/SafeDeployer.sol

34:      event SubAccountDeployed(address indexed subAccountAddress, address indexed consoleAddress);

```
*GitHub*: [34](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L34-L34)
```solidity
File: src/core/SafeDeployer.sol

35:      event PreComputeAccount(address[] indexed owners, uint256 indexed threshold);

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L35-L35)
```solidity
File: src/core/SafeEnabler.sol

19:      event EnabledModule(address module);

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L19-L19)
```solidity
File: src/core/SafeEnabler.sol

20:      event ChangedGuard(address guard);

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L20-L20)
```solidity
File: src/core/registries/ExecutorRegistry.sol

23:      event RegisterExecutor(address indexed _subAccount, address indexed _owner, address indexed _executor);

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L23-L23)
```solidity
File: src/core/registries/ExecutorRegistry.sol

24:      event DeRegisterExecutor(address indexed _subAccount, address indexed _owner, address indexed _executor);

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L24-L24)
```solidity
File: src/core/registries/PolicyRegistry.sol

19:      event UpdatedPolicyCommit(address indexed account, bytes32 policyCommit, bytes32 oldPolicyCommit);

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L19-L19)
```solidity
File: src/core/registries/WalletRegistry.sol

19:      event RegisterWallet(address indexed wallet);

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L19-L19)
```solidity
File: src/core/registries/WalletRegistry.sol

20:      event RegisterSubAccount(address indexed wallet, address indexed subAccount);

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L20-L20)


### [D&#x2011;22] ~~Events that mark critical parameter changes should contain both the old and the new value~~
This should especially be done if the new value is not required to be different from the old value

*There are 2 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

/// @audit setGovernance()
55:           emit GovernanceTransferRequested(governance, _newGovernance);

```
*GitHub*: [55](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L55)
```solidity
File: src/core/registries/WalletRegistry.sol

/// @audit registerWallet()
39:           emit RegisterWallet(msg.sender);

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L39)


### [D&#x2011;23] ~~Events that mark critical parameter changes should contain both the old and the new value~~
These are not critical parameter changes

*There are 7 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

66:          emit GovernanceTransferred(governance, msg.sender);

```
*GitHub*: [66](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L66-L66)
```solidity
File: src/core/SafeDeployer.sol

70:          emit ConsoleAccountDeployed(_safe);

```
*GitHub*: [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L70-L70)
```solidity
File: src/core/SafeDeployer.sol

102:         emit SubAccountDeployed(_subAcc, msg.sender);

```
*GitHub*: [102](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L102-L102)
```solidity
File: src/core/SafeDeployer.sol

239:                 emit SafeProxyCreationFailure(gnosisSafeSingleton, nonce, _initializer);

```
*GitHub*: [239](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L239-L239)
```solidity
File: src/core/SafeEnabler.sol

55:          emit EnabledModule(module);

```
*GitHub*: [55](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L55-L55)
```solidity
File: src/core/registries/ExecutorRegistry.sol

58:          emit DeRegisterExecutor(_subAccount, msg.sender, _executor);

```
*GitHub*: [58](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L58-L58)
```solidity
File: src/core/registries/PolicyRegistry.sol

67:          emit UpdatedPolicyCommit(account, policyCommit, commitments[account]);

```
*GitHub*: [67](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L67-L67)


### [D&#x2011;24] ~~Inconsistent comment spacing~~
URLs are not comments

*There are 2 instances of this issue:*

```solidity
File: src/libraries/SafeHelper.sol

22:       /// @dev This refers to the storage slot where guard is stored in Safe's layout: https://github.com/safe-global/safe-contracts/blob/ff4c6761fbfae8ab8a94f36fd26bcfb2b5414eb1/contracts/base/GuardManager.sol#L77

26:       /// @dev This refers to the storage slot where fallback handler is stored in Safe's layout: https://github.com/safe-global/safe-contracts/blob/ff4c6761fbfae8ab8a94f36fd26bcfb2b5414eb1/contracts/base/FallbackManager.sol#L14

```
*GitHub*: [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L22), [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L26)


### [D&#x2011;25] ~~It is standard for all external and public functions to be override from an interface~~
According to the Solidity [docs](https://docs.soliditylang.org/en/v0.8.20/contracts.html#function-overriding), "Starting from Solidity 0.8.8, the `override` keyword is not required when overriding an interface function, except for the case where the function is defined in multiple bases", so while it may have been a requirement in the past, they're trying to change that. Paired with the advice of making all `public` and `external` functions a part of an `interface`, this finding would end up having all sponsors mark all `public`/`external` functions with `override`, making the keyword meaningless. It's better to use `override` only when something is actually being overridden.

*There are 10 instances of this issue:*

```solidity
File: src/core/AddressProviderService.sol

35:      function addressProviderTarget() external view override returns (address) {

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L35-L35)
```solidity
File: src/core/ConsoleFallbackHandler.sol

39:      function isValidSignature(bytes memory _data, bytes memory _signature) public view override returns (bytes4) {

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L39-L39)
```solidity
File: src/core/ExecutorPlugin.sol

159:     function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [159](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L159-L159)
```solidity
File: src/core/PolicyValidator.sol

174:     function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [174](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L174-L174)
```solidity
File: src/core/SafeModerator.sol

33       function checkTransaction(
34           address to,
35           uint256 value,
36           bytes memory data,
37           Enum.Operation operation,
38           uint256 safeTxGas,
39           uint256 baseGas,
40           uint256 gasPrice,
41           address gasToken,
42           address payable refundReceiver,
43           bytes memory signatures,
44           address msgSender
45:      ) external view override {

```
*GitHub*: [33](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L33-L45)
```solidity
File: src/core/SafeModerator.sol

70:      function checkAfterExecution(bytes32 txHash, bool success) external view override {

```
*GitHub*: [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L70-L70)
```solidity
File: src/core/SafeModerator.sol

80       function checkModuleTransaction(
81           address, /* to */
82           uint256, /* value */
83           bytes memory, /* data */
84           Enum.Operation, /* operation */
85           address /* module */
86:      ) external override {}

```
*GitHub*: [80](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L80-L86)
```solidity
File: src/core/SafeModeratorOverridable.sol

39       function checkTransaction(
40           address to,
41           uint256 value,
42           bytes memory data,
43           Enum.Operation operation,
44           uint256 safeTxGas,
45           uint256 baseGas,
46           uint256 gasPrice,
47           address gasToken,
48           address payable refundReceiver,
49           bytes memory signatures,
50           address msgSender
51:      ) external view override {

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L39-L51)
```solidity
File: src/core/SafeModeratorOverridable.sol

76:      function checkAfterExecution(bytes32 txHash, bool success) external view override {

```
*GitHub*: [76](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L76-L76)
```solidity
File: src/core/SafeModeratorOverridable.sol

86       function checkModuleTransaction(
87           address, /* to */
88           uint256, /* value */
89           bytes memory, /* data */
90           Enum.Operation, /* operation */
91           address /* module */
92:      ) external override {}

```
*GitHub*: [86](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L86-L92)


### [D&#x2011;26] ~~It's not standard to end and begin a code object on the same line~~
These are perfectly standard

*There are 44 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

7:   import {IAddressProviderService} from "interfaces/IAddressProviderService.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L7-L7)
```solidity
File: src/core/AddressProviderService.sol

7:   import {IAddressProviderService} from "../../interfaces/IAddressProviderService.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L7-L7)
```solidity
File: src/core/AddressProviderService.sol

8:   import {AddressProvider} from "../core/AddressProvider.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L8-L8)
```solidity
File: src/core/AddressProviderService.sol

9:   import {Constants} from "./Constants.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L9-L9)
```solidity
File: src/core/ConsoleFallbackHandler.sol

11:  import {AddressProviderService} from "./AddressProviderService.sol";

```
*GitHub*: [11](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L11-L11)
```solidity
File: src/core/ConsoleFallbackHandler.sol

12:  import {PolicyValidator} from "./PolicyValidator.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L12-L12)
```solidity
File: src/core/ExecutorPlugin.sol

7:   import {ReentrancyGuard} from "openzeppelin-contracts/security/ReentrancyGuard.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L7-L7)
```solidity
File: src/core/ExecutorPlugin.sol

8:   import {SignatureCheckerLib} from "solady/utils/SignatureCheckerLib.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L8-L8)
```solidity
File: src/core/ExecutorPlugin.sol

9:   import {EIP712} from "solady/utils/EIP712.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L9-L9)
```solidity
File: src/core/ExecutorPlugin.sol

10:  import {IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [10](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L10-L10)
```solidity
File: src/core/ExecutorPlugin.sol

11:  import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [11](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L11-L11)
```solidity
File: src/core/ExecutorPlugin.sol

12:  import {TransactionValidator} from "src/core/TransactionValidator.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L12-L12)
```solidity
File: src/core/ExecutorPlugin.sol

13:  import {ExecutorRegistry} from "src/core/registries/ExecutorRegistry.sol";

```
*GitHub*: [13](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L13-L13)
```solidity
File: src/core/ExecutorPlugin.sol

14:  import {SafeHelper} from "src/libraries/SafeHelper.sol";

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L14-L14)
```solidity
File: src/core/ExecutorPlugin.sol

15:  import {TypeHashHelper} from "src/libraries/TypeHashHelper.sol";

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L15-L15)
```solidity
File: src/core/ExecutorPlugin.sol

16:  import {Types} from "interfaces/Types.sol";

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L16-L16)
```solidity
File: src/core/PolicyValidator.sol

7:   import {SignatureCheckerLib} from "solady/utils/SignatureCheckerLib.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L7-L7)
```solidity
File: src/core/PolicyValidator.sol

8:   import {EIP712} from "solady/utils/EIP712.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L8-L8)
```solidity
File: src/core/PolicyValidator.sol

9:   import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L9-L9)
```solidity
File: src/core/PolicyValidator.sol

10:  import {PolicyRegistry} from "src/core/registries/PolicyRegistry.sol";

```
*GitHub*: [10](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L10-L10)
```solidity
File: src/core/PolicyValidator.sol

11:  import {TypeHashHelper} from "src/libraries/TypeHashHelper.sol";

```
*GitHub*: [11](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L11-L11)
```solidity
File: src/core/SafeDeployer.sol

7:   import {ReentrancyGuard} from "openzeppelin-contracts/security/ReentrancyGuard.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L7-L7)
```solidity
File: src/core/SafeDeployer.sol

8:   import {AddressProviderService} from "../core/AddressProviderService.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L8-L8)
```solidity
File: src/core/SafeDeployer.sol

9:   import {WalletRegistry} from "../core/registries/WalletRegistry.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L9-L9)
```solidity
File: src/core/SafeDeployer.sol

10:  import {PolicyRegistry} from "../core/registries/PolicyRegistry.sol";

```
*GitHub*: [10](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L10-L10)
```solidity
File: src/core/SafeDeployer.sol

11:  import {IGnosisProxyFactory} from "../../interfaces/external/IGnosisProxyFactory.sol";

```
*GitHub*: [11](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L11-L11)
```solidity
File: src/core/SafeDeployer.sol

12:  import {IGnosisSafe} from "../../interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L12-L12)
```solidity
File: src/core/SafeDeployer.sol

14:  import {IGnosisMultiSend} from "../../interfaces/external/IGnosisMultiSend.sol";

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L14-L14)
```solidity
File: src/core/SafeEnabler.sol

7:   import {GnosisSafeStorage} from "safe-contracts/examples/libraries/GnosisSafeStorage.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L7-L7)
```solidity
File: src/core/SafeModerator.sol

8:   import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L8-L8)
```solidity
File: src/core/SafeModerator.sol

9:   import {TransactionValidator} from "src/core/TransactionValidator.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L9-L9)
```solidity
File: src/core/SafeModeratorOverridable.sol

8:   import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L8-L8)
```solidity
File: src/core/SafeModeratorOverridable.sol

9:   import {TransactionValidator} from "src/core/TransactionValidator.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L9-L9)
```solidity
File: src/core/TransactionValidator.sol

8:   import {PolicyValidator} from "src/core/PolicyValidator.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L8-L8)
```solidity
File: src/core/TransactionValidator.sol

9:   import {SafeHelper} from "src/libraries/SafeHelper.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L9-L9)
```solidity
File: src/core/TransactionValidator.sol

10:  import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [10](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L10-L10)
```solidity
File: src/core/TransactionValidator.sol

11:  import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";

```
*GitHub*: [11](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L11-L11)
```solidity
File: src/core/registries/ExecutorRegistry.sol

7:   import {AddressProviderService} from "../AddressProviderService.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L7-L7)
```solidity
File: src/core/registries/ExecutorRegistry.sol

8:   import {WalletRegistry} from "./WalletRegistry.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L8-L8)
```solidity
File: src/core/registries/ExecutorRegistry.sol

9:   import {EnumerableSet} from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L9-L9)
```solidity
File: src/core/registries/PolicyRegistry.sol

7:   import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L7-L7)
```solidity
File: src/core/registries/PolicyRegistry.sol

8:   import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L8-L8)
```solidity
File: src/core/registries/WalletRegistry.sol

7:   import {AddressProviderService} from "../AddressProviderService.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L7-L7)
```solidity
File: src/libraries/SafeHelper.sol

8:   import {Types} from "interfaces/Types.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L8-L8)
</details>





### [D&#x2011;27] ~~Low level calls with Solidity before 0.8.14 result in an optimiser bug~~
This assembly block does not call `mstore()`, so it's not possible to hit the bug here even if there are small future changes, so this doesn't seem low severity.

*There is one instance of this issue:*

```solidity
File: src/core/SafeEnabler.sol

71           assembly {
72               sstore(slot, guard)
73:          }

```
*GitHub*: [71](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L71-L73)


### [D&#x2011;28] ~~Missing checks for state variable assignments~~
There _are_ checks for these variables

*There is one instance of this issue:*

```solidity
File: src/core/SafeEnabler.sol

54:          modules[_SENTINEL_MODULES] = module;

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L54-L54)


### [D&#x2011;29] ~~Missing contract-existence checks before low-level calls~~
The contract or caller exists, or it's a transfer of funds

*There is one instance of this issue:*

```solidity
File: src/core/ExecutorPlugin.sol

118              // Executor is an EOA and no executor signature is provided
119              revert InvalidSignature();
120          }
121  
122          // Build transaction struct hash
123          bytes32 _transactionStructHash = TypeHashHelper._buildTransactionStructHash(
124              TypeHashHelper.Transaction({
125                  to: execRequest.exec.target,
126                  value: execRequest.exec.value,
127                  data: execRequest.exec.data,
128                  operation: uint8(SafeHelper._parseOperationEnum(execRequest.exec.callType)),
129                  account: execRequest.account,
130                  executor: execRequest.executor,
131:                 nonce: executorNonce[execRequest.account][execRequest.executor]++

```
*GitHub*: [118](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L118-L131)


### [D&#x2011;30] ~~Missing contract-existence checks before yul `call()`~~
The general rule is valid, but the instances below are invalid

*There is one instance of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

115          assembly {
116              let internalCalldata := mload(0x40)
117              // Store `simulateAndRevert.selector`.
118              // String representation is used to force right padding
119              mstore(internalCalldata, "\xb4\xfa\xba\x09")
120              // Abuse the fact that both this and the internal methods have the
121              // same signature, and differ only in symbol name (and therefore,
122              // selector) and copy calldata directly. This saves us approximately
123              // 250 bytes of code and 300 gas at runtime over the
124              // `abi.encodeWithSelector` builtin.
125              calldatacopy(add(internalCalldata, 0x04), 0x04, sub(calldatasize(), 0x04))
126  
127              // `pop` is required here by the compiler, as top level expressions
128              // can't have return values in inline assembly. `call` typically
129              // returns a 0 or 1 value indicated whether or not it reverted, but
130              // since we know it will always revert, we can safely ignore it.
131              pop(
132                  call(
133                      gas(),
134                      // address() has been changed to caller() to use the implementation of the Safe
135                      caller(),
136                      0,
137                      internalCalldata,
138                      calldatasize(),
139                      // The `simulateAndRevert` call always reverts, and
140                      // instead encodes whether or not it was successful in the return
141                      // data. The first 32-byte word of the return data contains the
142                      // `success` value, so write it to memory address 0x00 (which is
143                      // reserved Solidity scratch space and OK to use).
144                      0x00,
145                      0x20
146                  )
147              )
148  
149              // Allocate and copy the response bytes, making sure to increment
150              // the free memory pointer accordingly (in case this method is
151              // called as an internal function). The remaining `returndata[0x20:]`
152              // contains the ABI encoded response bytes, so we can just write it
153              // as is to memory.
154              let responseSize := sub(returndatasize(), 0x20)
155              response := mload(0x40)
156              mstore(0x40, add(response, responseSize))
157              returndatacopy(response, 0x20, responseSize)
158  
159              if iszero(mload(0x00)) { revert(add(response, 0x20), mload(response)) }
160:         }

```
*GitHub*: [115](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L115-L160)


### [D&#x2011;31] ~~NatSpec: Contract declarations should have `@notice` tags~~
The compiler interprets `///` or `/**` comments [as this tag](https://docs.soliditylang.org/en/latest/natspec-format.html#tags) if one wasn't explicitly provided

*There are 16 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

14:  contract AddressProvider {

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L14-L14)
```solidity
File: src/core/AddressProviderService.sol

18:  abstract contract AddressProviderService is IAddressProviderService, Constants {

```
*GitHub*: [18](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L18-L18)
```solidity
File: src/core/ConsoleFallbackHandler.sol

20   contract ConsoleFallbackHandler is AddressProviderService, DefaultCallbackHandler, ISignatureValidator {
21:      //keccak256("SafeMessage(bytes message)");

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L20-L21)
```solidity
File: src/core/Constants.sol

13   abstract contract Constants {
14       /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
15       /*                        REGISTRIES                          */
16       /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
17:      /// @notice keccak256("ExecutorRegistry")

```
*GitHub*: [13](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L13-L17)
```solidity
File: src/core/ExecutorPlugin.sol

24:  contract ExecutorPlugin is AddressProviderService, ReentrancyGuard, EIP712 {

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L24-L24)
```solidity
File: src/core/PolicyValidator.sol

19:  contract PolicyValidator is AddressProviderService, EIP712 {

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L19-L19)
```solidity
File: src/core/SafeDeployer.sol

21   contract SafeDeployer is AddressProviderService, ReentrancyGuard {
22:      /// @notice version of safe deployer

```
*GitHub*: [21](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L21-L22)
```solidity
File: src/core/SafeEnabler.sol

16:  contract SafeEnabler is GnosisSafeStorage {

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L16-L16)
```solidity
File: src/core/SafeModerator.sol

16:  contract SafeModerator is AddressProviderService, IGuard {

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L16-L16)
```solidity
File: src/core/SafeModeratorOverridable.sol

16   contract SafeModeratorOverridable is AddressProviderService, IGuard {
17       /**
18        * @dev Token interface change used to bypass foundry coverage issue
19        * Refer https://github.com/foundry-rs/foundry/issues/5729
20:       */

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L16-L20)
```solidity
File: src/core/TransactionValidator.sol

18:  contract TransactionValidator is AddressProviderService {

```
*GitHub*: [18](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L18-L18)
```solidity
File: src/core/registries/ExecutorRegistry.sol

16:  contract ExecutorRegistry is AddressProviderService {

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L16-L16)
```solidity
File: src/core/registries/PolicyRegistry.sol

15:  contract PolicyRegistry is AddressProviderService {

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L15-L15)
```solidity
File: src/core/registries/WalletRegistry.sol

14:  contract WalletRegistry is AddressProviderService {

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L14-L14)
```solidity
File: src/libraries/SafeHelper.sol

15:  library SafeHelper {

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L15-L15)
```solidity
File: src/libraries/TypeHashHelper.sol

12   library TypeHashHelper {
13       /**
14        * @notice Structural representation of transaction details
15        * @param operation type of operation
16        * @param to address to send tx to
17        * @param account address of safe
18        * @param executor address of executor if executed via executor plugin, address(0) if executed via execTransaction
19        * @param value txn value
20        * @param nonce txn nonce
21        * @param data txn callData
22:       */

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L12-L22)
</details>





### [D&#x2011;32] ~~NatSpec: Function declarations should have `@notice` tags~~
The compiler interprets `///` or `/**` comments [as this tag](https://docs.soliditylang.org/en/latest/natspec-format.html#tags) if one wasn't explicitly provided

*There are 41 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

52:      function setGovernance(address _newGovernance) external {

62:      function acceptGovernance() external {

77:      function setAuthorizedAddress(bytes32 _key, address _authorizedAddress, bool _overrideCheck) external {

97:      function setRegistry(bytes32 _key, address _registry) external {

112:     function getAuthorizedAddress(bytes32 _key) external view returns (address) {

121:     function getRegistry(bytes32 _key) external view returns (address) {

```
*GitHub*: [52](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L52-L52), [62](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L62-L62), [77](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L77-L77), [97](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L97-L97), [112](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L112-L112), [121](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L121-L121)
```solidity
File: src/core/AddressProviderService.sol

35:      function addressProviderTarget() external view override returns (address) {

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L35-L35)
```solidity
File: src/core/ConsoleFallbackHandler.sol

39:      function isValidSignature(bytes memory _data, bytes memory _signature) public view override returns (bytes4) {

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L39-L39)
```solidity
File: src/core/ConsoleFallbackHandler.sol

60:      function getMessageHash(bytes memory message) public view returns (bytes32) {

```
*GitHub*: [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L60-L60)
```solidity
File: src/core/ConsoleFallbackHandler.sol

68:      function getMessageHashForSafe(GnosisSafe safe, bytes memory message) public view returns (bytes32) {

```
*GitHub*: [68](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L68-L68)
```solidity
File: src/core/ConsoleFallbackHandler.sol

83:      function isValidSignature(bytes32 _dataHash, bytes calldata _signature) external view returns (bytes4) {

```
*GitHub*: [83](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L83-L83)
```solidity
File: src/core/ConsoleFallbackHandler.sol

91:      function getModules() external view returns (address[] memory) {

```
*GitHub*: [91](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L91-L91)
```solidity
File: src/core/ConsoleFallbackHandler.sol

104      function simulate(address targetContract, bytes calldata calldataPayload)
105          external
106          returns (bytes memory response)
107:     {

```
*GitHub*: [104](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L104-L107)
```solidity
File: src/core/ExecutorPlugin.sol

68:      function executeTransaction(ExecutionRequest calldata execRequest) external nonReentrant returns (bytes memory) {

```
*GitHub*: [68](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L68-L68)
```solidity
File: src/core/PolicyValidator.sol

54       function isPolicySignatureValid(
55           address account,
56           address to,
57           uint256 value,
58           bytes memory data,
59           Enum.Operation operation,
60           bytes calldata signatures
61:      ) external view returns (bool) {

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L54-L61)
```solidity
File: src/core/PolicyValidator.sol

100      function isPolicySignatureValid(address account, bytes32 transactionStructHash, bytes calldata signatures)
101          public
102          view
103          returns (bool)
104:     {

```
*GitHub*: [100](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L100-L104)
```solidity
File: src/core/SafeDeployer.sol

56       function deployConsoleAccount(address[] calldata _owners, uint256 _threshold, bytes32 _policyCommit, bytes32 _salt)
57           external
58           nonReentrant
59           returns (address _safe)
60:      {

```
*GitHub*: [56](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L56-L60)
```solidity
File: src/core/SafeDeployer.sol

82       function deploySubAccount(address[] calldata _owners, uint256 _threshold, bytes32 _policyCommit, bytes32 _salt)
83           external
84           nonReentrant
85           returns (address _subAcc)
86:      {

```
*GitHub*: [82](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L82-L86)
```solidity
File: src/core/SafeEnabler.sol

43:      function enableModule(address module) public {

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L43-L43)
```solidity
File: src/core/SafeEnabler.sol

66:      function setGuard(address guard) public {

```
*GitHub*: [66](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L66-L66)
```solidity
File: src/core/SafeModerator.sol

33       function checkTransaction(
34           address to,
35           uint256 value,
36           bytes memory data,
37           Enum.Operation operation,
38           uint256 safeTxGas,
39           uint256 baseGas,
40           uint256 gasPrice,
41           address gasToken,
42           address payable refundReceiver,
43           bytes memory signatures,
44           address msgSender
45:      ) external view override {

```
*GitHub*: [33](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L33-L45)
```solidity
File: src/core/SafeModerator.sol

70:      function checkAfterExecution(bytes32 txHash, bool success) external view override {

```
*GitHub*: [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L70-L70)
```solidity
File: src/core/SafeModerator.sol

80       function checkModuleTransaction(
81           address, /* to */
82           uint256, /* value */
83           bytes memory, /* data */
84           Enum.Operation, /* operation */
85           address /* module */
86:      ) external override {}

```
*GitHub*: [80](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L80-L86)
```solidity
File: src/core/SafeModeratorOverridable.sol

39       function checkTransaction(
40           address to,
41           uint256 value,
42           bytes memory data,
43           Enum.Operation operation,
44           uint256 safeTxGas,
45           uint256 baseGas,
46           uint256 gasPrice,
47           address gasToken,
48           address payable refundReceiver,
49           bytes memory signatures,
50           address msgSender
51:      ) external view override {

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L39-L51)
```solidity
File: src/core/SafeModeratorOverridable.sol

76:      function checkAfterExecution(bytes32 txHash, bool success) external view override {

```
*GitHub*: [76](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L76-L76)
```solidity
File: src/core/SafeModeratorOverridable.sol

86       function checkModuleTransaction(
87           address, /* to */
88           uint256, /* value */
89           bytes memory, /* data */
90           Enum.Operation, /* operation */
91           address /* module */
92:      ) external override {}

```
*GitHub*: [86](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L86-L92)
```solidity
File: src/core/TransactionValidator.sol

64:      function validatePreTransactionOverridable(SafeTransactionParams memory txParams) external view {

```
*GitHub*: [64](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L64-L64)
```solidity
File: src/core/TransactionValidator.sol

81       function validatePostTransactionOverridable(bytes32, /*txHash */ bool, /*success */ address /*console */ )
82           external
83           view
84:      {}

```
*GitHub*: [81](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L81-L84)
```solidity
File: src/core/TransactionValidator.sol

95:      function validatePreTransaction(SafeTransactionParams memory txParams) external view {

```
*GitHub*: [95](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L95-L95)
```solidity
File: src/core/TransactionValidator.sol

105:     function validatePostTransaction(bytes32, /*txHash */ bool, /*success */ address subAccount) external view {

```
*GitHub*: [105](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L105-L105)
```solidity
File: src/core/TransactionValidator.sol

119      function validatePreExecutorTransaction(
120          address, /*msgSender */
121          address from,
122          bytes32 transactionStructHash,
123          bytes memory signatures
124:     ) external view {

```
*GitHub*: [119](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L119-L124)
```solidity
File: src/core/TransactionValidator.sol

132:     function validatePostExecutorTransaction(address, /*msgSender */ address subAccount) external view {

```
*GitHub*: [132](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L132-L132)
```solidity
File: src/core/registries/ExecutorRegistry.sol

38:      function registerExecutor(address _subAccount, address _executor) external {

```
*GitHub*: [38](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L38-L38)
```solidity
File: src/core/registries/ExecutorRegistry.sol

53:      function deRegisterExecutor(address _subAccount, address _executor) external {

```
*GitHub*: [53](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L53-L53)
```solidity
File: src/core/registries/ExecutorRegistry.sol

67:      function isExecutor(address _subAccount, address _executor) external view returns (bool) {

```
*GitHub*: [67](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L67-L67)
```solidity
File: src/core/registries/ExecutorRegistry.sol

75:      function getExecutorsForSubAccount(address _subAccount) external view returns (address[] memory) {

```
*GitHub*: [75](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L75-L75)
```solidity
File: src/core/registries/PolicyRegistry.sol

35:      function updatePolicy(address account, bytes32 policyCommit) external {

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L35-L35)
```solidity
File: src/core/registries/WalletRegistry.sol

35:      function registerWallet() external {

```
*GitHub*: [35](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L35-L35)
```solidity
File: src/core/registries/WalletRegistry.sol

49:      function registerSubAccount(address _wallet, address _subAccount) external {

```
*GitHub*: [49](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L49-L49)
```solidity
File: src/core/registries/WalletRegistry.sol

63:      function getSubAccountsForWallet(address _wallet) external view returns (address[] memory) {

```
*GitHub*: [63](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L63-L63)
```solidity
File: src/core/registries/WalletRegistry.sol

73:      function isOwner(address _wallet, address _subAccount) external view returns (bool) {

```
*GitHub*: [73](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L73-L73)
</details>





### [D&#x2011;33] ~~NatSpec: Invalid comment style~~
This isn't attempting to be NatSpec

*There are 7 instances of this issue:*

```solidity
File: src/core/AddressProviderService.sol

24:       // solhint-disable-next-line immutable-vars-naming

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L24)
```solidity
File: src/core/ConsoleFallbackHandler.sol

114:          // solhint-disable-next-line no-inline-assembly

```
*GitHub*: [114](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L114)
```solidity
File: src/core/SafeEnabler.sol

47:           // solhint-disable-next-line custom-errors

```
*GitHub*: [47](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L47)
```solidity
File: src/core/SafeEnabler.sol

51:           // solhint-disable-next-line custom-errors

```
*GitHub*: [51](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L51)
```solidity
File: src/core/SafeEnabler.sol

70:           // solhint-disable-next-line no-inline-assembly

```
*GitHub*: [70](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L70)
```solidity
File: src/core/registries/PolicyRegistry.sol

44:           // solhint-disable no-empty-blocks

```
*GitHub*: [44](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L44)
```solidity
File: src/core/registries/PolicyRegistry.sol

57:           // solhint-enable no-empty-blocks

```
*GitHub*: [57](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L57)


### [D&#x2011;34] ~~Nesting `if`-statements is cheaper than using `&&`~~
Nesting when there's an `else`-block uses _more_ gas, not less

*There are 2 instances of this issue:*

```solidity
File: src/core/registries/PolicyRegistry.sol

45           if (
46               currentCommit == bytes32(0)
47                   && msg.sender == AddressProviderService._getAuthorizedAddress(_SAFE_DEPLOYER_HASH)
48           ) {
49               // In case invoker is safe  deployer
50           } else if (walletRegistry.isOwner(msg.sender, account)) {
51               //In case invoker is updating on behalf of sub account
52           } else if (msg.sender == account && walletRegistry.isWallet(account)) {
53               // In case invoker is a registered wallet
54           } else {
55               revert UnauthorizedPolicyUpdate();
56:          }

52           } else if (msg.sender == account && walletRegistry.isWallet(account)) {
53               // In case invoker is a registered wallet
54           } else {
55               revert UnauthorizedPolicyUpdate();
56:          }

```
*GitHub*: [45](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L45-L56), [52](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L52-L56)


### [D&#x2011;35] ~~Non-assembly method available~~
The `revert()` here is too immeshed in the assembly block to feasibly refactor it into a normal revert statement

*There is one instance of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

/// @audit `return()`
115          assembly {
116              let internalCalldata := mload(0x40)
117              // Store `simulateAndRevert.selector`.
118              // String representation is used to force right padding
119              mstore(internalCalldata, "\xb4\xfa\xba\x09")
120              // Abuse the fact that both this and the internal methods have the
121              // same signature, and differ only in symbol name (and therefore,
122              // selector) and copy calldata directly. This saves us approximately
123              // 250 bytes of code and 300 gas at runtime over the
124              // `abi.encodeWithSelector` builtin.
125              calldatacopy(add(internalCalldata, 0x04), 0x04, sub(calldatasize(), 0x04))
126  
127              // `pop` is required here by the compiler, as top level expressions
128              // can't have return values in inline assembly. `call` typically
129              // returns a 0 or 1 value indicated whether or not it reverted, but
130              // since we know it will always revert, we can safely ignore it.
131              pop(
132                  call(
133                      gas(),
134                      // address() has been changed to caller() to use the implementation of the Safe
135                      caller(),
136                      0,
137                      internalCalldata,
138                      calldatasize(),
139                      // The `simulateAndRevert` call always reverts, and
140                      // instead encodes whether or not it was successful in the return
141                      // data. The first 32-byte word of the return data contains the
142                      // `success` value, so write it to memory address 0x00 (which is
143                      // reserved Solidity scratch space and OK to use).
144                      0x00,
145                      0x20
146                  )
147              )
148  
149              // Allocate and copy the response bytes, making sure to increment
150              // the free memory pointer accordingly (in case this method is
151              // called as an internal function). The remaining `returndata[0x20:]`
152              // contains the ABI encoded response bytes, so we can just write it
153              // as is to memory.
154              let responseSize := sub(returndatasize(), 0x20)
155              response := mload(0x40)
156              mstore(0x40, add(response, responseSize))
157              returndatacopy(response, 0x20, responseSize)
158  
159              if iszero(mload(0x00)) { revert(add(response, 0x20), mload(response)) }
160:         }

```
*GitHub*: [115](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L115-L160)


### [D&#x2011;36] ~~Not initializing local variables to zero saves gas~~
This is only true for state variables, and does not save gas for [local variables](https://gist.github.com/IllIllI000/e075d189c1b23dce256cd166e28f3397). The examples below are for local variables and therefore do not save gas, and are invalid.

*There is one instance of this issue:*

```solidity
File: src/libraries/SafeHelper.sol

107:         uint256 i = 0;

```
*GitHub*: [107](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L107-L107)


### [D&#x2011;37] ~~Not using the named return variables anywhere in the function is confusing~~
The variable is in fact used, so the instances below are invalid

*There is one instance of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

/// @audit response
106:         returns (bytes memory response)

```
*GitHub*: [106](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L106-L106)


### [D&#x2011;38] ~~Overly complicated arithmetic~~
At least one bot is incorrectly flagging code comments as 'complicated arithmetic'

*There are 41 instances of this issue:*

```solidity
File: src/core/Constants.sol

14:       /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/

15:       /*                        REGISTRIES                          */

16:       /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

27:       /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/

28:       /*                          CORE                              */

29:       /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

78:       /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/

79:       /*                          ROLES                             */

80:       /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L14), [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L15), [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L16), [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L27), [28](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L28), [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L29), [78](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L78), [79](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L79), [80](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L80)
```solidity
File: src/core/SafeModerator.sol

79:       /* solhint-disable no-empty-blocks */

```
*GitHub*: [79](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L79)
```solidity
File: src/core/SafeModerator.sol

81:           address, /* to */

```
*GitHub*: [81](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L81)
```solidity
File: src/core/SafeModerator.sol

82:           uint256, /* value */

```
*GitHub*: [82](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L82)
```solidity
File: src/core/SafeModerator.sol

83:           bytes memory, /* data */

```
*GitHub*: [83](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L83)
```solidity
File: src/core/SafeModerator.sol

84:           Enum.Operation, /* operation */

```
*GitHub*: [84](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L84)
```solidity
File: src/core/SafeModerator.sol

85:           address /* module */

```
*GitHub*: [85](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L85)
```solidity
File: src/core/SafeModerator.sol

87:       /* solhint-enable no-empty-blocks */

```
*GitHub*: [87](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L87)
```solidity
File: src/core/SafeModeratorOverridable.sol

85:       /* solhint-disable no-empty-blocks */

```
*GitHub*: [85](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L85)
```solidity
File: src/core/SafeModeratorOverridable.sol

87:           address, /* to */

```
*GitHub*: [87](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L87)
```solidity
File: src/core/SafeModeratorOverridable.sol

88:           uint256, /* value */

```
*GitHub*: [88](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L88)
```solidity
File: src/core/SafeModeratorOverridable.sol

89:           bytes memory, /* data */

```
*GitHub*: [89](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L89)
```solidity
File: src/core/SafeModeratorOverridable.sol

90:           Enum.Operation, /* operation */

```
*GitHub*: [90](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L90)
```solidity
File: src/core/SafeModeratorOverridable.sol

91:           address /* module */

```
*GitHub*: [91](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L91)
```solidity
File: src/core/SafeModeratorOverridable.sol

93:       /* solhint-enable no-empty-blocks */

```
*GitHub*: [93](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L93)
```solidity
File: src/core/TransactionValidator.sol

56:       /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/

```
*GitHub*: [56](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L56)
```solidity
File: src/core/TransactionValidator.sol

57:       /*                   CONSOLE GUARD HOOKS                      */

```
*GitHub*: [57](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L57)
```solidity
File: src/core/TransactionValidator.sol

58:       /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

```
*GitHub*: [58](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L58)
```solidity
File: src/core/TransactionValidator.sol

76:       /* solhint-disable no-empty-blocks */

```
*GitHub*: [76](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L76)
```solidity
File: src/core/TransactionValidator.sol

81:       function validatePostTransactionOverridable(bytes32, /*txHash */ bool, /*success */ address /*console */ )

```
*GitHub*: [81](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L81)
```solidity
File: src/core/TransactionValidator.sol

85:       /* solhint-enable no-empty-blocks */

```
*GitHub*: [85](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L85)
```solidity
File: src/core/TransactionValidator.sol

87:       /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/

```
*GitHub*: [87](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L87)
```solidity
File: src/core/TransactionValidator.sol

88:       /*                   SUBACCOUNT GUARD HOOKS                   */

```
*GitHub*: [88](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L88)
```solidity
File: src/core/TransactionValidator.sol

89:       /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

```
*GitHub*: [89](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L89)
```solidity
File: src/core/TransactionValidator.sol

105:      function validatePostTransaction(bytes32, /*txHash */ bool, /*success */ address subAccount) external view {

```
*GitHub*: [105](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L105)
```solidity
File: src/core/TransactionValidator.sol

109:      /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/

```
*GitHub*: [109](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L109)
```solidity
File: src/core/TransactionValidator.sol

110:      /*                   EXECUTOR PLUGIN GUARD HOOKS              */

```
*GitHub*: [110](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L110)
```solidity
File: src/core/TransactionValidator.sol

111:      /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

```
*GitHub*: [111](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L111)
```solidity
File: src/core/TransactionValidator.sol

120:          address, /*msgSender */

```
*GitHub*: [120](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L120)
```solidity
File: src/core/TransactionValidator.sol

132:      function validatePostExecutorTransaction(address, /*msgSender */ address subAccount) external view {

```
*GitHub*: [132](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L132)
```solidity
File: src/core/TransactionValidator.sol

136:      /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/

```
*GitHub*: [136](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L136)
```solidity
File: src/core/TransactionValidator.sol

137:      /*                   INTERNAL METHODS                         */

```
*GitHub*: [137](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L137)
```solidity
File: src/core/TransactionValidator.sol

138:      /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

```
*GitHub*: [138](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L138)


### [D&#x2011;39] ~~Public functions not used internally can be marked as external to save gas~~
After Solidity version 0.6.9 both `public` and `external` functions save the [same amount of gas](https://ethereum.stackexchange.com/a/107939), and since these files are >0.6.9, these findings are invalid

*There are 4 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

39:       function isValidSignature(bytes memory _data, bytes memory _signature) public view override returns (bytes4) {

60:       function getMessageHash(bytes memory message) public view returns (bytes32) {

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L39), [60](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L60)
```solidity
File: src/core/SafeEnabler.sol

43:       function enableModule(address module) public {

```
*GitHub*: [43](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L43)
```solidity
File: src/core/SafeEnabler.sol

66:       function setGuard(address guard) public {

```
*GitHub*: [66](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L66)


### [D&#x2011;40] ~~Save gas with the use of specific import statements~~
Importing whole files rather than specific identifiers [does not waste gas](https://ethereum.stackexchange.com/questions/138876/does-solidity-optimizer-eliminate-unused-internal-functions-of-libraries), so this finding is invalid

*There are 3 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

7:   import "safe-contracts/handler/DefaultCallbackHandler.sol";

8:   import "safe-contracts/interfaces/ISignatureValidator.sol";

9:   import "safe-contracts/GnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L7-L7), [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L8-L8), [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L9-L9)


### [D&#x2011;41] ~~Setters should prevent re-setting of the same value~~
The general rule is valid, but the instances below are invalid

*There are 2 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

97       function setRegistry(bytes32 _key, address _registry) external {
98           _onlyGov();
99           _ensureAddressProvider(_registry);
100  
101          if (registries[_key] != address(0)) revert RegistryAlreadyExists();
102          registries[_key] = _registry;
103  
104          emit RegistryInitialised(_registry, _key);
105:     }

```
*GitHub*: [97](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L97-L105)
```solidity
File: src/core/registries/WalletRegistry.sol

49       function registerSubAccount(address _wallet, address _subAccount) external {
50           if (msg.sender != AddressProviderService._getAuthorizedAddress(_SAFE_DEPLOYER_HASH)) revert InvalidSender();
51           if (subAccountToWallet[_subAccount] != address(0)) revert AlreadyRegistered();
52           subAccountToWallet[_subAccount] = _wallet;
53           walletToSubAccountList[_wallet].push(_subAccount);
54           emit RegisterSubAccount(_wallet, _subAccount);
55:      }

```
*GitHub*: [49](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L49-L55)


### [D&#x2011;42] ~~Shorten the array rather than copying to a new one~~
None of these examples are of filtering out entries from an array.

*There is one instance of this issue:*

```solidity
File: src/core/SafeDeployer.sol

174          Types.Executable[] memory txns = new Types.Executable[](2);
175  
176          // Enable Brhma Console account as module on sub Account
177:         txns[0] = Types.Executable({

```
*GitHub*: [174](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L174-L177)


### [D&#x2011;43] ~~SPDX identifier should be the in the first line of a solidity file~~
It's already on the first line

*There are 16 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L1)
```solidity
File: src/core/AddressProviderService.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L1)
```solidity
File: src/core/ConsoleFallbackHandler.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L1)
```solidity
File: src/core/Constants.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L1)
```solidity
File: src/core/ExecutorPlugin.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L1)
```solidity
File: src/core/PolicyValidator.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L1)
```solidity
File: src/core/SafeDeployer.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L1)
```solidity
File: src/core/SafeEnabler.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L1)
```solidity
File: src/core/SafeModerator.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L1)
```solidity
File: src/core/SafeModeratorOverridable.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L1)
```solidity
File: src/core/TransactionValidator.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L1)
```solidity
File: src/core/registries/ExecutorRegistry.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L1)
```solidity
File: src/core/registries/PolicyRegistry.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L1)
```solidity
File: src/core/registries/WalletRegistry.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L1)
```solidity
File: src/libraries/SafeHelper.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L1)
```solidity
File: src/libraries/TypeHashHelper.sol

1:    /// SPDX-License-Identifier: BUSL-1.1

```
*GitHub*: [1](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L1)
</details>





### [D&#x2011;44] ~~State variables should be cached in stack variables rather than re-reading them from storage~~
The instances below point to the second+ access of a state variable within a function. Caching of a state variable replaces each Gwarmaccess (**100 gas**) with a much cheaper stack read. Other less obvious fixes/optimizations include having local memory caches of state variable structs, or having local caches of state variable contracts/addresses.

*There is one instance of this issue:*

```solidity
File: src/core/AddressProvider.sol

/// @audit pendingGovernance on line 63
68:           delete pendingGovernance;

```
*GitHub*: [68](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L68)


### [D&#x2011;45] ~~Storage Write Removal Bug On Conditional Early Termination~~
In solidity versions 0.8.13 through 0.8.16, there is a [bug](https://blog.soliditylang.org/2022/09/08/storage-write-removal-before-conditional-termination/) involving the use of the Yul functions `return()` and `stop()`. If those functions aren't called, or if the Solidity version doesn't match, the finding is not low severity.

*There are 2 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

115          assembly {
116              let internalCalldata := mload(0x40)
117              // Store `simulateAndRevert.selector`.
118              // String representation is used to force right padding
119              mstore(internalCalldata, "\xb4\xfa\xba\x09")
120              // Abuse the fact that both this and the internal methods have the
121              // same signature, and differ only in symbol name (and therefore,
122              // selector) and copy calldata directly. This saves us approximately
123              // 250 bytes of code and 300 gas at runtime over the
124              // `abi.encodeWithSelector` builtin.
125              calldatacopy(add(internalCalldata, 0x04), 0x04, sub(calldatasize(), 0x04))
126  
127              // `pop` is required here by the compiler, as top level expressions
128              // can't have return values in inline assembly. `call` typically
129              // returns a 0 or 1 value indicated whether or not it reverted, but
130              // since we know it will always revert, we can safely ignore it.
131              pop(
132                  call(
133                      gas(),
134                      // address() has been changed to caller() to use the implementation of the Safe
135                      caller(),
136                      0,
137                      internalCalldata,
138                      calldatasize(),
139                      // The `simulateAndRevert` call always reverts, and
140                      // instead encodes whether or not it was successful in the return
141                      // data. The first 32-byte word of the return data contains the
142                      // `success` value, so write it to memory address 0x00 (which is
143                      // reserved Solidity scratch space and OK to use).
144                      0x00,
145                      0x20
146                  )
147              )
148  
149              // Allocate and copy the response bytes, making sure to increment
150              // the free memory pointer accordingly (in case this method is
151              // called as an internal function). The remaining `returndata[0x20:]`
152              // contains the ABI encoded response bytes, so we can just write it
153              // as is to memory.
154              let responseSize := sub(returndatasize(), 0x20)
155              response := mload(0x40)
156              mstore(0x40, add(response, responseSize))
157              returndatacopy(response, 0x20, responseSize)
158  
159              if iszero(mload(0x00)) { revert(add(response, 0x20), mload(response)) }
160:         }

```
*GitHub*: [115](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L115-L160)
```solidity
File: src/core/SafeEnabler.sol

71           assembly {
72               sstore(slot, guard)
73:          }

```
*GitHub*: [71](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L71-L73)


### [D&#x2011;46] ~~Style guide: Contract does not follow the Solidity style guide's suggested layout ordering~~
There are no issues with contract layout in these contracts

*There are 10 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProviderService.sol

18:   abstract contract AddressProviderService is IAddressProviderService, Constants {

```
*GitHub*: [18](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L18)
```solidity
File: src/core/ConsoleFallbackHandler.sol

20:   contract ConsoleFallbackHandler is AddressProviderService, DefaultCallbackHandler, ISignatureValidator {

```
*GitHub*: [20](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L20)
```solidity
File: src/core/Constants.sol

13:   abstract contract Constants {

```
*GitHub*: [13](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L13)
```solidity
File: src/core/ExecutorPlugin.sol

24:   contract ExecutorPlugin is AddressProviderService, ReentrancyGuard, EIP712 {

```
*GitHub*: [24](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L24)
```solidity
File: src/core/PolicyValidator.sol

19:   contract PolicyValidator is AddressProviderService, EIP712 {

```
*GitHub*: [19](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L19)
```solidity
File: src/core/SafeModerator.sol

16:   contract SafeModerator is AddressProviderService, IGuard {

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L16)
```solidity
File: src/core/SafeModeratorOverridable.sol

16:   contract SafeModeratorOverridable is AddressProviderService, IGuard {

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L16)
```solidity
File: src/core/TransactionValidator.sol

18:   contract TransactionValidator is AddressProviderService {

```
*GitHub*: [18](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L18)
```solidity
File: src/libraries/SafeHelper.sol

15:   library SafeHelper {

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L15)
```solidity
File: src/libraries/TypeHashHelper.sol

12:   library TypeHashHelper {

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L12)
</details>





### [D&#x2011;47] ~~Style guide: Function Names Not in mixedCase~~
According to the Solidity Style Guide, non-`external`/`public` function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables), and all of these fall into that category

*There are 22 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

130:     function _ensureAddressProvider(address _newAddress) internal view {

139:     function _onlyGov() internal view {

147:     function _notNull(address addr) internal pure {

```
*GitHub*: [130](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L130-L130), [139](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L139-L139), [147](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L147-L147)
```solidity
File: src/core/AddressProviderService.sol

44:      function _getRegistry(bytes32 _key) internal view returns (address registry) {

```
*GitHub*: [44](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L44-L44)
```solidity
File: src/core/AddressProviderService.sol

54:      function _getAuthorizedAddress(bytes32 _key) internal view returns (address authorizedAddress) {

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L54-L54)
```solidity
File: src/core/AddressProviderService.sol

62:      function _onlyGov() internal view {

```
*GitHub*: [62](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L62-L62)
```solidity
File: src/core/AddressProviderService.sol

72:      function _notNull(address _addr) internal pure {

```
*GitHub*: [72](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L72-L72)
```solidity
File: src/core/ExecutorPlugin.sol

86       function _executeTxnAsModule(address _account, Types.Executable memory _executable)
87           internal
88           returns (bytes memory)
89:      {

```
*GitHub*: [86](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L86-L89)
```solidity
File: src/core/ExecutorPlugin.sol

106:     function _validateExecutionRequest(ExecutionRequest calldata execRequest) internal {

```
*GitHub*: [106](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L106-L106)
```solidity
File: src/core/ExecutorPlugin.sol

159:     function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [159](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L159-L159)
```solidity
File: src/core/PolicyValidator.sol

156      function _decompileSignatures(bytes calldata _signatures)
157          internal
158          pure
159          returns (uint32 expiryEpoch, bytes memory validatorSignature)
160:     {

```
*GitHub*: [156](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L156-L160)
```solidity
File: src/core/PolicyValidator.sol

174:     function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [174](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L174-L174)
```solidity
File: src/core/SafeDeployer.sol

110      function _setupConsoleAccount(address[] memory _owners, uint256 _threshold, bool _policyHashValid)
111          private
112          view
113          returns (bytes memory)
114:     {

```
*GitHub*: [110](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L110-L114)
```solidity
File: src/core/SafeDeployer.sol

168      function _setupSubAccount(address[] memory _owners, uint256 _threshold, address _consoleAccount)
169          private
170          view
171          returns (bytes memory)
172:     {

```
*GitHub*: [168](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L168-L172)
```solidity
File: src/core/SafeDeployer.sol

219      function _createSafe(address[] calldata _owners, bytes memory _initializer, bytes32 _salt)
220          private
221          returns (address _safe)
222:     {

```
*GitHub*: [219](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L219-L222)
```solidity
File: src/core/SafeDeployer.sol

253:     function _genNonce(bytes32 _ownersHash, bytes32 _salt) private returns (uint256) {

```
*GitHub*: [253](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L253-L253)
```solidity
File: src/core/SafeEnabler.sol

81:      function _onlyDelegateCall() private view {

```
*GitHub*: [81](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L81-L81)
```solidity
File: src/core/TransactionValidator.sol

149      function _isConsoleBeingOverriden(
150          address _from,
151          address _to,
152          uint256 _value,
153          bytes memory _data,
154          Enum.Operation _operation
155:     ) internal pure returns (bool) {

```
*GitHub*: [149](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L149-L155)
```solidity
File: src/core/TransactionValidator.sol

181:     function _checkSubAccountSecurityConfig(address _subAccount) internal view {

```
*GitHub*: [181](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L181-L181)
```solidity
File: src/core/TransactionValidator.sol

210      function _validatePolicySignature(
211          address _from,
212          address _to,
213          uint256 _value,
214          bytes memory _data,
215          Enum.Operation _operation,
216          bytes memory _signatures
217:     ) internal view {

```
*GitHub*: [210](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L210-L217)
```solidity
File: src/core/TransactionValidator.sol

234      function _validatePolicySignature(address _from, bytes32 _transactionStructHash, bytes memory _signatures)
235          internal
236          view
237:     {

```
*GitHub*: [234](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L234-L237)
```solidity
File: src/core/registries/PolicyRegistry.sol

66:      function _updatePolicy(address account, bytes32 policyCommit) internal {

```
*GitHub*: [66](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L66-L66)
</details>





### [D&#x2011;48] ~~Timestamp may be manipulation~~
Use of `block.timestamp`, in and of itself, is not evidence of an issue; there must be an incorrect usage in the code in order for there to be a vulnerability. There should also be a corresponding suggested fix.

*There is one instance of this issue:*

```solidity
File: src/core/PolicyValidator.sol

116:         if (expiryEpoch < uint32(block.timestamp)) {

```
*GitHub*: [116](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L116-L116)


### [D&#x2011;49] ~~Unsafe downcast~~
When a type is downcast to a smaller type, the higher order bits are truncated, effectively applying a modulo to the original value. Without any other checks, this wrapping will lead to unexpected behavior and bugs

*There are 3 instances of this issue:*

```solidity
File: src/core/ExecutorPlugin.sol

/// @audit uint8
128:                  operation: uint8(SafeHelper._parseOperationEnum(execRequest.exec.callType)),

```
*GitHub*: [128](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L128)
```solidity
File: src/libraries/SafeHelper.sol

/// @audit uint8
110:              uint8 call = uint8(Enum.Operation.Call);

```
*GitHub*: [110](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L110)
```solidity
File: src/libraries/SafeHelper.sol

/// @audit uint8
112:                  call = uint8(Enum.Operation.DelegateCall);

```
*GitHub*: [112](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L112)


### [D&#x2011;50] ~~Unused `struct` definition~~
These structs are used outside of the defining contract

*There are 3 instances of this issue:*

```solidity
File: src/core/TransactionValidator.sol

39       struct SafeTransactionParams {
40           Enum.Operation operation;
41           address from;
42           address to;
43           address payable refundReceiver;
44           address gasToken;
45           address msgSender;
46           uint256 value;
47           uint256 safeTxGas;
48           uint256 baseGas;
49           uint256 gasPrice;
50           bytes data;
51           bytes signatures;
52:      }

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L39-L52)
```solidity
File: src/libraries/TypeHashHelper.sol

23       struct Transaction {
24           uint8 operation;
25           address to;
26           address account;
27           address executor;
28           uint256 value;
29           uint256 nonce;
30           bytes data;
31:      }

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L23-L31)
```solidity
File: src/libraries/TypeHashHelper.sol

39       struct Validation {
40           uint32 expiryEpoch;
41           bytes32 transactionStructHash;
42           bytes32 policyHash;
43:      }

```
*GitHub*: [39](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/TypeHashHelper.sol#L39-L43)


### [D&#x2011;51] ~~Unused contract variables~~
The variable is used outside of the contract in which it is defined

*There are 32 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/ConsoleFallbackHandler.sol

22:      bytes32 private constant SAFE_MSG_TYPEHASH = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca;

26:      address internal constant SENTINEL_MODULES = address(0x1);

27:      bytes4 internal constant UPDATED_MAGIC_VALUE = 0x1626ba7e;

```
*GitHub*: [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L22-L22), [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L26-L26), [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L27-L27)
```solidity
File: src/core/Constants.sol

18       bytes32 internal constant _EXECUTOR_REGISTRY_HASH =
19:          0x165eedff3947ccfbe9739de5f67209b9935e684faef9ce859fb3dc46d33317f1;

```
*GitHub*: [18](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L18-L19)
```solidity
File: src/core/Constants.sol

22:      bytes32 internal constant _WALLET_REGISTRY_HASH = 0x75559f593e25c44cbf7547c1b715821f42da95df7f98cc735242e5e68111f75b;

```
*GitHub*: [22](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L22-L22)
```solidity
File: src/core/Constants.sol

25:      bytes32 internal constant _POLICY_REGISTRY_HASH = 0xbcf81d40f2af7491686907859b412c7908faa6fb0c2baa84d3a2f4ee8bddcac9;

```
*GitHub*: [25](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L25-L25)
```solidity
File: src/core/Constants.sol

31:      bytes32 internal constant _EXECUTOR_PLUGIN_HASH = 0x93ae17d63c11c26435c52b81ff53503650df80d35c62972110e64a0454badbec;

```
*GitHub*: [31](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L31-L31)
```solidity
File: src/core/Constants.sol

34       bytes32 internal constant _CONSOLE_FALLBACK_HANDLER_HASH =
35:          0xae7411971cec68831bcab624e30a4a0a5f5439f59e63328ddc36cb3fd7a6e7c1;

```
*GitHub*: [34](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L34-L35)
```solidity
File: src/core/Constants.sol

38       bytes32 internal constant _GNOSIS_FALLBACK_HANDLER_HASH =
39:          0x1d0e7baa67448e6f8f5d2d87a7a735e5169126f41c10a38f620af92e1330b40d;

```
*GitHub*: [38](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L38-L39)
```solidity
File: src/core/Constants.sol

42       bytes32 internal constant _GNOSIS_MULTI_SEND_HASH =
43:          0x715c5882bd95d4620322df75c5ab7f02e94c69337dbd853ac1ee6f46017c2e70;

```
*GitHub*: [42](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L42-L43)
```solidity
File: src/core/Constants.sol

46       bytes32 internal constant _GNOSIS_PROXY_FACTORY_HASH =
47:          0x52941112416a4a1e2ba89836a1489d24ce80a72d85f6aac86c51a27cc3ad5aa1;

```
*GitHub*: [46](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L46-L47)
```solidity
File: src/core/Constants.sol

50       bytes32 internal constant _GNOSIS_SINGLETON_HASH =
51:          0x2bfdce65c4c0ca0f23ed8aa5f1391eae3ebd542786781824b0cf2af1ee477849;

```
*GitHub*: [50](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L50-L51)
```solidity
File: src/core/Constants.sol

54       bytes32 internal constant _POLICY_VALIDATOR_HASH =
55:          0x64f265888225e50b07bac47655ac1813ae55b484fcd2987f60cc44f47dd2bc62;

```
*GitHub*: [54](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L54-L55)
```solidity
File: src/core/Constants.sol

58:      bytes32 internal constant _SAFE_DEPLOYER_HASH = 0x6a361f18b7bdd4971167a9db369c1357f3ebc95ef7fca81cd1aebfaeb988666d;

```
*GitHub*: [58](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L58-L58)
```solidity
File: src/core/Constants.sol

61:      bytes32 internal constant _SAFE_ENABLER_HASH = 0xcfef2b3eaf4a23b5f44a9550982acf18e82082f6a9756b60ca375f7b497918ca;

```
*GitHub*: [61](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L61-L61)
```solidity
File: src/core/Constants.sol

64:      bytes32 internal constant _SAFE_MODERATOR_HASH = 0x1ba997699674cf2f5c633ee918b93d66618d3081db3e508721439eeef694efc7;

```
*GitHub*: [64](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L64-L64)
```solidity
File: src/core/Constants.sol

67       bytes32 internal constant _SAFE_MODERATOR_OVERRIDABLE_HASH =
68:          0xc70d2b4d45b7a19323a1c8274160190d132d8d675cb539a992b330caa33f7faa;

```
*GitHub*: [67](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L67-L68)
```solidity
File: src/core/Constants.sol

71       bytes32 internal constant _TRANSACTION_VALIDATOR_HASH =
72:          0xafb0a433e8688b3129b23c7a328676ad1689d2ad64b49e0ed21edcd0d36ec73d;

```
*GitHub*: [71](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L71-L72)
```solidity
File: src/core/Constants.sol

85       bytes32 internal constant _TRUSTED_VALIDATOR_HASH =
86:          0xc8fab2cea6e498c7d5e11e57566a1bd0376d100edae95e1256aeb6072ee66f89;

```
*GitHub*: [85](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/Constants.sol#L85-L86)
```solidity
File: src/core/ExecutorPlugin.sol

53:      string private constant _NAME = "ExecutorPlugin";

```
*GitHub*: [53](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L53-L53)
```solidity
File: src/core/ExecutorPlugin.sol

55:      string private constant _VERSION = "1.0";

```
*GitHub*: [55](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L55-L55)
```solidity
File: src/core/PolicyValidator.sol

26:      string private constant _NAME = "PolicyValidator";

```
*GitHub*: [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L26-L26)
```solidity
File: src/core/PolicyValidator.sol

28:      string private constant _VERSION = "1.0";

```
*GitHub*: [28](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L28-L28)
```solidity
File: src/core/SafeDeployer.sol

29       bytes32 internal constant _SAFE_CREATION_FAILURE_REASON =
30:          0xd7c71a0bdd2eb2834ad042153c811dd478e4ee2324e3003b9522e03e7b3735dc;

```
*GitHub*: [29](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L29-L30)
```solidity
File: src/core/SafeEnabler.sol

23:      address internal immutable _self;

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L23-L23)
```solidity
File: src/core/SafeEnabler.sol

26:      address internal constant _SENTINEL_MODULES = address(0x1);

```
*GitHub*: [26](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L26-L26)
```solidity
File: src/core/SafeEnabler.sol

30:      bytes32 internal constant _GUARD_STORAGE_SLOT = 0x4a204f620c8c5ccdca3fd54d003badd85ba500436a431f0cbda4f558c93c34c8;

```
*GitHub*: [30](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L30-L30)
```solidity
File: src/core/registries/ExecutorRegistry.sol

27:      mapping(address subAccount => EnumerableSet.AddressSet) private subAccountToExecutors;

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L27-L27)
```solidity
File: src/libraries/SafeHelper.sol

23       uint256 internal constant _GUARD_STORAGE_SLOT =
24:          33528237782592280163068556224972516439282563014722366175641814928123294921928;

```
*GitHub*: [23](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L23-L24)
```solidity
File: src/libraries/SafeHelper.sol

27       uint256 internal constant _FALLBACK_HANDLER_STORAGE_SLOT =
28:          49122629484629529244014240937346711770925847994644146912111677022347558721749;

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L27-L28)
```solidity
File: src/libraries/SafeHelper.sol

37       bytes32 internal constant _GUARD_REMOVAL_CALLDATA_HASH =
38:          0xc0e2c16ecb99419a40dd8b9c0b339b27acebd27c481a28cd606927aeb86f5079;

```
*GitHub*: [37](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L37-L38)
```solidity
File: src/libraries/SafeHelper.sol

47       bytes32 internal constant _FALLBACK_REMOVAL_CALLDATA_HASH =
48:          0x5bdf8c44c012c1347b2b15694dc5cc39b899eb99e32614676b7661001be925b7;

```
*GitHub*: [47](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L47-L48)
</details>





### [D&#x2011;52] ~~Unused import~~
These instances _are_ used

*There are 56 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: src/core/AddressProvider.sol

/// @audit IAddressProviderService
7:   import {IAddressProviderService} from "interfaces/IAddressProviderService.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L7-L7)
```solidity
File: src/core/AddressProviderService.sol

/// @audit IAddressProviderService
7:   import {IAddressProviderService} from "../../interfaces/IAddressProviderService.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L7-L7)
```solidity
File: src/core/AddressProviderService.sol

/// @audit AddressProvider
8:   import {AddressProvider} from "../core/AddressProvider.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L8-L8)
```solidity
File: src/core/AddressProviderService.sol

/// @audit Constants
9:   import {Constants} from "./Constants.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProviderService.sol#L9-L9)
```solidity
File: src/core/ConsoleFallbackHandler.sol

/// @audit AddressProviderService
11:  import {AddressProviderService} from "./AddressProviderService.sol";

```
*GitHub*: [11](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L11-L11)
```solidity
File: src/core/ConsoleFallbackHandler.sol

/// @audit PolicyValidator
12:  import {PolicyValidator} from "./PolicyValidator.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L12-L12)
```solidity
File: src/core/ExecutorPlugin.sol

/// @audit ReentrancyGuard
7:   import {ReentrancyGuard} from "openzeppelin-contracts/security/ReentrancyGuard.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L7-L7)
```solidity
File: src/core/ExecutorPlugin.sol

/// @audit SignatureCheckerLib
8:   import {SignatureCheckerLib} from "solady/utils/SignatureCheckerLib.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L8-L8)
```solidity
File: src/core/ExecutorPlugin.sol

/// @audit EIP712
9:   import {EIP712} from "solady/utils/EIP712.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L9-L9)
```solidity
File: src/core/ExecutorPlugin.sol

/// @audit IGnosisSafe
10:  import {IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [10](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L10-L10)
```solidity
File: src/core/ExecutorPlugin.sol

/// @audit AddressProviderService
11:  import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [11](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L11-L11)
```solidity
File: src/core/ExecutorPlugin.sol

/// @audit TransactionValidator
12:  import {TransactionValidator} from "src/core/TransactionValidator.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L12-L12)
```solidity
File: src/core/ExecutorPlugin.sol

/// @audit ExecutorRegistry
13:  import {ExecutorRegistry} from "src/core/registries/ExecutorRegistry.sol";

```
*GitHub*: [13](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L13-L13)
```solidity
File: src/core/ExecutorPlugin.sol

/// @audit SafeHelper
14:  import {SafeHelper} from "src/libraries/SafeHelper.sol";

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L14-L14)
```solidity
File: src/core/ExecutorPlugin.sol

/// @audit TypeHashHelper
15:  import {TypeHashHelper} from "src/libraries/TypeHashHelper.sol";

```
*GitHub*: [15](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L15-L15)
```solidity
File: src/core/ExecutorPlugin.sol

/// @audit Types
16:  import {Types} from "interfaces/Types.sol";

```
*GitHub*: [16](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L16-L16)
```solidity
File: src/core/PolicyValidator.sol

/// @audit SignatureCheckerLib
7:   import {SignatureCheckerLib} from "solady/utils/SignatureCheckerLib.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L7-L7)
```solidity
File: src/core/PolicyValidator.sol

/// @audit EIP712
8:   import {EIP712} from "solady/utils/EIP712.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L8-L8)
```solidity
File: src/core/PolicyValidator.sol

/// @audit AddressProviderService
9:   import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L9-L9)
```solidity
File: src/core/PolicyValidator.sol

/// @audit PolicyRegistry
10:  import {PolicyRegistry} from "src/core/registries/PolicyRegistry.sol";

```
*GitHub*: [10](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L10-L10)
```solidity
File: src/core/PolicyValidator.sol

/// @audit TypeHashHelper
11:  import {TypeHashHelper} from "src/libraries/TypeHashHelper.sol";

```
*GitHub*: [11](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L11-L11)
```solidity
File: src/core/PolicyValidator.sol

/// @audit IGnosisSafe
12:  import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L12-L12)
```solidity
File: src/core/PolicyValidator.sol

/// @audit Enum
12:  import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L12-L12)
```solidity
File: src/core/SafeDeployer.sol

/// @audit ReentrancyGuard
7:   import {ReentrancyGuard} from "openzeppelin-contracts/security/ReentrancyGuard.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L7-L7)
```solidity
File: src/core/SafeDeployer.sol

/// @audit AddressProviderService
8:   import {AddressProviderService} from "../core/AddressProviderService.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L8-L8)
```solidity
File: src/core/SafeDeployer.sol

/// @audit WalletRegistry
9:   import {WalletRegistry} from "../core/registries/WalletRegistry.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L9-L9)
```solidity
File: src/core/SafeDeployer.sol

/// @audit PolicyRegistry
10:  import {PolicyRegistry} from "../core/registries/PolicyRegistry.sol";

```
*GitHub*: [10](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L10-L10)
```solidity
File: src/core/SafeDeployer.sol

/// @audit IGnosisProxyFactory
11:  import {IGnosisProxyFactory} from "../../interfaces/external/IGnosisProxyFactory.sol";

```
*GitHub*: [11](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L11-L11)
```solidity
File: src/core/SafeDeployer.sol

/// @audit IGnosisSafe
12:  import {IGnosisSafe} from "../../interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L12-L12)
```solidity
File: src/core/SafeDeployer.sol

/// @audit Types
13:  import {Types, SafeHelper} from "../libraries/SafeHelper.sol";

```
*GitHub*: [13](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L13-L13)
```solidity
File: src/core/SafeDeployer.sol

/// @audit SafeHelper
13:  import {Types, SafeHelper} from "../libraries/SafeHelper.sol";

```
*GitHub*: [13](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L13-L13)
```solidity
File: src/core/SafeDeployer.sol

/// @audit IGnosisMultiSend
14:  import {IGnosisMultiSend} from "../../interfaces/external/IGnosisMultiSend.sol";

```
*GitHub*: [14](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L14-L14)
```solidity
File: src/core/SafeEnabler.sol

/// @audit GnosisSafeStorage
7:   import {GnosisSafeStorage} from "safe-contracts/examples/libraries/GnosisSafeStorage.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L7-L7)
```solidity
File: src/core/SafeModerator.sol

/// @audit IGuard
7:   import {IGuard, Enum} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L7-L7)
```solidity
File: src/core/SafeModerator.sol

/// @audit Enum
7:   import {IGuard, Enum} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L7-L7)
```solidity
File: src/core/SafeModerator.sol

/// @audit AddressProviderService
8:   import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L8-L8)
```solidity
File: src/core/SafeModerator.sol

/// @audit TransactionValidator
9:   import {TransactionValidator} from "src/core/TransactionValidator.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L9-L9)
```solidity
File: src/core/SafeModeratorOverridable.sol

/// @audit IGuard
7:   import {IGuard, Enum} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L7-L7)
```solidity
File: src/core/SafeModeratorOverridable.sol

/// @audit Enum
7:   import {IGuard, Enum} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L7-L7)
```solidity
File: src/core/SafeModeratorOverridable.sol

/// @audit AddressProviderService
8:   import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L8-L8)
```solidity
File: src/core/SafeModeratorOverridable.sol

/// @audit TransactionValidator
9:   import {TransactionValidator} from "src/core/TransactionValidator.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L9-L9)
```solidity
File: src/core/TransactionValidator.sol

/// @audit IGnosisSafe
7:   import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L7-L7)
```solidity
File: src/core/TransactionValidator.sol

/// @audit Enum
7:   import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L7-L7)
```solidity
File: src/core/TransactionValidator.sol

/// @audit PolicyValidator
8:   import {PolicyValidator} from "src/core/PolicyValidator.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L8-L8)
```solidity
File: src/core/TransactionValidator.sol

/// @audit SafeHelper
9:   import {SafeHelper} from "src/libraries/SafeHelper.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L9-L9)
```solidity
File: src/core/TransactionValidator.sol

/// @audit AddressProviderService
10:  import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [10](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L10-L10)
```solidity
File: src/core/TransactionValidator.sol

/// @audit WalletRegistry
11:  import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";

```
*GitHub*: [11](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L11-L11)
```solidity
File: src/core/registries/ExecutorRegistry.sol

/// @audit AddressProviderService
7:   import {AddressProviderService} from "../AddressProviderService.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L7-L7)
```solidity
File: src/core/registries/ExecutorRegistry.sol

/// @audit WalletRegistry
8:   import {WalletRegistry} from "./WalletRegistry.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L8-L8)
```solidity
File: src/core/registries/ExecutorRegistry.sol

/// @audit EnumerableSet
9:   import {EnumerableSet} from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";

```
*GitHub*: [9](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/ExecutorRegistry.sol#L9-L9)
```solidity
File: src/core/registries/PolicyRegistry.sol

/// @audit AddressProviderService
7:   import {AddressProviderService} from "src/core/AddressProviderService.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L7-L7)
```solidity
File: src/core/registries/PolicyRegistry.sol

/// @audit WalletRegistry
8:   import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L8-L8)
```solidity
File: src/core/registries/WalletRegistry.sol

/// @audit AddressProviderService
7:   import {AddressProviderService} from "../AddressProviderService.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L7-L7)
```solidity
File: src/libraries/SafeHelper.sol

/// @audit Enum
7:   import {Enum, IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L7-L7)
```solidity
File: src/libraries/SafeHelper.sol

/// @audit IGnosisSafe
7:   import {Enum, IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L7-L7)
```solidity
File: src/libraries/SafeHelper.sol

/// @audit Types
8:   import {Types} from "interfaces/Types.sol";

```
*GitHub*: [8](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/libraries/SafeHelper.sol#L8-L8)
</details>





### [D&#x2011;53] ~~Unused local variable~~


*There is one instance of this issue:*

```solidity
File: src/core/SafeEnabler.sol

/// @audit slot
69:          bytes32 slot = _GUARD_STORAGE_SLOT;

```
*GitHub*: [69](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeEnabler.sol#L69-L69)


### [D&#x2011;54] ~~Unused named return variables without optimizer waste gas~~
Suggestions that only apply when the optimizer is _off_ are not useful to sponsors. Why would they pay for gas optimizations if they don't have the optimizer on, and don't plan to turn it on? Only a [small minority](https://github.com/search?q=org%3Acode-423n4+%22optimizer+%3D+false%22&type=code) have the optimizer off; the majority have it set to more than [200](https://github.com/search?q=org%3Acode-423n4+optimizer_runs&type=code) runs

*There are 4 instances of this issue:*

```solidity
File: src/core/ExecutorPlugin.sol

/// @audit name
/// @audit version
159:      function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [159](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L159), [159](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L159)
```solidity
File: src/core/PolicyValidator.sol

/// @audit name
174:      function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [174](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L174)
```solidity
File: src/core/PolicyValidator.sol

/// @audit version
174:      function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [174](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L174)


### [D&#x2011;55] ~~Use `@inheritdoc` rather than using a non-standard annotation~~


*There are 8 instances of this issue:*

```solidity
File: src/core/ExecutorPlugin.sol

154      /**
155       * @notice Internal helper to get EIP712 domain name and version
156       * @return name domainName
157       * @return version domainVersion
158       */
159:     function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [154](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L154-L159)
```solidity
File: src/core/PolicyValidator.sol

169      /**
170       * @notice Internal helper to get EIP712 domain name and version
171       * @return name domainName
172       * @return version domainVersion
173       */
174:     function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {

```
*GitHub*: [169](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L169-L174)
```solidity
File: src/core/SafeModerator.sol

28        * @param gasToken address of token used for gas
29        * @param refundReceiver address of receiver of gas payment
30        * @param signatures user signatures appended with validation signature
31        * @param msgSender address of msg.sender of original txn
32        */
33       function checkTransaction(
34           address to,
35           uint256 value,
36           bytes memory data,
37           Enum.Operation operation,
38           uint256 safeTxGas,
39           uint256 baseGas,
40           uint256 gasPrice,
41           address gasToken,
42           address payable refundReceiver,
43           bytes memory signatures,
44           address msgSender
45:      ) external view override {

```
*GitHub*: [28](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L28-L45)
```solidity
File: src/core/SafeModerator.sol

65       /**
66        * @notice Inherited from IGuard, function is called after executing a Safe transaction during execTransaction
67        * @param txHash tx hash, computed from transaction
68        * @param success boolean indicating success
69        */
70:      function checkAfterExecution(bytes32 txHash, bool success) external view override {

```
*GitHub*: [65](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L65-L70)
```solidity
File: src/core/SafeModerator.sol

75       /**
76        * @notice Inherited from IGuard, function is called after executing a Safe transaction during execTransactionViaModule
77        * @dev No op-check. Provides compatibility with Safe 1.5 guard over module
78        */
79       /* solhint-disable no-empty-blocks */
80       function checkModuleTransaction(
81           address, /* to */
82           uint256, /* value */
83           bytes memory, /* data */
84           Enum.Operation, /* operation */
85           address /* module */
86:      ) external override {}

```
*GitHub*: [75](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModerator.sol#L75-L86)
```solidity
File: src/core/SafeModeratorOverridable.sol

34        * @param gasToken address of token used for gas
35        * @param refundReceiver address of receiver of gas payment
36        * @param signatures user signatures appended with validation signature
37        * @param msgSender address of msg.sender of original txn
38        */
39       function checkTransaction(
40           address to,
41           uint256 value,
42           bytes memory data,
43           Enum.Operation operation,
44           uint256 safeTxGas,
45           uint256 baseGas,
46           uint256 gasPrice,
47           address gasToken,
48           address payable refundReceiver,
49           bytes memory signatures,
50           address msgSender
51:      ) external view override {

```
*GitHub*: [34](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L34-L51)
```solidity
File: src/core/SafeModeratorOverridable.sol

71       /**
72        * @notice Inherited from IGuard, function is called after executing a Safe transaction during execTransaction
73        * @param txHash tx hash, computed from transaction
74        * @param success boolean indicating success/failure of above transaction
75        */
76:      function checkAfterExecution(bytes32 txHash, bool success) external view override {

```
*GitHub*: [71](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L71-L76)
```solidity
File: src/core/SafeModeratorOverridable.sol

81       /**
82        * @notice Inherited from IGuard, function is called after executing a Safe transaction during execTransactionViaModule
83        * @dev No op-check. Provides compatibility with Safe 1.5 guard over module
84        */
85       /* solhint-disable no-empty-blocks */
86       function checkModuleTransaction(
87           address, /* to */
88           uint256, /* value */
89           bytes memory, /* data */
90           Enum.Operation, /* operation */
91           address /* module */
92:      ) external override {}

```
*GitHub*: [81](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeModeratorOverridable.sol#L81-L92)


### [D&#x2011;56] ~~Use `assembly` to write address/contract type storage values~~
Using this suggestion stomps over any value packed into the same slot as the address, so this advice is not safe.

*There are 3 instances of this issue:*

```solidity
File: src/core/AddressProvider.sol

45:          governance = _governance;

56:          pendingGovernance = _newGovernance;

67:          governance = msg.sender;

```
*GitHub*: [45](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L45-L45), [56](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L56-L56), [67](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/AddressProvider.sol#L67-L67)


### [D&#x2011;57] ~~Use `bytes.concat()` on bytes instead of `abi.encodePacked()` for clearer semantic meaning~~
These instances don't use only bytes/strings, so they're invalid

*There is one instance of this issue:*

```solidity
File: src/core/SafeDeployer.sol

254:         return uint256(keccak256(abi.encodePacked(_ownersHash, ownerSafeCount[_ownersHash]++, _salt, VERSION)));

```
*GitHub*: [254](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L254-L254)


### [D&#x2011;58] ~~Use assembly for small keccak256 hashes, in order to save gas~~
The arguments are too large to fit into the scratch space

*There are 3 instances of this issue:*

```solidity
File: src/core/ConsoleFallbackHandler.sol

69:          bytes32 safeMessageHash = keccak256(abi.encode(SAFE_MSG_TYPEHASH, keccak256(message)));

```
*GitHub*: [69](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ConsoleFallbackHandler.sol#L69-L69)
```solidity
File: src/core/TransactionValidator.sol

166:             if (SafeHelper._GUARD_REMOVAL_CALLDATA_HASH == keccak256(_data)) {

```
*GitHub*: [166](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L166-L166)
```solidity
File: src/core/TransactionValidator.sol

168:             } else if (SafeHelper._FALLBACK_REMOVAL_CALLDATA_HASH == keccak256(_data)) {

```
*GitHub*: [168](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L168-L168)


### [D&#x2011;59] ~~Use multiple `require()` and `if` statements instead of `&&`~~
The suggestion in this rule is not logically equivalent for `if`-statements unless they're nested, and cannot be done if there's an `else`-block without spending more gas. It doesn't seem more readable for `require()`s either

*There are 5 instances of this issue:*

```solidity
File: src/core/ExecutorPlugin.sol

117          if (execRequest.executor.code.length == 0 && execRequest.executorSignature.length == 0) {
118              // Executor is an EOA and no executor signature is provided
119:             revert InvalidSignature();

```
*GitHub*: [117](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/ExecutorPlugin.sol#L117-L119)
```solidity
File: src/core/PolicyValidator.sol

135          if (trustedValidator.code.length == 0 && validatorSignature.length == 0) {
136              // TrustedValidator is an EOA and no trustedValidator signature is provided
137:             revert InvalidSignature();

```
*GitHub*: [135](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L135-L137)
```solidity
File: src/core/TransactionValidator.sol

165          if (_from == _to && _value == 0 && _operation == Enum.Operation.Call) {
166              if (SafeHelper._GUARD_REMOVAL_CALLDATA_HASH == keccak256(_data)) {
167:                 return true;

```
*GitHub*: [165](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/TransactionValidator.sol#L165-L167)
```solidity
File: src/core/registries/PolicyRegistry.sol

46               currentCommit == bytes32(0)
47                   && msg.sender == AddressProviderService._getAuthorizedAddress(_SAFE_DEPLOYER_HASH)
48           ) {
49:              // In case invoker is safe  deployer

```
*GitHub*: [46](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L46-L49)
```solidity
File: src/core/registries/PolicyRegistry.sol

52           } else if (msg.sender == account && walletRegistry.isWallet(account)) {
53               // In case invoker is a registered wallet
54:          } else {

```
*GitHub*: [52](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/PolicyRegistry.sol#L52-L54)


### [D&#x2011;60] ~~Using `block.timestamp` as the deadline/expiry invites MEV~~
The general rule is valid, but the instances below are invalid

*There is one instance of this issue:*

```solidity
File: src/core/PolicyValidator.sol

111  
112          // Get expiry epoch and validator signature from signatures
113          (uint32 expiryEpoch, bytes memory validatorSignature) = _decompileSignatures(signatures);
114  
115          // Ensure transaction has not expired
116          if (expiryEpoch < uint32(block.timestamp)) {
117              revert TxnExpired(expiryEpoch);
118          }
119: 

```
*GitHub*: [111](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/PolicyValidator.sol#L111-L119)


### [D&#x2011;61] ~~Using `calldata` instead of `memory` for read-only arguments in `external` functions saves gas~~
[Invalid](https://gist.github.com/IllIllI000/2ac9a647be917f58ffe5baa2cecbbc42) for arrays of non-word-sized types

*There are 2 instances of this issue:*

```solidity
File: src/core/SafeDeployer.sol

/// @audit _setupConsoleAccount(_owners)
110:     function _setupConsoleAccount(address[] memory _owners, uint256 _threshold, bool _policyHashValid)

/// @audit _setupSubAccount(_owners)
168:     function _setupSubAccount(address[] memory _owners, uint256 _threshold, address _consoleAccount)

```
*GitHub*: [110](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L110-L110), [168](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L168-L168)


### [D&#x2011;62] ~~Using `storage` instead of `memory` for structs/arrays saves gas~~
There is no storage being read from

*There is one instance of this issue:*

```solidity
File: src/core/SafeDeployer.sol

174:         Types.Executable[] memory txns = new Types.Executable[](2);

```
*GitHub*: [174](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/SafeDeployer.sol#L174-L174)


### [D&#x2011;63] ~~Using bitmap to store bool states can save gas~~
none of these are examples where bitmaps can be used

*There is one instance of this issue:*

```solidity
File: src/core/registries/WalletRegistry.sol

27:      mapping(address => bool) public isWallet;

```
*GitHub*: [27](https://github.com/code-423n4/2023-10-brahma/blob/c217699448ffd7ec0253472bf0d156e52d45ca71/contracts/src/core/registries/WalletRegistry.sol#L27-L27)


## Rubric
See [this](https://illilli000.github.io/races/2023-07-lens/scorer.html) link for how to use this rubric:
```json
{"salt":"25194d","hashes":["753f1c1895","cf3dee45a8","1989907c2f","fcec2cf21f","e2c12e4ce4","f7002866b6","92e00a9bcc","fdb92f8703","ac9f5d0567","894e5c053b","8970371fa7","ad98dae3d9","64dfa54e22","1968eb5da7","64443a3ebe","44ae0e12b1","cb28846af9","56db229b9a","a29092bc10","8553b0c3cf","48d6540eee","beb3844162","e30bf17f61","3a815d24ec","2791027940","e3762e4485","24a35a9879","86e42a81a4","cc287efcff","0f9c9387e3","f4ee8fcdc5","6ba1599060","8f069b5581","a0c34c156e","17a8a871ce","753f1c1895","cf3dee45a8","1989907c2f","fcec2cf21f","e2c12e4ce4","f7002866b6","92e00a9bcc","e0db90ea6a","7218d081da","cce25c89e9","2951995bc3","2831389231","bc92f3cb5a","62cef54a22","e0db90ea6a","7218d081da","cce25c89e9","2951995bc3","2831389231","bc92f3cb5a","62cef54a22","2e47169c96","e0d4bd869c","40432aed85","c1846486ce","065ac63e2e","bb9605cfdc","e489a22778","21c9fc788a","0b6a373482","d72580cd33","6300623f6c","f21d95a7d6","3d01403dec","bef85bdfc4","aa769cf9ed","d10f5fe249","ff4c08de7c","104e9a755e","0b2d4fd2cb","af51ef885e","1a2357ac22","2d54587fc7","36edd67a97","675e0037fd","bb1a347bc5","20d8c83330","c052e1c4d1","afb1b37fa2","88b40b3e7f","55f4d2872e","311fac3bee","b4eed511c5","b8c111257e","ef1ee1ad91","600c020c3c","df235ac24c","4fabc7595b","7dc4d9d0b6","4bbed53e66","21577ab9b7","8c59b83fec","89a329b85f","68f9c2797c","992d734ae0","f15762497c","df2e5a88e8","d6e10666e2","2a923af393","54e52f40b4","629f301ecf","e3aead43af","1858f0dab8","bc42b11d42","5ad6c57851","06ee9334a1","5a337ce5bb","629f301ecf","e3aead43af","1858f0dab8","bc42b11d42","5ad6c57851","06ee9334a1","5a337ce5bb","ead757d50b","a4ffe9f852","2d3123ac08","0bf84b8e90","789882c070","1b706b40fe","35aa51ecc9","b01a98fe8e","777eb81585","50fd8c18d3","a85a7c0d4b","2fd189890b","eaae6abcc3","8e3799d4ac","999a5f0638","e925e1892b","503bb4d78a","5dea122e42","22d8df666b","47d4d70e9e","3f76137172","f498c6dc80","b111f97b5a","d796fe4345","488b02fc03","dc308ce031","6427a7df92","064114e71b","999a5f0638","e925e1892b","503bb4d78a","5dea122e42","22d8df666b","47d4d70e9e","3f76137172","b01a98fe8e","777eb81585","50fd8c18d3","a85a7c0d4b","2fd189890b","eaae6abcc3","8e3799d4ac","707e8567c9","a2a3f201bb","1a709215de","d86af4b61e","4fbf6f69ee","b6b15137f2","3ec4509584","386a983a80","4581dc5eb1","8092199000","350b54d303","a1520dc140","d064533a06","a0bc5b900b","b01a98fe8e","777eb81585","50fd8c18d3","a85a7c0d4b","2fd189890b","eaae6abcc3","8e3799d4ac","b01a98fe8e","777eb81585","50fd8c18d3","a85a7c0d4b","2fd189890b","eaae6abcc3","8e3799d4ac","44711ce706","071bca5616","9c98126b56","7b3a7d01c1","5c896d68a2","03353cda34","bfd4cadbd6","aba3cb0065","419eb0f8ef","89ee79708f","b057de0d9f","53033ef385","cb109435b2","bbd6e80a03","d623cd5ca2","193e482830","133a6ef944","da9c97453b","a0b30e5821","0914fbec32","696442d87c","c2f450afb6","e08119732d","64d7ecd5fa","cf4bea5e14","cedd4524cd","52672eb5d0","03c5d1a266","33f05431e7","0af9d23249","169dd19e67","3e15a357ed","e43ecf656f","d89a43f2fb","dc0801aa00","c2f450afb6","e08119732d","64d7ecd5fa","cf4bea5e14","cedd4524cd","52672eb5d0","03c5d1a266","c2f450afb6","e08119732d","64d7ecd5fa","cf4bea5e14","cedd4524cd","52672eb5d0","03c5d1a266","aafaf3dc81","12695843df","6a54fe602a","3b00c66156","15ba6bb0de","a09e6f1911","39ee456fda","71b9143f51","30389db3be","a0169defcb","21d01d32a9","52e563f08f","372c872a76","56ef25169b","8556143c11","3f86323705","1730748adf","de69634cc3","1bac3399a7","f2a6709976","c75c83362d","02d5bb3550","e35469b22a","535ddd5472","3d05082692","7903ccbd29","a7b2edfd25","700004f9f0","8556143c11","3f86323705","1730748adf","de69634cc3","1bac3399a7","f2a6709976","c75c83362d","563686e7ee","54949e2955","9f11023b12","d350369f9e","7cb942a68e","da9064ec55","9f71ff5871","9b21a4cde7","af721f7697","e85f49f95e","a32c94721b","4501974965","2a61188524","468da67ce3","9b21a4cde7","af721f7697","e85f49f95e","a32c94721b","4501974965","2a61188524","468da67ce3","fd5f7425d0","ea0be89af8","c2fa995016","f7c457beaf","ed237ce328","b070084935","c2dccd9ba7","1b4c7ebb73","f624d868ae","551da41ae1","867a06a9a9","fc47c7abbe","9190ca109d","d4856d7e2c","76de1c06e3","b8639c79ff","65f94d37d6","55b5f168ad","991ffeea06","feb606f672","22f6987268","e25c194868","95b2ad581f","ba92424b02","aaa4d44e78","69065e60c3","8e43a7fd0c","07fd63d9fa","6fee89afaa","723677fa1b","a6d2482d10","6be486404d","d0f6dee4f5","aad51d0ac9","af0f954eff","6fee89afaa","723677fa1b","a6d2482d10","6be486404d","d0f6dee4f5","aad51d0ac9","af0f954eff","1c51b28e85","42b29f8089","79b5e22d57","ab07f0b834","80384e4408","71883b151f","eeb163dbd0","5efe4952f5","78953fe9ff","6c34a07e6e","cb3e2db1c8","5c916b4c44","96f0e07f2a","61b0314164","d89ccbb86f","0c2f24e2f0","b3a3d8c631","19ab175362","d3ef473b53","5d8194384d","ed72d54ac0","5c1ef7c6b8","3f990c829a","a0ac0c7205","926df1825e","205a0ac0b5","b1d523895d","0a1bcff8bc","0f4730f2d4","2665fb9d35","c3d1763287","e7ae5f802c","acaf9ffe9e","b1880c4bd3","e7f1c40ef9","f34d74deb1","c33b8aac36","f05d7dad58","c80c153964","9bc6b5ed20","622ba1a659","9ce64e20d7","8b36d168d5","58f8f348de","d78c63a0ff","ca4303da29","d509e36c14","7c5415d164","903e612295","d89ccbb86f","0c2f24e2f0","b3a3d8c631","19ab175362","d3ef473b53","5d8194384d","ed72d54ac0","9d0ab4744e","12ebc84d05","4b0d7d641e","cb77db4063","cd9103a980","48cd83c7f9","b57782ae70","9d0ab4744e","12ebc84d05","4b0d7d641e","cb77db4063","cd9103a980","48cd83c7f9","b57782ae70","c017f03af0","2512e46ee3","ea6ca0c461","f4b26ae0ac","0d061a1eff","43c6943694","48f54ed16f","2b520920f1","32478d496c","4486a7bb4d","3aa9815efc","21cb4f02a4","9c5733ebb7","5c0b5ae74c","e72501ee61","faf8789ff0","937bc72463","f4861450e5","ad44f79ed6","703b8c261a","82d8d8252a","4a3d8444f8","c3fd77155e","caba990461","9d245122c5","a769a616ac","5b04b184a7","885bf28364","e3eef18668","652272fea3","0b83c040ab","5088f46ce3","e614327840","56088f081a","0ae549fb47","ef61c65df1","90f3f36673","468fa00208","2ef84fa981","adfa2a02d8","760ef75094","38c58565f1","ef61c65df1","90f3f36673","468fa00208","2ef84fa981","adfa2a02d8","760ef75094","38c58565f1","a392d0dffc","b4495bd1d3","4014184f34","4ac4bf5f3d","b6ce207f55","7077dc8bb6","e3c285fe04","46f3900966","512f456cfa","1fa8905352","454e531d87","4988c9e908","e9672fc345","3ccb5b3a75","3a090c11e3","41f6983b10","76e72b2eec","dabeb21cf5","c6b39c78b7","2df42dcfd0","e2b1148939","feb5cac2db","4eb288b5b5","9aa8420b01","8660a09e24","46f3da673d","deb8e92bb5","a559e3791b","68e3f0f0fe","a93104a35b","25341544f7","39a30bf619","6dd785e47a","f82da8db93","5ee4470fff","fccb38d548","8c396a8d42","6f6a70a980","88ef63db05","7a1c20c85d","8e9613f0bc","0ee3baea23","a441784ec6","b0108857df","97e122e056","a3b4502e3d","3a4f278827","c26edb7ba7","7440cf5bb8","a441784ec6","b0108857df","97e122e056","a3b4502e3d","3a4f278827","c26edb7ba7","7440cf5bb8","c4f0f7932d","992a8b1589","d26000235c","2a02d62d77","67bd5a95f1","dc4d2635ce","34acb2052f","e0dd23cb6c","6a8b9f606d","c467d4b01c","4e9f3a990b","f7d422203f","6e2e2fdf32","2be0bd3d81","252666e6e2","cb32d220d5","19eb79728b","98791fd21e","264f5235c9","3227e8ac86","1f1e353786","252666e6e2","cb32d220d5","19eb79728b","98791fd21e","264f5235c9","3227e8ac86","1f1e353786","592e9a1df5","a085c09c06","021b9a1625","69559af992","62055ae2d0","25fe6ff61f","8f01ab61b0","3f40741180","63ff715a42","2266e8a3bd","0596f70866","56ccdc776b","197da37d49","ad267053ce","da2f4ce92d","1f5a938a7f","af7123f15d","62f62f38e6","6c907fc3e7","96b198f3ba","5c44821353","3d321f7b20","b33a940743","75129a8681","44bf60cc59","785a35c0e2","ef662a459b","e0290682d4","417bd8dab6","1fd75b3ccc","fe7e6c412f","739a135da3","2a4b2099cd","fbc1cacaaf","9035b02073","3f40741180","63ff715a42","2266e8a3bd","0596f70866","56ccdc776b","197da37d49","ad267053ce","3f40741180","63ff715a42","2266e8a3bd","0596f70866","56ccdc776b","197da37d49","ad267053ce","969452fe5a","f03eef1cd8","c9fa66459c","3f94471cba","ab9f860796","2369ebf078","b23170a394","bf5fdb1345","7f0cbbc217","d8c67cc31d","836e2f9e60","8cf649b7bd","e086a6fb86","1a4f117f18","ed8c4667c3","22fce3768f","7b1be445fe","42a27fe76a","6c2e79a242","483fdf7a9a","fdc2d49eca","e6b8d9a538","e07bebffeb","e62c188bd7","e37e53b348","12463ac8f4","c47a6dc346","c46a68fb00","38ef341e82","ed9aacd137","cbdc297c9b","53538d745b","48dc2e3df8","d984f24b95","2f12932a21","38ef341e82","ed9aacd137","cbdc297c9b","53538d745b","48dc2e3df8","d984f24b95","2f12932a21","4b393008e2","f758506ac9","6cbf8359b3","3d1bee23fa","941b8933ca","b425429842","81335b6cfb","fecde242d5","3311b77f8c","4186d67543","7e844263ed","9dded2f07a","515dbc440f","1e5c488664","20e9523db3","f55e8d9aea","43f7f17fe3","0916ea3c78","e5583eb387","329082778c","26822e3053","b36b74b8af","dfd614cc43","704acd67f9","9ffc8203be","cf5e68d0d9","9cf2f1510a","71e4d2c441","5b2116cb6d","f340195c79","111c200944","cb56221943","5c33a61345","db55536ae9","15672d43c1","11f614596a","dfb7075719","33ea7094bc","af007cdad9","f53b69fa2f","3feafe6a78","b9fa34f05a","4b393008e2","f758506ac9","6cbf8359b3","3d1bee23fa","941b8933ca","b425429842","81335b6cfb","0e538fc38f","643a79af46","8bf096c14a","3c20f3a7d2","d9c00db5b5","942eac97f4","fbdc31b40f","048d519908","2b8d55f9f2","9dc3f7d808","42fd012525","f2e347572c","36e93861b3","33efa1a8c6","57850d3132","01b180d3e1","a2f5b25824","b79bdcbe8b","8a8f0efc69","9d679aec8b","dd2d95b262","de916e876f","b3ab2b5f95","ce86cb2a8f","5bad6feb89","f30769f27e","d37c3388e2","31f6bddd9a","8cb0e78728","e0b855a8cd","39655b3203","ac12f5a316","d86a9b30a0","1fdbd56a7d","30308360c5","9c4e0ae228","5136a61bac","7dceeaef19","7c3567d221","9d4fa351a4","4aa02a1b8b","8aa1df6450","6eaecde9a9","706bac963d","0bc88a1a98","7f95920cbc","0739f23b76","6ec6346901","c96ae8956b","3205b17909","a1f72638bb","47d6dd59f1","0b28f31575","ff91a47a1f","91755b08f9","173f8f0eed","72f2299701","c43916dd92","d2f20bfaf8","16cabb6338","c9db0fffbd","56f3318970","6ec409e15a","cdb20c443f","fff3f80352","70ee94533f","22d3b99dc1","290b6ba7e2","33318bf47a","882cce454a","57850d3132","01b180d3e1","a2f5b25824","b79bdcbe8b","8a8f0efc69","9d679aec8b","dd2d95b262","a1533d7c53","45c928abcb","ae2151310f","4422fbf457","f834514d5a","36f34edc41","7b851f1cbd","7c78888cea","9a06880a98","c8b8612e00","46e4245675","f9b8256d54","7928e24420","c508d654c0","12ddef07fe","2d39cb5b4d","1c2cfbbe43","c7e99ec918","6ed591ccde","0d4b2e7c06","c827b1fed4","92e493c58d","b5fc7e273e","33fff562f7","4c1dbe37a6","bb6f19ebe2","7cbc0f3536","cc921e6843","92e493c58d","b5fc7e273e","33fff562f7","4c1dbe37a6","bb6f19ebe2","7cbc0f3536","cc921e6843","e51b2525dc","65a0f8f741","dfe486c432","cbede0de11","4cefab4a75","f4624af402","e7f0513e17","566e5fae80","3391691647","8638cb866f","e326e9638d","dc729d5f0b","002e17cf19","4b9d4e5c10","d05e3e3e60","08053fa31b","e56a66a437","79119f92c7","916d7c8147","ffa6ab4820","56f92f2ce5","64b38b6286","8aaf9d0853","5864ba72b4","3a92633256","6f46f8d52a","06a0adad09","fd5e7dd6c0","43db8aca11","11d75989ad","cfc1465be4","615eebcdb2","4a50c1cb71","7b516c0c0d","528683a2c7","566e5fae80","3391691647","8638cb866f","e326e9638d","dc729d5f0b","002e17cf19","4b9d4e5c10","566e5fae80","3391691647","8638cb866f","e326e9638d","dc729d5f0b","002e17cf19","4b9d4e5c10","99d0c5ca80","3eb85c3847","689c5c80bb","e8867480de","ec179476f8","526d72f0a6","b2617b6489","33230edbda","30fb59d22f","6111d888ef","2c729b9da0","ca4a1c3ac9","1d0ab5cb51","68b76ec502","931c65b21d","f0d2ca8e75","d5b785d556","6dfe61a371","d217d54919","c0e25f6272","2079eb175e","9bbeb54eab","04d6796185","03923e6744","88977e8107","bb7f562139","1c6ebea7c8","9af66d870c","61e62ac149","8f156bad88","71189fecb3","af2e3e96d1","c00241d0bf","09d4a3d78c","5383b32eb7","6d89fb80fb","71f1fc7c7a","ed7e00c94c","631dfb05c0","e68539b51f","bf88ac5d29","293fb4216b","0d9a462e4d","055963cd91","7c978361c9","e8f2791667","d069c2feab","c4de7732cb","7d5487bebf","99d0c5ca80","3eb85c3847","689c5c80bb","e8867480de","ec179476f8","526d72f0a6","b2617b6489","3a090c10d3","dd3a9f903a","c0b57b6ff4","26eeb67d64","848df7ee35","123dbbb93c","5d425afa2a","a73eb7aadf","f96df061a9","01feb236d1","b48e4192c1","2f4b775240","6cc480f2b5","0aed37b842","f0ab033530","208e8f490a","5b25eb8a13","81258e3a5a","c0aa57e116","f65ad63bac","cbff519453","b488f98f03","8ed92015b3","3dc98a6341","9ba20bc8a8","ab7e92199a","d907c9ae4c","0894c27282","9b8bec9930","86265e3c65","361068e99e","21925e76ec","27c77db4db","c55928772a","fbea7afe56","9b8bec9930","86265e3c65","361068e99e","21925e76ec","27c77db4db","c55928772a","fbea7afe56","75788aa51d","65a4e82a0e","0134ab400f","6b623fd08a","0de273ce69","3d4a312a01","13d2a4de04","e020b14de7","b8e01d6d5c","fcf891f9ec","ade749bc92","d338f1ed04","21db6564ba","543274df1c","58994efdfb","73bab01173","f215c3fa7a","657a59ec93","5910b1036e","38eb1ea681","b7a5a1139b","1fc5f52562","ebab9792ab","c591cfe220","18a7799888","ec421bdf18","37c96fc073","dda3a4a9d3","513a035b8b","5b5a968c80","dfe0ff4921","22523e5a4a","d1ead45a39","4f650260a3","a5794c15fd","644a4348b0","4b149fb0ca","444e03cdbc","60af3032a7","a376f56d22","3b903519c7","da9b08f0e1","513a035b8b","5b5a968c80","dfe0ff4921","22523e5a4a","d1ead45a39","4f650260a3","a5794c15fd","513a035b8b","5b5a968c80","dfe0ff4921","22523e5a4a","d1ead45a39","4f650260a3","a5794c15fd","1c3db4a1fd","c5571a4fd8","4eb4dccd1a","2dfee5cfb0","727c2bec77","bebf1ae104","2eb409bfda","620753fe0b","3c3b67b6c7","dd5e38f061","5ad57207ab","6bcddc8314","f858ae2bb3","c5314d6508","620753fe0b","3c3b67b6c7","dd5e38f061","5ad57207ab","6bcddc8314","f858ae2bb3","c5314d6508","757875ca71","e75d74bc15","98d69465c3","1d4f602ce6","f0b8d2a779","35d6a015f3","0d76f20c3a","a1141e1167","4d8014b199","22059642d8","acfb5d799a","577b50c787","633f319d88","441847941f","a4b15254b0","02440b156e","4a3e0c4e71","b45ae7a0de","b991b6aab1","b4c492de30","5adb74c0d3","63bfcac95b","e58466b863","63c69587eb","edfdbde239","17433ff3e9","e462eb9398","c738179ea4","63bfcac95b","e58466b863","63c69587eb","edfdbde239","17433ff3e9","e462eb9398","c738179ea4","567ad69464","8b6c5bd31b","cfe804181f","6207c4886e","b65c13424b","1918c2129e","ffc8db9e2b","7d38a1be6a","20e6c6729f","c8e0e95a28","2c02bc3071","13bd7e81e3","b6e0354b8d","c961eabb55","7ac0ab582f","f675157efc","d986cd8002","5d72dea14c","83328a9e61","120ec8616a","17761d00dd","7ac0ab582f","f675157efc","d986cd8002","5d72dea14c","83328a9e61","120ec8616a","17761d00dd","083d9c94b6","1c0e75cb7c","e6023f0ad6","e0e9cd8569","4ed2b4f910","d2e21eb85a","0d5e1f17b8","b9abd265d1","3ab942cf67","4688c92550","661464abbd","cddf93ca06","3001d09c7d","25bfbf024a","3c676d777f","9158c4926e","a3b1503ee3","58a5e51e3f","f26ff15a74","ebad339c6e","cfdb5ca3d1","35867ff1a8","b019ebfda9","f6a54b3ebe","02d57af7b9","c4e010e2d6","76626d862f","7f50cf2345","4ab4a62826","37375f8952","8a420330f8","549f99c2f2","3c1c9d52c0","85434b83b7","1f5d7ea1d8","bc37526a1b","d524e1a108","4b4061ace3","57c0cf0c69","fecb73eae7","05fb47a1ad","e6ae1e1221","f3b3e712f0","c6ec02a79b","582712ce51","cb70baf7b8","4a5188d27f","92ea885ffd","bab1eb81a3","22e180a768","632b5a5011","a7e7a28d03","7060d64706","162adc2852","006db440c8","914db01733","083d9c94b6","1c0e75cb7c","e6023f0ad6","e0e9cd8569","4ed2b4f910","d2e21eb85a","0d5e1f17b8","d9ade27389","f3364f53dd","c9eba4e8a5","a9c3f6b993","3de932a2cb","c24d335cc8","09319691da","24da2d79e4","96a81ba3da","60db3ea609","7b5748fd06","a8626cb8c6","75b6d6bece","b125042e9d","7c66fe09e3","1c0fb2c880","9b8f7aadd5","26f1477871","269bb865fb","1b4259ca22","798900f1d0","f8e5b07d64","b9054d0a01","6886702740","7edea98b42","32f7edc53c","b5ae55c8b2","0d18e855e9","90b19cf09e","132cfe87f5","af381550a2","d1d4be55c4","eeb49e0b13","e7f8f244b8","5436160ff8","07a3c1a35e","f5cd1226b1","afbb4c7adf","f3a5ff2fbd","8f36b9ea02","6bece075f2","40eea0f7c3","1cc03a6a7e","8a0a403800","b60f440883","3009667fac","ad84b6326a","1a7adad888","542a742b3f","1cc03a6a7e","8a0a403800","b60f440883","3009667fac","ad84b6326a","1a7adad888","542a742b3f","30bae62382","6d11ea97f2","0cafd54e15","188706891f","c42c7ac27d","0dc63f9022","d0757994f6","32350343e1","e8dd4bdf4f","761319e7af","3c14412a5c","fb1839bf4d","47fa2004c6","db951c152c","712026c187","eec6845e05","05de5f75e9","c022743495","e31fa0a98e","8d72d5e9ff","35e91d5567","e1dd5b700c","d1e5200a12","2dbeadb652","a44918c635","7de3afa5e1","e4f50adcf3","a87a531f72","235f477e2b","15081642b9","60f75554d0","1524ee14b2","5c3566bddb","93eecdb82b","71b56715be","712026c187","eec6845e05","05de5f75e9","c022743495","e31fa0a98e","8d72d5e9ff","35e91d5567","b1df0e37c7","928ad51e6b","c56ffa37df","3cec3f9fba","c9619cc3a4","01b50a2b29","cf50e6b3b5","b1df0e37c7","928ad51e6b","c56ffa37df","3cec3f9fba","c9619cc3a4","01b50a2b29","cf50e6b3b5","e7c82c0275","3403c2797d","6d2d131020","0bedb3730f","01cc14bca4","11c69f47f4","28be4e6408","278419820c","587341d75b","7de79c4450","aaf988351f","f1a97b60e6","495f6ecb57","379512a75d","0130ebdc85","8f650fc295","9bf4130b27","c81354ff17","3ec57183dd","855e6983dc","16f7c34d4f","e56d5c4456","695cf4c027","377032a853","fc426bd47d","a63aa6ce9b","8310e53ca6","ed20f53b25","94012ac13a","6c0ff4af5d","3ac1761557","d813c30fee","6c4470bc44","8199cd87d8","31cc2ecf93","3db3af446b","44eb6d5913","19c5903488","67177d9f93","5c66d62069","db05b9121a","1cf75731cc","0d24d667c2","46c70522eb","aee863f56c","4a889b04e2","6e71163773","c5c7c8afd8","40d45f103f","278419820c","587341d75b","7de79c4450","aaf988351f","f1a97b60e6","495f6ecb57","379512a75d","6d58a26353","e29409ed89","43fc6c7994","dd0123714a","3ae180d5d4","2dc0ca5e74","adba788f92","6d58a26353","e29409ed89","43fc6c7994","dd0123714a","3ae180d5d4","2dc0ca5e74","adba788f92","a2a2d9839d","d4f35b6d0f","8c76e4edda","0e0cff5d81","81ed51712b","ca25c3a341","80195b9bd8","bb0ce86de6","e50551c2e2","48d2f19bd3","d0b37f9899","475193fdee","94ec1cbc55","e89034cca4","b509225073","043064f71a","cbf9a29864","0d32f3531e","d24c0cc692","e4cee4b4cf","2bba095b9d","575b4d6cb5","96e122824c","c2653aeeb0","3db261f322","23dbce2999","2cdeb7e43c","645b16f652","8e2399c890","652bd9a23a","bdfe3a28cc","430728f4c5","2e571d637b","5638589cbf","5d6dacdf0c","a235822c70","de1cc60665","b9ceb57c33","d3659bce7d","532074b080","6257477dd2","1f7cc283ab","b509225073","043064f71a","cbf9a29864","0d32f3531e","d24c0cc692","e4cee4b4cf","2bba095b9d","a2a2d9839d","d4f35b6d0f","8c76e4edda","0e0cff5d81","81ed51712b","ca25c3a341","80195b9bd8","614772b023","63f66293b6","21e0803118","9367d498e3","71a5be6d8f","bd91b6ff9b","e841d13c48","8e2399c890","652bd9a23a","bdfe3a28cc","430728f4c5","2e571d637b","5638589cbf","5d6dacdf0c","2b4dac3358","cb9f25a454","0b469f77b4","fd4fb36fa3","1bec234b14","801f155454","47e3ecb5f0","7172dc4e65","44ae8a5706","5a6de251cb","dc90afa970","3f5288e1b0","5d88fcd260","c251ab5014","34159c5a95","6c875bec13","c32af39e07","3af39106d3","c03bcdc459","bd1077d82f","2e9974c1b9","f9a732c31c","af399d6230","ee502798eb","a9d2293ee1","89d2f68759","1a42d35694","ca940e3a3d","617b73e117","16693f1e0c","9283901860","245a2fb6bd","b32140c899","14eab5d0c8","d9b0ea827f","7172dc4e65","44ae8a5706","5a6de251cb","dc90afa970","3f5288e1b0","5d88fcd260","c251ab5014","8a47e7ae4c","95c1ebb883","cafb7ff1ec","61a55e243d","b17baf91a4","42511bfa38","d94dbb12ce","d5a6e849e8","cf50c534d8","5fcfa4bfdf","016eccb4ec","20c6839a75","8d2f1f3edb","b6feae22c1","2783073123","176cf49233","f5fcc61e8e","10e4c335bd","b6c209a273","83e39d2a9f","00d079e0eb","5ed58ba31f","af03369216","7674216a2e","92261f137a","4db6c30cf1","1f0d623c60","4ea4a2f379","b437ddff8e","baddb5ff14","aaee5bb969","57965bf48d","c3076de60f","282a7bf6ee","a130c7a3ca","eb6b4e885e","33350ac8aa","c68c2a305b","6ddd9aa018","7430694869","c98ee941af","02bd40894c","b437ddff8e","baddb5ff14","aaee5bb969","57965bf48d","c3076de60f","282a7bf6ee","a130c7a3ca","b05c29c382","258ce6c614","90a88057eb","2348c5f6da","f0c9e533b3","3016cadd77","62a634d3ea","58e8be4da9","d161932aa7","048073b629","e987a01296","f8279e110f","42b12b54e8","921684044d","0aa4898436","0846675d5d","f197e662bc","c0c08665b0","7feb39d9eb","6554cd3412","0c3d048a85","64f7e33d05","f14e2cb8fa","007b3b6094","398eb4a7c0","e5bfb62e1a","608ecc7f9c","8c280db371","07cd39393f","c6d9e94c35","04e898a5d7","22d7f75643","ea837df2a5","627edc7382","c2c4913bd1","b8a0b6e2de","cb4015f752","9c1cd0fa2e","60c31fdb71","147debb1fe","b4165bdaa3","1f4f473f8e","f22be226c2","1a086aff33","9a6ea254f0","109b678655","676cda71a9","5f24dca95b","d126278e6c","f22be226c2","1a086aff33","9a6ea254f0","109b678655","676cda71a9","5f24dca95b","d126278e6c","e19781cfca","fb78dabe41","edf224b293","eee06de2eb","af5123e308","441b59936e","240947efea","e19781cfca","fb78dabe41","edf224b293","eee06de2eb","af5123e308","441b59936e","240947efea","7f32435a59","221e5fb01a","fac75c5717","5ba6f372bb","25dfe182f3","eef683a364","7fb41d8870","a32ab153fd","03812671ab","e60b18840f","492210aed3","e9b4e634ea","46a28903d2","239a39f9b1","a32ab153fd","03812671ab","e60b18840f","492210aed3","e9b4e634ea","46a28903d2","239a39f9b1","59c37f7b53","eea74f808b","7d048674df","9835631cc2","d9a5b9e32c","38cd7024ca","e41e09c7e7","a0ec9ec45f","883dbba59e","93713d32c8","6a0807f1c7","3b66217dfe","583411cfe0","a386044a5a","b17e61d360","a24f4453b7","f1883f2865","d1aa735fa8","9c79f10413","e059f4826d","58fd784495","1cdda6a9fc","8f229df3c9","8c7d17175b","c84721d115","3b72e95f76","68e554f49a","9fd37784e8","f176aeca7b","3fc6d11ab2","d7ce7f736d","13d20bfa83","137ffddce5","0c42571f59","3cc73f11ed","7c25cbe5d5","b55b5f5419","24f42b2a3b","44ea903bdc","14c3154527","6580310cca","790acd140e","fe94ec2292","7df2ec8da5","ccaa09be88","9130b90aee","7a3e14f21c","299390f2a3","341d1f68b2","da8dd602c6","385d28da32","f9f24b03b7","b467a289f6","15adceadda","901028028b","41080140b3","f564721a70","2c424850a0","1ada8e14d7","dfe47545f9","5f804b323e","09c3e3b608","547453aeef","f564721a70","2c424850a0","1ada8e14d7","dfe47545f9","5f804b323e","09c3e3b608","547453aeef","a2d761e456","a4c381ece0","d802106fad","f8a50f3787","094511568a","9b6b149e2f","ce1f6af565","93e444a361","e03f2a5b34","126d83b05f","a986ae06e9","15646eb4ed","1b1fa3c84e","fa499b80cd","6600ca8530","cdf6b18d61","67627e0092","2526ac25b3","76e1c49fa1","6303b6518e","9d9f64db07","7b392305a0","987f7e3875","d2bd1ad595","5dfd992b7b","0c9c40a2de","3eefbd42d4","923133d3c8","93e444a361","e03f2a5b34","126d83b05f","a986ae06e9","15646eb4ed","1b1fa3c84e","fa499b80cd","db6152099b","aeb6fefa91","942433d094","4c718b3875","9174384303","075d88913b","3f26b4eea1","845b18e509","a4cb1196f0","13777ce629","db747ba5bc","5876e4b692","e27d8abe43","a36c660a8b","5f10303f51","e8ecc8df92","a5e7b101e8","4029b4dd30","2b196e4795","40d0d01be1","a473abe509","845b18e509","a4cb1196f0","13777ce629","db747ba5bc","5876e4b692","e27d8abe43","a36c660a8b","939ca781ff","4841ec69b6","0c8508dbe4","8e61f6f3ef","9d46f38666","d34dbc95c2","e86ff19091","0450b410bb","b7ead1eee5","99a359c531","7e03838eb2","ca1f5f9b0a","2088f40a90","5070e124a2","50c1dd58be","c550a0aa35","61e3391564","22162da530","2c2495728c","845cd25a4f","1ac1700656","eae585f111","51812f673c","2755fe5bbd","9ed3dbc9a3","b95de364f3","2d0e96e7a3","0cca44c99d","4d438c0e3a","03de9824bd","5b133492ae","a0ea4da024","3d72730bcb","86a10ecfa7","be65362e0a","b71072ac2d","c6866e6612","13200aafd0","87a9d12dd7","cf3d359ecb","68ce39c186","77364dcbda","1cd8de6b81","cfd6a77e63","ed8ccfcded","ac14d46ee6","2a70284bdb","988d44ac0c","fc6c2a5bad","2a19495909","bf45f2ed97","63ca60bc44","d529752b8d","0c85be8adb","76d6b24c97","b22a45ee64","788a00735a","2da1d766ad","769334d683","f1ead2bd14","008f07a33b","5f2c8b90ce","80e624d8b9","50c1dd58be","c550a0aa35","61e3391564","22162da530","2c2495728c","845cd25a4f","1ac1700656","11b8d7bc6d","503fbdac81","c252791c92","cb77eff16e","1f2132d14c","3ee840b227","3129a15715","4194c4e7d5","77c8fac3b5","06e8a9e20c","47f621a110","60e60838a2","9146365d1a","4df57dc8b2","e63b96244a","ab35f94819","d7e3831a1f","2953e2a4f6","6e9e3a7772","0d8c0bfed6","cfe2ea9b2d","9e955ab66a","fa19a97654","cbb5b08590","cabd0ef15f","71f6e2390e","d3cca6ef39","ac19dc2bb4","ddb800e727","6100e1ab87","31bf0ad65b","6fc2553e43","8b0b53a872","21749df2fb","a13ca8b543","e63b96244a","ab35f94819","d7e3831a1f","2953e2a4f6","6e9e3a7772","0d8c0bfed6","cfe2ea9b2d","e63b96244a","ab35f94819","d7e3831a1f","2953e2a4f6","6e9e3a7772","0d8c0bfed6","cfe2ea9b2d","b64c0a010e","134f9e4c9b","bf5458d4ce","e738252506","c4e5c26115","9ddc1d0eb6","92f110d9f1","1ddde037fe","42430b76d1","9b2d4bcbe2","2ff04cc727","f98e572f27","e9daf08e9d","783dd29e5f","1c59347ffc","8174e610ee","a3d2106768","621c29bd5e","c2e20dc0f7","4e03b28f61","a4b5ee4d1f","b4133d3756","935927619a","d08fff215b","b34c49af72","e909a3f03a","03032f955b","c48abe1333","8b79e0848b","47b438ac1b","a1647ed10c","a20dade9e6","27f88afad4","a1909c2536","4e283c10ca","2e8ff65cea","2cf16f4305","bfbadf69f3","27346fc61c","3bfcd9badc","11ef8f8b41","e49c9dda41","d2230bf433","0d44b40700","c15a66fcc5","ce5ad7967f","b0eff6bbec","5de5b9bc12","65ab7b58e7","8b79e0848b","47b438ac1b","a1647ed10c","a20dade9e6","27f88afad4","a1909c2536","4e283c10ca","c71b264ab4","7f40870576","6591c084c9","cba1b39b96","a338552036","70c633f8c7","1fa53daef6","eade3d8b90","90f4419dda","6d27846b50","8dfa40b143","8a3ee95f16","c6d3a312f9","58b9cbe21f","e61eb760f2","e24253533a","c79d06a236","a602cc82c5","9e331b5e6c","00253b4fbf","92142c22d5","1b900589a9","cc7cccac5c","4722eb9a02","9df11aba58","bd6f0e76db","5afd68ff23","ded8a9634e","1b900589a9","cc7cccac5c","4722eb9a02","9df11aba58","bd6f0e76db","5afd68ff23","ded8a9634e","74cf0bf6f3","31e0547d86","0440dc649e","adce9e4f7e","7bb61e6621","14ecabb149","b39eeb094a","ddbc7f17cd","7268050346","2319f37f38","16113f1ab2","7b56ae21b7","5939885688","3b5a875353","ddbc7f17cd","7268050346","2319f37f38","16113f1ab2","7b56ae21b7","5939885688","3b5a875353","afa5e30a2c","c3fab28595","70c65f4fb4","001a1bad33","d4a4b1f817","452cec7b97","29605ff927","826d4443c3","030ff41193","faa50ef256","0886b87db9","7438b1363c","78258d7dbc","cb4ffe93ca","1e7e600e5c","3129e3ed4a","8a64c4b924","4f8742e234","ced37ede85","c6620ccf61","796e644d38","6d4c2bc920","668bf67b7e","47f1860416","abc492d818","e00e134d21","fc47545868","6857cbb6f9","848fbb2d51","077bddf8dd","56e07ec1d2","3d13bc6fed","321cbf95e2","dbb1baf24f","d7814e9636","7a7389e17b","eea3658070","6ca22b66ed","28c6b6733b","31fe81c0dd","b0ef6bfc97","1c23ef5a0f","b396dd1af4","540ba351bd","746e4c96d1","f28f82a549","79cea19fbe","6962f6cc80","b5e6a544f7","6434aba8e1","ecce477f57","a23d4d3111","8912091531","5b28f6146e","e488abf964","5514187b64","6434aba8e1","ecce477f57","a23d4d3111","8912091531","5b28f6146e","e488abf964","5514187b64","89645516d1","5ed09b4cb0","5130a6bc4a","5a0e5e816f","4dfa8cab89","6260ae48fa","4c10fb39df","d26c08a6b5","3f6c0c49e1","20ed2762cc","790bb41248","0cee392b26","ca1b7ac22d","dc8939f908","875c1a6ef4","ad7d43f781","ecfeaa28f8","91515e71ae","e754bb0d0c","ef94dd17af","cce8e43174","623ff43064","a738552fab","408318f7b1","c61cc859cc","ff9daed86d","47c7f9f000","26eee11513","623ff43064","a738552fab","408318f7b1","c61cc859cc","ff9daed86d","47c7f9f000","26eee11513","a77b22bce5","5607914696","ff1fc4763a","d0642b9d8e","e26cfd1202","a1d0052afb","f21758c5f1","ef84d2e4ed","7ebd96058e","ba811c4d2c","8eb2a39726","526ad86d27","be7edf68ae","91dbc88c74","80735d5d71","0f035de7c6","3205382524","004e9b4c94","3cb754007f","db4b4efb9e","6ffc89dd71","80735d5d71","0f035de7c6","3205382524","004e9b4c94","3cb754007f","db4b4efb9e","6ffc89dd71","c24b2d0322","4a5746fcb8","2f0b94a78d","36a22210e7","aa5477e6a5","677753f7da","58ebae352a","65c68ccda3","ff6771ebfe","c89b0c39cd","07e18c45e0","653aad0614","1c31ce3586","627a015e00","b52ce8a08a","d665312f8a","3bc52840ba","a563a08f7b","dedc2df52c","d57cd214fb","c20d08c06f","b52ce8a08a","d665312f8a","3bc52840ba","a563a08f7b","dedc2df52c","d57cd214fb","c20d08c06f","5bcac1151e","c1e6ddc26d","afd46d5568","0acd56469c","2975e0efb2","f17338670e","8bf0ea22cd","539604fc91","d0b738589a","2508e44f25","3238dfe64c","f8bcadd3d9","508c5a7006","ed1c004d59","6d25fb6040","0b043281b0","6cc75844f3","da2995316c","336d3d1075","4ea1048861","47505014f2","f893068ad0","46129be1ca","aa8142ecdd","0a568dee62","9b727c349d","1e6679b244","3c73542305","62e2be9843","19de2fd5af","10391e30cd","5f05b58d6d","3110ff75ec","a2fcc304a8","57e201ac86","34f0531b5c","e0fe8103c1","4eb9b83213","8855d6bf5e","50d4d80803","6cd5cf0db4","6bb2497530","89c48684df","09b07c7452","1441d2e14f","ecf116ede0","444a7ffad7","2ae99b371a","bb6461e540","3cf8ab05e9","e56ae5986f","d2c2c962a0","a2b1a10e58","44ee10686d","9a34533fd1","5461a5af91","c23ff86e8d","50757ea823","468ab3fb47","5fa9e0f95f","ccad00c895","b8f0ca25f3","1faa0a72ef","e6e228af07","6b95f7b1b9","73a19ee538","7adbf7b5a1","20eda306d2","1466231331","57405ba647","0af514080b","1a7507b52b","3a5a3cacf0","62310d7019","5173a5d77b","8178eedcdb","62a1863b0f","37de337e06","3c990782fb","d92306f7d5","fe722c3511","152474cb5b","fa369e8e7b","167ee6056a","2239d57f2e","574c10aee1","71aa4c6600","24cfd3409a","247a0fd87e","087f3158dc","4918ad1667","2239d57f2e","574c10aee1","71aa4c6600","24cfd3409a","247a0fd87e","087f3158dc","4918ad1667","faabe72713","420abc999e","fa7613c2fd","2722a9cf13","19abf4b827","05754fa0b4","1b86a020da","6027061ec7","192a2d553a","ef3b0e5b57","158b6c0e14","a226382426","8ccfc502c3","fdc06156b5","fcf8e9af3c","09e523a1e0","0984ece456","130c4f3932","c88f2b6606","ef57b4fbfd","245faa36d0","a4c786aa00","2ab5b5a058","c3b5317b7d","22d55df1e5","6fd79bd812","d732f30f76","e0d5fd4827","4a8df18e3f","fa09106b19","c9ee269711","84fe666128","1d7ed724cd","6df1634d77","0e0c273c05","4a8df18e3f","fa09106b19","c9ee269711","84fe666128","1d7ed724cd","6df1634d77","0e0c273c05","f79752d60d","96d6d767ef","8bc77c948e","031a6a1863","c503638142","4ed902b6fd","5f08f7c4a0","b0cc8d679c","303deac1d4","9ca8441f25","b62cd9a661","bcaece67de","57ed33d3b3","d51241d77c","4a8df18e3f","fa09106b19","c9ee269711","84fe666128","1d7ed724cd","6df1634d77","0e0c273c05","5d1f6c28f1","06e592682e","649e9758a3","7bd6ba9fdc","a6cc0f9d2b","7183c4d776","6c5f7fe81c","2f66730bc1","32e21fbc08","8228b64e93","8accd5602f","73155d95c9","ebefac5307","154558e402","5d74e256ed","82d6bf7049","0798efbc0d","f209ff906a","bf95213b52","d6586d136b","9a6c8d2469","5d74e256ed","82d6bf7049","0798efbc0d","f209ff906a","bf95213b52","d6586d136b","9a6c8d2469","11ad196abc","dbe891e6f4","46754940a4","740b368ab9","a402861601","f1a61fd486","9be19f7797","4dae0973fa","d5a8b5cdec","04ab3c0d47","63008dd00d","a862ea2720","75c2d60af3","35409c6523","3518ff059d","c8705043c2","8369aa98cd","057fddd76d","076ff97857","a7513e921e","2b34e12640","8c5dabe652","28e3effd84","7799d31528","c4fbd6f4ba","4070b7693f","33f69c3327","f7b0d7d8ae","db2b7ed107","3496dad4a4","dd5bc933cd","881f801781","f897f32ee8","74d0a70249","d86fabfa78","db2b7ed107","3496dad4a4","dd5bc933cd","881f801781","f897f32ee8","74d0a70249","d86fabfa78","7e71b75dce","61ea0f95a1","d03069ddfa","a846abc1a5","9d49c4890e","091819891a","1026b8ba29","27c33179ea","faac5d35e5","2cab751648","a1f223c2df","c39f267dd3","2c506d53e7","ae0cd32896","f909de2f89","109151881b","fd31e430df","a6bec9f03b","5329ee713d","0b3b9da998","c624c0138d","7306e95a57","4b50f9608b","929e4d97e7","b382adc0d1","332f0a888c","42fd4659f2","de1ff5348e","e6ee3d2300","4014b8f909","745919251d","e8abd12bf5","26e374272e","0090a3fb97","5e860e7d6a","6054b79f6b","61824b3871","3f98936916","5514457fe1","9c72f654c9","11537ef985","8c8f00e0d0","31c7345ffd","5440abe95f","7bd6656a13","f41eb36ddf","79f85d0258","695847342e","856bc4cdf6","0224035421","79d1b08e38","b73e304590","7904e44102","d507684303","ec0f068d1f","09d02a95df","0224035421","79d1b08e38","b73e304590","7904e44102","d507684303","ec0f068d1f","09d02a95df","e44682bc73","4b6464722d","df8ee1f7ee","29b6086f2d","94e9294720","c6b67451ac","7f8de87237","7aa4a294d3","85f826917e","7a9423f0e2","da08ccb889","2ee8e5e3e6","f2b3cb1e44","f7b79a171a","976e218ce4","e6c0fca4f6","8781c63feb","c37222f03a","afe843933c","18c8dc15b0","f6c20bd163","8ec6c913f7","f8bc2dd61c","c77e530e21","d2d0974009","3cc8c2bdce","ffab251401","5276e9248f","3ea8e794c3","ea09069aca","56dec6ca87","6729531a31","15bb403b36","de5e9ab589","605e4f519d","3d6bae5648","5ded021b65","c8b73b1627","2fb017ab6e","c1cb7f15ce","d9a9ecf678","9302e6e10b","3877de6def","fa0b906998","c14aead665","d9c74c44a2","75c239cb07","251e98a528","be788abdd9","3877de6def","fa0b906998","c14aead665","d9c74c44a2","75c239cb07","251e98a528","be788abdd9","cddee2b4d3","141a6bc555","283df3a3ba","2d793282bd","f46ddb6e94","630ebbdeef","8e80d20fb9","340e7c5b50","fe2fa487dd","88c413a34e","5e5c82a5b1","a94f4bd3eb","b2cdba3885","4283bc4b9c","9d86a8f55e","d9798806f0","a0e3977966","7c61f6b7ae","632e15a6c8","3803413ccf","7f93eadb0d","8397f7ca10","9c0848b25f","b6fdc23f9a","918231a59b","3ca79f0ed3","967e7f945f","8a73c26fd6","340e7c5b50","fe2fa487dd","88c413a34e","5e5c82a5b1","a94f4bd3eb","b2cdba3885","4283bc4b9c","354b825e9e","5d2fc90d7e","16face48bd","d36bdb90e7","aa7306603e","e09ae5d47a","a458144b64","5686e45314","5cae048fae","5b6fb03c61","0f03aafbdd","45b41c28e0","3e7c5beada","f5f9e9bd21","5686e45314","5cae048fae","5b6fb03c61","0f03aafbdd","45b41c28e0","3e7c5beada","f5f9e9bd21","5b2bc858d1","d97cb3b3f0","70a81f0a0d","b1d64de098","b108911aaf","f7eb7e7575","db2c890d06","7becc5dde2","fcb5a6da57","a9641909a6","e353013782","2ac5be9ef8","abe5c77b9d","b9da4fcd64","18552bd3f2","f7e84e8154","eeaa2e195f","d65cb9636f","f35a5539f7","d6cfd9d5d2","87091c443b","82624528c6","85c9d05232","a781246209","8f00e460f2","a46cb17db2","8c206e1991","394da1e226","7926f5ed46","a87ddb1d2e","8eb8167399","0a3293c208","f552a50375","a08dd57209","cef686f410","7926f5ed46","a87ddb1d2e","8eb8167399","0a3293c208","f552a50375","a08dd57209","cef686f410","aee29dd66e","e4b8241262","27a2442f34","279cca936d","19bffe9298","2a1697fce3","018cf9eee4","f410213225","a9f9c70e6d","e214238d8a","1cb1264026","3519c1b834","40c717d8af","a05178ab36","6ff98bf792","e555292d5e","bd74c5f6f9","a08203f1da","dbf22d639b","e71d0bf761","bbddeb2309","17b1d4221c","ea6ced3e36","408f7b8d09","f7ff9554d9","af3dbf30d9","385c8069c2","47767802dd","3ff0d8652a","9c2fcb7a49","48c8c5536e","6d09427f1a","69ebe0e31c","d709824b0a","d11f36d9fe","95f5a28d8e","abb01e0d6b","27b4fd954b","e7088fa31b","56840a7909","81599348ee","61a7940822","af3d943722","06cad5d024","8185c73651","2aaed40a67","1a1216c47f","21befb4441","33f1174eb8","eb4e8017a1","a78114a2f6","5ce3abe1ee","c4e6446f3c","0835e1cd93","44b2b343a1","41479d54e5","fa47c83e80","656241f341","f5b8d460bc","77f88179b0","51427b596e","caadac1591","3a99bebdc4","25a5d5823f","a0bf4eef6e","a79823bbe3","8f07b65902","311c3b3ffc","b5fec90605","da475dfe0f","25a5d5823f","a0bf4eef6e","a79823bbe3","8f07b65902","311c3b3ffc","b5fec90605","da475dfe0f","0c7d2a1488","6b4caaad56","4a518a9825","2634b6a73d","8bdc8f82d5","b574febcda","7ccc604cd8","90473bab1d","59436f680d","be839ea818","1d791db49e","6e836a8989","55c1b5ab8f","f66245d91e","90473bab1d","59436f680d","be839ea818","1d791db49e","6e836a8989","55c1b5ab8f","f66245d91e","8613063ee7","4a98adbd61","e4177235d8","5bd41b19cb","dbcad965ca","59b37d957d","9d96cbb3fb","6deab2715e","3e8d0bef3c","168eef96a9","00c5684232","4c0d112e1d","5f748f4790","6a4c57de77","a4b10175b2","28fccbd699","186b1b82bb","5846e991f6","9fcd3560b6","5897969215","435cb6c159","98417294c5","d1f9ccb3b2","afada719bf","46324ca969","3863754c27","250dfdee9f","5093f64e89","0dc4cd761c","1dfb2379a9","935ea04dc2","bb6b4f4d44","aa27ba2c27","67a714b436","87bd2f0753","56432f2fba","9f2f1557f7","8fda75ee41","f2e234d1fd","77f5c5e162","b53cb7e7a8","a044dff085","56432f2fba","9f2f1557f7","8fda75ee41","f2e234d1fd","77f5c5e162","b53cb7e7a8","a044dff085","07e54af481","469984eb32","ff86719325","0837533757","f6e48ddfac","0a5108844d","98a82e64bd","bb8612eba7","13e10945f4","10db24412a","9ac5fd1304","c7e5f44aff","55deb64d56","19aa038ad2","61df195341","b268181e68","5a24f14ebe","3fcf669a5c","387aa7acc9","52fa442308","7e28e8d340","616f798ca9","cfa0b4295e","5255fca76d","b9cffe2438","9aa8286a3d","dad4940ddd","04736c007d","ecb92f8a4c","3026bb8e2c","0e7afabb78","e1f39ecd89","210c3f34c1","ccccacf423","f4b6f7cbb8","d89d7f56d6","a34503cdd4","d30c2fe9a4","8287da5615","3cf4e21fc9","7c8957af9c","c4bd6567b1","35a492b547","759d281dbb","c91abf89b7","86c0b81501","60e40033f7","cfd162ec7b","580b47f66e","e50ed9197c","0b9b541e06","d46e14c0c9","b7d4fd8afe","05cb6c748f","c3c44d045a","1047a95f7b","94ed2f417d","818afcdf00","34a191ed9a","27761a2549","7903622fcb","7aca87cbb6","c9a42ac687","15fda69d1c","65615dec19","1641e72906","41daab4dc1","93f4db1cbd","f83e98d053","dd876ced8a","3366e9903f","8ed73471f3","569d0f4925","a5c4f00a12","12a837cc2c","993ae03deb","6a94e55696","3366e9903f","8ed73471f3","569d0f4925","a5c4f00a12","12a837cc2c","993ae03deb","6a94e55696","82b68e0698","761e217f15","8c67deda54","d1cbd8a723","b891e9a589","2a0145a681","1c1127c343","2fd393d84e","c17a410f3b","1ea19ac521","8f437657df","083c7fd78d","5395861900","67f84f73af","77391b290f","109e5c1823","40f8cd5984","34d010ca10","356d0ee813","7303123ab6","3ede43f9fa","bd9a2b2096","55fd8747be","0b0bc5305e","78c17684fd","2cc6cfca77","a32f879f3d","de56608886","4ed7cf680c","b446c5120f","2f1bf1eed6","9439ae319e","a1e6985fe6","60c59f6112","20366615fe","eacc4f3a9f","a647d7f8ea","71286d0f33","acc0632681","56efd72785","a2227e3b14","93a6a02192","eacc4f3a9f","a647d7f8ea","71286d0f33","acc0632681","56efd72785","a2227e3b14","93a6a02192","7adb12cf6f","8ead2182e5","63146127ab","8ff180a041","a0304b0cf1","b2bd7bd42c","255cc5e915","7783755348","2ea08b7628","d275fd6301","3ea0e9df3e","ca2d89c8ef","e27294cb7e","810d608cd3","9205dcf828","4fe3ab5289","81b29093de","c1a301ad43","009a62065f","c00e4e0ae8","5928fddb57","a57bde0749","cdd26b4d7a","e494f323b2","cbe876ae07","262867a117","73ba96fa54","8022c4b7f3","77052987aa","8063215ba9","fe7f67f922","ea9b7e1eb8","eafb45b40b","e614360984","8857012ed7","6dd61317c7","0f30098a6e","8a052f17ba","988cb29361","da5a1c67d1","3461a590eb","cc603e2081","c2ace126d6","c27c94b268","02514e5c59","d37b893f97","d15e6a195e","da1600b7da","7f4db4d34e","b59b85af18","bb15ef1f1c","234b6b346c","99be8229ea","9ff226ae55","8ac6ecfb60","f374036cbb","1d308b2288","a4d1483c78","b65aac56a4","ad0170a823","7c8f7577fa","c64d1416c6","82669c4ca7","a2ccba2533","cdd3bf599f","a46497ae21","e18cc885af","c05a7b3cae","74fa923b1b","910139f14f","9411fe2eee","58b876634b","1c7b348a84","d5ac25b546","5b627ec646","4ba40bdaec","5a0c1e7e96","cd7826317d","3cf9210360","2a85f3ce96","03060c6be0","edfcda829a","b283afb76b","99afbe1c00","bd869bb89d","9a84dd77b8","147f7b8026","8cb69a705a","7c9a54afef","42c093c31b","2a1b4b49f6","57050bcd15","2c04d6984e","1143391b1a","647578ad40","21ed73d4cc","fd0ec1ee87","4482999727","aec685487a","f47947d88f","926f986647","59527ae937","3e500dba9f","c346285d34","a117e9be43","a57bde0749","cdd26b4d7a","e494f323b2","cbe876ae07","262867a117","73ba96fa54","8022c4b7f3","89f7c4283d","1f5367bbd2","5c775f57f0","e77df2f063","5faf8fc07d","d6f13ce4a4","9dc58e295d","89f7c4283d","1f5367bbd2","5c775f57f0","e77df2f063","5faf8fc07d","d6f13ce4a4","9dc58e295d","a94a0de812","9848556294","e2f6c4ce4a","f095f7d138","30e051bd35","117e5f3848","8dad51320b","d77d1b4fc1","f94964c10e","c2965b8c3d","9ec05310b1","b53a345457","6d8d2be633","041f5bcbb7","83833da5b2","20a7636d76","68b0b7b6c0","6a555ad7f1","5ec7de8f92","6119ce9b24","b4baf640cf","d77d1b4fc1","f94964c10e","c2965b8c3d","9ec05310b1","b53a345457","6d8d2be633","041f5bcbb7","399e891184","19f0779fb7","36fa34670d","25ec7fa028","505fad3d97","3490d4f781","9752b7f3c7","90ea5aaee8","403cf841cf","629926eedb","763d7e62b4","1368763b1c","ff82b54159","a7de5128b4","52218b9671","0c95a1146f","e83f8df937","2d338e60f8","93c9768433","38722a0b2f","797b5305bc","6620f619c3","fde912cca7","b63e16372c","3b311060bc","27c3f0ba99","d0ae0878ba","fd3aeefa44","c0142df21f","78d5e8904c","bca7a5ad53","092b3986c4","3f8697043e","f3ecbdb61f","411b97df0d","06c7c4ce2e","02d5d977ec","43e5229193","95cf5a0872","55fb17ccb9","4c66638741","4ef01e4928","b9236feef2","7a8b683111","6e7cf087f0","5872c39066","aaeb8a9ea3","883db9ec98","013b2bdb4f","b9236feef2","7a8b683111","6e7cf087f0","5872c39066","aaeb8a9ea3","883db9ec98","013b2bdb4f","dad6ad193b","6683afca6e","5c37a89f7b","9bb6dffd65","f4ee71f8c6","341bd14dc5","ff6b7d5732","24e937bcc1","181045d5f0","bd67fbf601","be2e3b3a56","f08f9997c7","6e1d82cd9e","ecb8c0ebaa","b966456110","73f889836b","e10bd6ffea","4e7bdea3f4","4aa6db1e95","9b72073493","e7780af10c","b966456110","73f889836b","e10bd6ffea","4e7bdea3f4","4aa6db1e95","9b72073493","e7780af10c","84a9912a2c","84f9345ca0","ba6ee42ba8","189fff07e8","a9180b40a9","413b0d427c","52baeaf5ca","84a9912a2c","84f9345ca0","ba6ee42ba8","189fff07e8","a9180b40a9","413b0d427c","52baeaf5ca","3b9453cf9d","c1baf1ecb3","ee13c5c0fd","902012afe6","5f95821852","3bfd5263b1","2c79336e70","3eb7f503b4","0b597fed24","dd5e2afdd8","9d7f39119f","69656f69ce","2e77acbb2b","6b2371847a","88d9258df8","bda3d656f9","c5d15a24d5","cc61f39be8","db30a04fb5","0697b1407f","ba256f6f39","c013134004","5be9e8f02a","13b88f480d","8160a1ce56","78868f4fa7","dcd06658c7","33205838e2","9b5993878e","f6149a9c87","9d6bc83402","da8a2db771","14139bd9c1","fcab124a6f","335c62b2ec","52530a91b2","f2537d9e19","6d05653a15","9f122f6381","d41b851e93","4662c0b4e8","b774244267","88d9258df8","bda3d656f9","c5d15a24d5","cc61f39be8","db30a04fb5","0697b1407f","ba256f6f39","60f53e0e0b","6b556cd817","2e49a52190","e7a716265d","133d2e14e0","3217f72ea3","46f5f60960","6260cf6837","7284b14513","195eee87c0","d2e76dcd42","6517045e80","4587a27fc7","78d6cd5aa7","46145fc7df","8e3f68d720","6255f27897","a563a6cfd8","d8c34367e0","9d0d381711","f8de473fcb","1c733f39cc","22facd3c2e","42ae340a58","a5fb1e311b","f1a16e5d73","c11ae4b76b","9171ad8ba6","52c8621f19","bc97f41cba","408493ff73","9842959a30","06181a94d8","900fcd2692","71ae9fdf2d","46145fc7df","8e3f68d720","6255f27897","a563a6cfd8","d8c34367e0","9d0d381711","f8de473fcb","46145fc7df","8e3f68d720","6255f27897","a563a6cfd8","d8c34367e0","9d0d381711","f8de473fcb","c016eb502e","a981887369","0a299fd9b6","33f979c39f","402d603483","673906d06c","5ce4f873c3","d231089f16","4d5d1402ed","14e04280d3","916c5119a1","2dbc939f34","44501b4420","6d32b65730","7c735998ae","e3ecd11f8c","3163dff4fb","c2b883f88a","cc6bcb5c26","d67f171148","4d7e354d74","44a9e4ddaf","25443e6087","153f6bd176","50f5640be7","b63e0b0cd7","e5c16f6695","2743101c93","1f91dab5ed","c841952e7b","87f173c722","47ff73e077","775e678b47","63ca59c23d","ffec0841d6","1f91dab5ed","c841952e7b","87f173c722","47ff73e077","775e678b47","63ca59c23d","ffec0841d6","c86d99e3a5","f2fd4e6365","6568272afe","74ef9ad060","52c2884145","77865da8d3","8fecc26fd3","c86d99e3a5","f2fd4e6365","6568272afe","74ef9ad060","52c2884145","77865da8d3","8fecc26fd3","8e9e550155","db3d6bf3ff","768deb862c","e0f42c1847","aa4a64fbd3","4607ffc2fd","df459ccf12","4f166f0106","add55248e2","ae1b5465e8","e08bacf73f","6df54192a4","a8759303d2","50a7983363","839bea3ab3","0f1ce5f5dc","49e2d0626b","972b408eb6","7714ce8540","1bf1d73ece","90a89d1f9b","4ffebd0ace","857168eacd","eb248767d1","14dd5143b1","ba4c56b57c","3b6b04e90d","f380d3ff87","5452f49fb9","7e7ca36157","60d2b12fd8","ed55c506eb","e6b1e695de","ec47bc4acb","494c41392b","1b65402d04","819ce78a3e","b38d57ab27","15dd4655d8","560254a605","b47c38e935","6f5055c54d","656343ded4","4dba8277ae","c2e0e57ac8","91755f902c","726f1062c6","a8111acb04","fb03561ba9","87c71e5127","8d88450df9","d3d0658881","4600a43a41","53c276dd05","3906a1e075","c0211e6d68","468ba73936","11dee120ac","ee06aaa96e","84548cd2a8","95c3144481","ae87ba6389","2359a33717","11a42ad4f6","60441976ca","516cfd925a","9d98d53829","c92f0aa3d7","7dbf1a43c5","600af92a70","11a42ad4f6","60441976ca","516cfd925a","9d98d53829","c92f0aa3d7","7dbf1a43c5","600af92a70","3681cbd1a8","30c6e328c0","41f46eacf5","721a869712","943aff84b3","e4b9c0af29","b50e36d799","53274b1b9e","65286718ca","55df104341","7e1fd14f1b","46a4de6104","60ddfbf41e","cf7f5cf595","e0a7e33895","3a313e5c16","0829fcf3fe","15b90ed378","300a1b65c6","b5e254242e","61a72abc2a","5452f49fb9","7e7ca36157","60d2b12fd8","ed55c506eb","e6b1e695de","ec47bc4acb","494c41392b","5452f49fb9","7e7ca36157","60d2b12fd8","ed55c506eb","e6b1e695de","ec47bc4acb","494c41392b","542480d292","7b3eaf0387","ea1b948511","264d95eee3","27fe23d6fc","c48f53ffa9","c1f11ca791","bfe2fe219f","edf2732888","12e9378a44","85c08cdd9b","9296896e7f","e6c5985190","29c14a719b","bfe2fe219f","edf2732888","12e9378a44","85c08cdd9b","9296896e7f","e6c5985190","29c14a719b","1eeac4b36a","6685575952","cbbf05214d","262c971d29","2cd309613f","eb11545a8b","e874538d40","dc10d61c51","cf8519123d","b74bd306f0","2d582c1db6","69e369e62f","2457c95f43","46dc998363","32c7652e90","02c8924fa8","d9f524921c","776864c7bf","1ee7e7d659","e50d9e477b","1956d0daa6","2924ac9423","1bb35c2530","338c19719e","06dc84a57c","15d6cc2c5d","71ce708306","dac04f8ea1","b355bcaa80","8f38e3f93e","155f8c1731","48df803238","8fd689c448","46d58e2b78","847194b0c0","e5fdd2c7f5","c4469185af","f8970470b6","a8cd5839fc","4b0b9b2170","cd4a4aaad8","9102d4c44a","aac1813fba","161d39cc6a","bf4861ca58","2ae690730e","26e89edeab","73214dcb1b","046c4dcaff","5ca1278a1c","3947c47f28","c7b650de25","3e77c4e378","b7af189458","7d677a0a28","3147764b5a","a3468b2a0a","e6dda5f85a","3cd1a7f467","51cad1ad18","3d9a29c7ba","22c8e8d228","dda6052164","4649529252","9c20cfdc0a","eb51534227","c868526fae","69fb538ecb","441b02a3f5","1d64ab83be","d7c786c6b1","d8c0f9ad6e","7946146919","d3178d3563","77bed8ea96","1e831e65df","d722df3bae","8e304a495e","f1e3fd21e9","4df7a239c2","62989bd6fd","35b5423958","fac0510357","7620dae16d","351ca1306e","3ab35e5503","4259cb4d3c","3197feeab7","73080f27a3","d33cbd9b84","71a1112701","351ca1306e","3ab35e5503","4259cb4d3c","3197feeab7","73080f27a3","d33cbd9b84","71a1112701","e4dd471a89","a722a5e971","e5b624715f","0798b89597","d61493fa6a","060da37c88","5c9cec6383","dd22bf3c79","c55261ea7a","e30f482f5a","6a0f60b650","34f6d61f8e","d6ef38baa1","0eb01700df","fdd3dc5444","f328d867f4","13876d387f","d25963127b","0378a5f57a","1cd2f7488e","eb06d47dac","2642420cb6","99c1431c69","5886b45021","871c383422","075f13c8dc","c9b65a1747","b6bf71c6a2","92c69805af","cf24b37198","4401ccf226","5bc2345408","5031d5fc74","85e7f782d5","49cd99a6c9","5645d0b99f","adea129386","fe1e54a1ca","77f9548784","4c0609de47","165e8c4c47","3cffc87b2b","ac1b4c5a57","a60347f6b6","3fe3653d5e","1979594d42","c355442688","be43f29687","725cc23712","fe0667a837","16e36cc113","fd75c89730","1b9381fbf8","f330b6e64f","37de2b15c0","188ec6af2f","92c69805af","cf24b37198","4401ccf226","5bc2345408","5031d5fc74","85e7f782d5","49cd99a6c9","45463b9c62","3ac9890178","2ee5c452d2","fac23609f5","82f52cb806","79c6476604","2c2d89e43b","c6353ef268","6a36c6508f","9e88dafbf8","79adc9ef54","bd041781d8","98e66ab31e","42e787cb6d","764b146d84","09e8e0fa1f","103d2a91f9","e37b994047","17e70599d4","70f409aa47","76ebbdb816","45463b9c62","3ac9890178","2ee5c452d2","fac23609f5","82f52cb806","79c6476604","2c2d89e43b","7247abc979","b5ec83ff4b","d85c4aacf9","e9a772cfd9","34caf5dbc3","d40c751807","79bf153631","08209334b1","74c29868c6","a686d95da8","55b8c5eb30","4b8f6519c1","6e080226c8","635494a20c","11933a0bfa","2608971c3b","764e80526e","40ff6d7e86","9cd2fd4066","81553ead46","4a8c079384","11933a0bfa","2608971c3b","764e80526e","40ff6d7e86","9cd2fd4066","81553ead46","4a8c079384","29d25e5845","5d19c280c4","99e0dba7a5","488cd2011c","db088ed5e1","ca622f923d","40d2f27eed","9a682c21a1","393cc41bab","6a60426f08","11facb7502","2fc66c529b","dfa4ffcfe8","e4c35487c7","6b2ac50b62","55fc3ebc41","51e5a9d754","ccb0007811","4666d2f463","1caffb97f7","749ffb27b2","d063991fa1","e969889cd0","62f9aaf504","14f527dfb3","f50c963f70","fa9bcd1958","84690f8860","13c22c4ea2","0f7f9628a3","92706518c8","9104503890","507ee0ff5b","5f676b50a2","4fae9ccd7f","6b2ac50b62","55fc3ebc41","51e5a9d754","ccb0007811","4666d2f463","1caffb97f7","749ffb27b2","6b2ac50b62","55fc3ebc41","51e5a9d754","ccb0007811","4666d2f463","1caffb97f7","749ffb27b2","b527c14a2e","f5261d9638","f4ac46ffa5","91b5ca3854","6aaa40870c","a61dd2b01c","035990d224","dd40d9a37f","a83a8a6327","f01c0b78bc","06664d9e21","f7623941a8","1150625a8f","bf64a79980","76725f19da","a1e8192d9a","6993ac0a9f","690d341a47","674922c6b8","34e129ca64","f7d67f2450","be9461f1ff","c56fbe3b02","8fe39b947f","c0cc02e5a3","15ea07c857","db2c8fcf99","41d38a6641","32ea27c55c","6d47fac0b8","e37bf76c8e","8b84b6a8fb","3bb71cb888","fb9ccb49a1","b1b5e3ff92","32ea27c55c","6d47fac0b8","e37bf76c8e","8b84b6a8fb","3bb71cb888","fb9ccb49a1","b1b5e3ff92","de550a5ec2","c2405b7e1d","707efeaf00","c5fe70c203","237307de1e","1420a320c9","acaf28d52e","56796c4c63","664e64c128","a40009c606","ef45d4a9c8","ea6774f3c3","5b8a6f037d","ca726e68e5","4f713947f7","e96b87ce22","6def454d58","eb4d0e2697","4fbd9b42bc","dceb2b2714","bf769d5e67","1600b98327","39a870d832","562f1eddb5","3974175b1e","ce7750f6b6","39e8a9d462","de49391a8e","bf3a3311e4","3baf8c2b6c","a94a2149af","94585875d6","afae9bd9ce","e4b3e4325d","d7dbeedeb2","ae4c20f72d","dafc9969de","102947ec50","4142c0599c","6ed55b32bd","7c86a8e5cb","e0e996d100","96d6479e07","4644ace0db","eff39cf938","729aa1ca5a","49cce35732","808d003e77","f20a27d686","8baddfc5bb","11910790ac","9d2159aac1","e694e1e11a","046bc668c5","618086bd36","73af78995b","c5c610bae1","f01865280c","e89321396f","9564a58c3a","37b4fe68c7","3dde8dc152","34ada0cf65","5711995785","4c5ffd0fd7","69e21cf77e","b9195ea66e","e7e2173ac5","d90f9b85df","65eb25314c","5711995785","4c5ffd0fd7","69e21cf77e","b9195ea66e","e7e2173ac5","d90f9b85df","65eb25314c","6b1c776787","d8d4ee50a5","ef52b2f163","1e192f2a9b","29084c5564","37a78565d2","511352cb73","1ba604431d","483f26b22a","a78cab6f99","2ba28ea6d7","61a171f773","2b2490381f","c1dbe50b0e","1ba604431d","483f26b22a","a78cab6f99","2ba28ea6d7","61a171f773","2b2490381f","c1dbe50b0e","ed1e565bfe","98048efd9a","13c448386d","e1d3a8fe1a","0a6fc54ffe","5d32321619","651dd8d854","1201b951c2","2b90f94ec4","62700dc10a","59efb0a553","29ed1f7e96","b693fd4add","8bc70fd269","88544e3ec3","fb713a82dc","a6a6ccc989","bbe4b5ac6d","c2e67fcd07","3df6094bd9","eb350f8cb0","80b9ea38bf","2e327c0ab0","c1a3f8daa8","4acccfc85f","0851f74fa2","5a4a31eee5","febb091bad","80b9ea38bf","2e327c0ab0","c1a3f8daa8","4acccfc85f","0851f74fa2","5a4a31eee5","febb091bad","76614bd264","aa9f6e5038","44b8729d8a","d1ef240ff9","6f80076f23","9d2e4cd953","ddf1e08146","7421a8d6c6","4ce48d32d4","262e23f16c","138961436b","53d04ccd00","6cae7c3471","ba2a356ad4","7421a8d6c6","4ce48d32d4","262e23f16c","138961436b","53d04ccd00","6cae7c3471","ba2a356ad4","7421a8d6c6","4ce48d32d4","262e23f16c","138961436b","53d04ccd00","6cae7c3471","ba2a356ad4","2eb3d8ecc7","034e8494ff","07a2b7d48f","d613594de7","8661effeb1","590a5f692c","83537da798","899044f3b8","296ce04cf7","b6a41ac4af","7939451583","1ed55ef61c","21d783a53c","5a838c5157","899044f3b8","296ce04cf7","b6a41ac4af","7939451583","1ed55ef61c","21d783a53c","5a838c5157","1526e93da4","b5ee411fc4","1b33df0873","24409e5208","6b0410a104","926808ea3f","e3d0b8d421","a215c1f5e7","a0dee5cb35","11fb1905a1","6c2d4c8afe","7607c888fe","72a5f50c45","d6436436be","91bcc3b1ac","ef15f7a9cd","811f792de0","60b4d60ffa","ca09235b2c","73c6376282","20155f8d76","ffb166290b","8b4cf724f0","1e64c3fc75","99bf9bbe30","dc27061527","42fd39d358","e132cbb375","4eac48845c","1e4fc12d98","222781130d","24dc4b34a0","9fd2f4c965","340c0d76e8","d6513798c7","6dcd103228","6d7173b729","b24d9e1597","756773207e","6cdedbcc4d","a392f6199b","52335af3c2","dce778886a","d37fd2eb3f","831beb913d","bed8900f17","74c521d47a","1b9815cd1b","3497488b2f","16b22c812f","68e2f74252","abe461dd32","634154a0de","0b4c24e5c5","887fb798b7","aca6e0ff61","e0a4aebdc7","d74994e942","8ec30d8df9","cdf48db77c","d3c5e0634b","9cd8f00e29","7075b4a4be","e0a4aebdc7","d74994e942","8ec30d8df9","cdf48db77c","d3c5e0634b","9cd8f00e29","7075b4a4be","9d5e8f71a1","51e075529f","6fa8a91b25","25055248be","2348b867b2","8ca0324f0d","85f382ca7e","f5e92f4924","72af7b0ec7","6b64b02a73","5243d7dfc3","6527c4b6e2","673f9971ad","e8cb1d96a7","f5e92f4924","72af7b0ec7","6b64b02a73","5243d7dfc3","6527c4b6e2","673f9971ad","e8cb1d96a7","a78d195754","f5ceeabaf5","f078056b59","99ca97d2d1","83ef1bf39d","f06fa22a9d","cb506e4a17","8959399f5c","f4ac1980b6","b17b7e9df1","9761f5c42b","0ae1c597d8","75e721ae92","5420bd43d5","8959399f5c","f4ac1980b6","b17b7e9df1","9761f5c42b","0ae1c597d8","75e721ae92","5420bd43d5","fc6361e41e","99cbb5d2c1","755967eaf2","6fa8788cdb","bc20659039","d6ba3bb2d0","f97a7258e9","1799e30c83","ab8a7e3564","30bf9402e3","e8c3d94fe3","1ede1d0b45","0114545679","154b03e7aa","d7508fce3c","9657821f8e","e7bb918f01","70b9bc8f03","6361a9133d","93808c5102","41d58dc5fc","65e7c29be2","b93f0223ef","d12d06443b","55fc8518b3","1c56e0c557","a41a89fdac","96ee3e7f53","65e7c29be2","b93f0223ef","d12d06443b","55fc8518b3","1c56e0c557","a41a89fdac","96ee3e7f53","9bc21ddd76","af3b8b390b","b58cdf4366","f35e249e37","5a951e4d38","b54df4c2b9","0a3623458c","cebd0aab4e","6244c0bfb2","b52c2eda6b","ee7e7d79e4","4899cfc01f","a248d12267","80dc5deee7","cebd0aab4e","6244c0bfb2","b52c2eda6b","ee7e7d79e4","4899cfc01f","a248d12267","80dc5deee7","55ebe33fb9","ab360f1ab3","2c12c231a8","8b4721997b","8865a0f018","44066bb103","b651bbf33c","55ebe33fb9","ab360f1ab3","2c12c231a8","8b4721997b","8865a0f018","44066bb103","b651bbf33c","55aebcf8b0","6d20b4de6f","d101a8734f","d993f87616","b344dbaa52","21c486d46c","9b94a4d44a","afe076cffa","f3e3eef459","f03a899a0f","fa87214766","d146de7a40","99cdade62c","651716d6d9","55ebe33fb9","ab360f1ab3","2c12c231a8","8b4721997b","8865a0f018","44066bb103","b651bbf33c","97cdab2be3","0102c85aae","1518feb6f5","6ef8c23b36","1d463d6832","191d6a8bfa","f6007ea5c0","781bdb5d0e","a81e4bf3de","5729f641aa","5725dc9a22","d72a7a628f","7be6930eb2","812348764c","781bdb5d0e","a81e4bf3de","5729f641aa","5725dc9a22","d72a7a628f","7be6930eb2","812348764c","55ebe33fb9","ab360f1ab3","2c12c231a8","8b4721997b","8865a0f018","44066bb103","b651bbf33c","b6cbf3017f","192bb59608","fd98e96839","804dad64d9","e6767e12ca","9e20d1519a","d322d0f026","d4b42d022f","44d1ebc669","675820e28e","f046457e08","b5d4234a9b","6f676866da","f0ae710995","7879bd5548","47bc8c39bf","514c527de5","dbe32fb881","3faec88e27","a3b4877973","d7ebfaf17d","d21b0d4e82","362354b3ec","78e3de18b1","404eae6097","800cb2765b","eb8db09863","8f1ee45e5d","d21b0d4e82","362354b3ec","78e3de18b1","404eae6097","800cb2765b","eb8db09863","8f1ee45e5d","1013cab6d0","14e4f8208e","0040de9812","43aa1dff2e","96c8397528","a2d0e94515","c69ff3db46","f3c06ab775","97547ced07","04b9b816a8","47b1e27433","2d1668183b","62e1cf4d24","cc7354196f","6e035c027e","a75df64b1b","d2b23f641e","c18a61be88","2eb9bc0c02","ef12c447f7","2701ab1ce0","b0ea0ea487","40b0b37981","c20aa75f69","4bece71204","dbcff77341","412ae2dfb2","11e5dc77e1","9f05718263","49a6b5f889","63d99334ea","1b2e370fda","267981437e","7063f487d7","ee55bb88b5","f3c06ab775","97547ced07","04b9b816a8","47b1e27433","2d1668183b","62e1cf4d24","cc7354196f","1013cab6d0","14e4f8208e","0040de9812","43aa1dff2e","96c8397528","a2d0e94515","c69ff3db46","f3c06ab775","97547ced07","04b9b816a8","47b1e27433","2d1668183b","62e1cf4d24","cc7354196f","f3c06ab775","97547ced07","04b9b816a8","47b1e27433","2d1668183b","62e1cf4d24","cc7354196f","025d3e76aa","f7f19bf957","90ac45aaed","92c27a5190","dff1c29c3b","4796004ec2","5bfd9a9c71","c141666369","a6238aa5aa","dc7a04ab1d","2bad0717d0","6f928f946c","0d08e04bae","558d61c359","8212b4e995","d8822a600f","01330da57a","76a4f3143f","0d5b66316d","d57bff5e13","15f4a5e35a","025d3e76aa","f7f19bf957","90ac45aaed","92c27a5190","dff1c29c3b","4796004ec2","5bfd9a9c71","9442045bc6","efd54d5902","1b01addaec","d7af92c281","26705215b2","3a2fe73861","2e00ad7786","9442045bc6","efd54d5902","1b01addaec","d7af92c281","26705215b2","3a2fe73861","2e00ad7786","7bc772c44f","f0c83057ff","62ad343b3c","e143aa5652","b3039f7444","f4b05769d8","cfc6aa6efd","7a7d702658","58b9ab549b","7cfbb0f982","9be5cca3b7","6de4640e95","c6c07738dd","7d029fc779","8cb39db704","ec5b57d190","86000d09a1","211b7f3b25","1c63ef929b","c9fdb9d073","ff75745616","a95549e15e","d610ff3b4b","7f034a8cb8","712e17158a","417914a82d","11a54bcb15","f10ab09df5","d1c9fe4ac6","bd8cbcd5c9","2591e7bd75","e7a41ff5fb","884c9b0064","cab3690f52","c23975266f","652bdd44d6","59dec02526","906df84ef9","bdbb02c150","2fce356268","d2c01a0dc0","6c4e65f24f","652bdd44d6","59dec02526","906df84ef9","bdbb02c150","2fce356268","d2c01a0dc0","6c4e65f24f","19809d251f","9c04910539","ed9f5e5506","0bad766fb7","3172b6e0b6","8efb52c437","1ca9f4ac3e","f5b1b68aed","ade4789fb8","36f7bdfafb","8c5d80dbc4","7b1d26cee5","c8900211a3","bc94d914dd","19809d251f","9c04910539","ed9f5e5506","0bad766fb7","3172b6e0b6","8efb52c437","1ca9f4ac3e","1b6e1d1b81","1d7aa23100","51b42569c2","bbb3d9081a","779dc8425a","9a29e73d48","c584154522","19809d251f","9c04910539","ed9f5e5506","0bad766fb7","3172b6e0b6","8efb52c437","1ca9f4ac3e","b6d2903b6f","dbd36d073a","4cb6214d38","2206cf5aa3","0782b9d184","4a4afffd9b","0ce5aa059e","82933965fe","e7c548b9dc","670c75ceab","ee1a7c5459","8b78555912","8609e89ebe","646dfdd3da","82933965fe","e7c548b9dc","670c75ceab","ee1a7c5459","8b78555912","8609e89ebe","646dfdd3da","7202e89cbf","fb435e5512","015a6fe735","c9491242dd","b79a4257b8","411617e675","c809818be6","caaf78bd19","c4dd343a0b","03bb6a2ad7","6ded84fbef","39289b8f4a","5156f32c9e","8cea9fa103","646f2c1c4d","651682ebc2","dbbd5f18a1","32d6222353","c27dbf01ab","df0087df7e","123bb48397","e3d7eddec7","382934d51a","710281a76a","68308187c0","cb8cb42fc0","bc5d0092df","b4f9bd5bf3","3bad8fe00f","579f8c4184","7d312b9ec6","f258a70106","9870a7d3ce","e5dafacd0c","4063050668","eb0145653b","50b7988778","431e817959","ed53ea11ce","e0556b194e","6eb26c8d47","bbe6b76bf6","1a23d8b09e","1e99c48229","ab30aabfc8","0cd03c9a58","3a6620e484","671962f9ee","21f41fbf57","1a23d8b09e","1e99c48229","ab30aabfc8","0cd03c9a58","3a6620e484","671962f9ee","21f41fbf57","9652f903c3","196770879c","1b141f2b13","1ea563fed0","a80223fc08","f7ed1c18d2","1e823f9bdc","9652f903c3","196770879c","1b141f2b13","1ea563fed0","a80223fc08","f7ed1c18d2","1e823f9bdc","4779f3ab57","48a96538bc","63e5c7a3b1","6cc4f85936","ce3896f8fa","9be881b20e","8b88885c41","4ab8ac555e","bb82aa1783","abbf1a2e69","2edaa1dce0","0721fbcc7e","779fe57f98","c74a4cbf02","bb0e9d1d04","087af7fde3","bdb83793ae","2a491ac5d7","f4175ce4de","2444c5a9c7","b332537bf5","ed0a75c4c6","12986516f4","f53e8e5c9f","823499f9c4","e11c70ba57","e205cf45b4","6470d421dd","ed0a75c4c6","12986516f4","f53e8e5c9f","823499f9c4","e11c70ba57","e205cf45b4","6470d421dd","2982a59434","a5951dd534","f0bc336509","5cd03306a0","1d0f7aabfd","3a870c389d","8e1020c48e","ab7a43b011","eda1f910df","0228707060","de3914c7bb","2c0cbe9818","a913ce7a0b","dc0b339a4c","ab7a43b011","eda1f910df","0228707060","de3914c7bb","2c0cbe9818","a913ce7a0b","dc0b339a4c","902d964a97","e042287399","c2109df49b","c272d8c574","00dd9eb308","fce1cb81b5","69947adf92","e30447221a","c2bf665afb","0cf1c4c02a","35867435b1","23ee97ade3","10a6294ee2","af3c21e71f","a75ddb507d","f1df24978d","d98c992a9b","9898c2c337","a536ef1ce3","c525f5be96","92cd40fe9f","7a16a6a78a","0cabe3911f","3cd4d39bd0","791dbd5a28","82bfe70cbe","d256f36070","3035d1722c","59c059e2a4","75d6367889","2f3c08dc93","c8a4aa0646","50bd9511e3","2359b51cc0","d2cf507acd","e30447221a","c2bf665afb","0cf1c4c02a","35867435b1","23ee97ade3","10a6294ee2","af3c21e71f","315d537340","18b01ca0c6","48edb7cf89","0ba12b2f60","81d72417c6","1c860fb776","faecfde1e0","315d537340","18b01ca0c6","48edb7cf89","0ba12b2f60","81d72417c6","1c860fb776","faecfde1e0","8655dd3680","06aa0465c5","f25b617f70","a8000709b7","4a196902d0","b495a93843","057e37a10c","1388546523","12d8c2d0ea","ec35212f5c","ae7a075c93","b5c5bbfc92","cea6b0ab84","19e9c15b60","8655dd3680","06aa0465c5","f25b617f70","a8000709b7","4a196902d0","b495a93843","057e37a10c","50ef7044da","e91596b63a","bfda95f016","1047f772d4","eab6d7a6e8","39fb451967","51b4bcd54f","5abe2741de","2fb6e33bb9","ba78dd6ec3","7feef997a4","9777dd95c3","12851f39e0","8074d81030","50ef7044da","e91596b63a","bfda95f016","1047f772d4","eab6d7a6e8","39fb451967","51b4bcd54f","e75839a314","855c0ce880","bf6659cc3f","7d34e59a8c","25f79c5f47","421e927591","e96016b100","e75839a314","855c0ce880","bf6659cc3f","7d34e59a8c","25f79c5f47","421e927591","e96016b100","6dbfb5e191","cc4508c315","a5f6905de5","a366e12c2b","4513f01803","67d200c695","ae8eb6d684","6dbfb5e191","cc4508c315","a5f6905de5","a366e12c2b","4513f01803","67d200c695","ae8eb6d684","17820b9ace","9ae654aa76","7e42e783a7","87b203985e","b4c63ed759","ce8fe36050","ad70f628c0","983b1bf2ee","d12c7e1298","6d0938c0ac","05d2e2e430","9f9d4d77ac","d30a170ed0","b211f79a15","024cab0352","3066299942","6ee02e4911","5485c05093","3811f2ac57","0349b2d47b","df8c33d568","a8cab6fd99","bbf53a23e2","65d8123f7c","e98c442121","aba780bec1","6f4d6c8f4b","87448cfcc3","a8cab6fd99","bbf53a23e2","65d8123f7c","e98c442121","aba780bec1","6f4d6c8f4b","87448cfcc3","de6967f56e","6d1e72d9ad","2bc029c104","35faba4cd3","c46237b29d","32e15894ab","0f8414368a","6ef90e675e","fe6280cce7","91d4a5e0bb","4edd24b288","25725c46ab","919e86456b","8ad52e6ba3","b447a22e94","2dd4b58fae","f1ff3236a5","5d6c4789dd","d085634041","59e92b7369","39d1119e8e","ee462b07ce","48bfec4b84","5317593193","6cbf5ce291","827baff0d7","9f5574d113","b34cc39dfe","95b4f2b3f9","379db9d01f","a4f56a80ff","ecf026179d","4ce58691cb","db6b8ac79b","d4611f0e05","d02722a717","ac3d58f9ae","b1dc696809","88f3458e49","504ddf2087","154cec4f7d","650e6d3a42","595b601651","dfbb1afefb","99718aa34c","1ec8882823","0878bfca78","9cb2ec4c81","886495e6ab","595b601651","dfbb1afefb","99718aa34c","1ec8882823","0878bfca78","9cb2ec4c81","886495e6ab","fdea2d633e","797fa8666c","90938aa9d9","f4ee828f51","df7cd00e4b","2475fb8d83","e0fbb6c49d","d8e390d2f3","09f2f08235","8078ef4ae3","1ca06c04ef","b144358d96","059c44898a","dda0183cb0","05ab25b69f","c02c4b327c","c41b2eab5d","1b74aef1d7","7ef5a731cc","4498253d1f","879dd6e8f9","a36320e6c2","6d171842a1","77040d0064","5605f7c890","39d0dd7adf","9d3799f3a0","91672d8cda","760bb37802","5bd4604256","924829595f","26f8fe71a8","95247e7649","86e03dd43a","c87206182d","f4a44f0a3c","c6fcbb4c34","ec14cb372a","5cfc1b36e4","7667eda048","57bf6fd89a","2d586b4935","c7fc1a6390","97e18c880c","bf8ce33810","1c75965054","61fdc490a6","6e512a7b40","8df105f15e","ec149dfa8c","6cd7fe79f0","a2fd8e9aaa","f39b301156","28eecf86ac","b2fa4db86b","59d5821a3b","2bc880dfdf","7093325ed7","2e0cf0011c","86134ba3ac","5d854821de","5ec95bd6d8","57e66a8722","c5a5dde47d","321d02d801","52cec151fa","d3c2eb3b02","da9225be78","4e9d81a0ae","58a4379919","c5a5dde47d","321d02d801","52cec151fa","d3c2eb3b02","da9225be78","4e9d81a0ae","58a4379919","cc6192d95f","191afa5648","31781b5937","fd3b25f59d","ebe836440b","89a12114fd","9f1914b294","05ab25b69f","c02c4b327c","c41b2eab5d","1b74aef1d7","7ef5a731cc","4498253d1f","879dd6e8f9","eea86c02b3","e9633f9eef","3649e6c391","00c0408a75","2c13d707cd","89a619db22","ffef00db10","eea86c02b3","e9633f9eef","3649e6c391","00c0408a75","2c13d707cd","89a619db22","ffef00db10","c930eb122a","84f8cc57de","fdea9cb1dc","067a1341e6","a16edbe534","d4f4e99fde","cb8452b8cb","a4364de71a","3d965ad65f","2030875524","6f5dd98cac","4f0449d5f6","16af214c24","0df9f5778b","8a8ddae9cd","825469734a","2f2f50a61f","a6d2160961","683847c419","ef53609f96","1094c45f1f","5e055c6827","2490b82863","7c478288c2","3f9b21047c","c6564edb83","79fbcd4780","6d7c250143","d401a8d4df","81ed0dd5ca","0947679d2d","7f6f915c4f","5743ef0436","e3a41927f4","d201619f70","a4364de71a","3d965ad65f","2030875524","6f5dd98cac","4f0449d5f6","16af214c24","0df9f5778b","a4364de71a","3d965ad65f","2030875524","6f5dd98cac","4f0449d5f6","16af214c24","0df9f5778b","09e0125147","6e853a1596","6f786dad96","956e5d2b0b","46d1a17f3c","4b309f7959","fba52533f8","09e0125147","6e853a1596","6f786dad96","956e5d2b0b","46d1a17f3c","4b309f7959","fba52533f8","0b8baaa953","4f3cc0887d","20e4e9890a","9c859fd608","327920a9c6","20039d6c85","ebf05af264","c5cec2e1c0","4ff6537b05","676af31900","91f4457cc2","1eab96f385","f2a6041789","c2670f7213","503e265582","fafcdb5137","dcac0f0cd9","ac8b215dc8","8ccff335d0","7d0d139608","89cc852b08","8343d9fc10","b1ad55eb2e","c93dd04e1a","fe8686219e","361cfbdf66","d8a1b09219","7d9a16eae5","aef922108c","e5d5dbdd25","e31ce2ac14","2225a97aec","92f96e037c","ad5915e2ec","9ad775b22c","aef922108c","e5d5dbdd25","e31ce2ac14","2225a97aec","92f96e037c","ad5915e2ec","9ad775b22c","e36d3ed76f","82f42d3834","c5161ba885","1543338ebc","6d9d4f6247","576cef0e46","25664fb8d7","be1b4fa530","cdd01eb820","796fd2efb2","57c066dd7b","14febab985","125149de25","5832cc4eeb","8418624332","fb19096f45","b788687b58","e314f5b7cb","f4bf30f91d","499015637c","081c03c9b6","68f6583f8c","6c5e348aa6","8928285627","c3542a8cd5","3939521aaf","21981aad95","06135acd4d","752133ccf4","a85df73445","f4dbd38082","ecae84ae71","acda4c4684","b4a548c4eb","2c0ab1ef5d","752133ccf4","a85df73445","f4dbd38082","ecae84ae71","acda4c4684","b4a548c4eb","2c0ab1ef5d","afb2c6510f","786f57bb51","fd0a9d4ff3","ba3242c7b0","a7ec377b10","1d75266fed","302d0fcc31","0a2453bb34","c62e133fce","d73e89c193","3ee97ee346","4603c29dc1","2f3e946585","b73320b145","11197540bd","8ad86eb3ac","93a7f729ba","39a4dc7aa5","195130f7a5","2eb47d3b8e","266658e11f","11197540bd","8ad86eb3ac","93a7f729ba","39a4dc7aa5","195130f7a5","2eb47d3b8e","266658e11f","4ea1f68e8a","aa9baff75e","4c06f9192f","7ad1a7712a","faa65b0458","2a39c34d12","b05b5427bd","0296109e32","137e29d762","5816bd359d","f7f38f3011","f3bed6c07b","c7ddd3a792","8ed8e4650a","0296109e32","137e29d762","5816bd359d","f7f38f3011","f3bed6c07b","c7ddd3a792","8ed8e4650a","4738963261","3fe07a2a94","0d886ee914","73e79d43aa","be4307f7d2","c487e87127","78ce7bd496","a1f7034265","aac25f1b88","7eebbb9cb0","253ab088b8","ba4ff38c86","783f91c7a2","f5e6e86992","51ff9ea745","7e963158aa","6e4ff314fa","91fb87fef1","bb2250f295","71af805679","acd30fce70","0e02e16e4e","a69666cbda","19a8fca345","2a4556d116","c468f7028f","c842830536","1b6ab18dd2","0e02e16e4e","a69666cbda","19a8fca345","2a4556d116","c468f7028f","c842830536","1b6ab18dd2","fbb0ed26ee","05651aa9bc","f8cbcfd084","2af8cfba81","c608df5647","d501da2830","4cd9640398","0f6cb13bab","34c8e40b69","3486bf1b07","0f41fcb3d1","60f31dcc1e","821dcb4b40","192f62325d","0f6cb13bab","34c8e40b69","3486bf1b07","0f41fcb3d1","60f31dcc1e","821dcb4b40","192f62325d","dde89d97a0","03b91505b3","2e6e0b9fd5","ae8bb59cba","c301d503be","ee797a0329","def320c06c","1f263a4ce5","5aeb93ca4e","9f55987666","6d9fbe02b9","3c319d9c5b","00a126233e","e2d7e1d17c","1f263a4ce5","5aeb93ca4e","9f55987666","6d9fbe02b9","3c319d9c5b","00a126233e","e2d7e1d17c","5f751bf96f","bde785fb70","f3f981d093","2cf31795bc","bda711bad1","8b1fee7543","5f5e427f5a","000a12bf99","ec91aafee5","a19cce4a84","9034f0d76a","db7b9fadcd","46287b1727","c1c5bc31dd","bf265c48b6","16ee3ef170","50daed21ac","abc2133e53","d4915c7572","1e32eb4c2c","60d6a297ec","4ee0369ca7","34a20b29b3","04fad4fdda","393cae8e70","a6d37e4328","2f62e36c53","c66b4da3e1","8d97ad3421","f0065c364c","74fc6aacdf","1b5e98a5da","f233a80ab9","56fad1a1e7","652ac6bbf6","8d97ad3421","f0065c364c","74fc6aacdf","1b5e98a5da","f233a80ab9","56fad1a1e7","652ac6bbf6","50ce9d8bbf","133103860b","d396992ead","b70b8f0164","8e003edec6","90150ebc73","66766e64f3","a3cd52fd41","21174cdeb5","f48a97c59b","66ffb575ca","20a090efb8","6dd777c6ad","d9758a962c","9db0ca419c","904e8c2f04","70d3939aad","6c4494f33d","e849801363","9fc1b9df9f","2ebe7ccd2a","b048aee5cf","26ae67535a","9b062f7528","5edeb56335","f429377628","63b243cfc1","cac4d18b44","04552aba75","51d63f499c","1fb4e63b68","bdcd4bf091","6856cec2e1","6587f76aff","9234f1618e","9db0ca419c","904e8c2f04","70d3939aad","6c4494f33d","e849801363","9fc1b9df9f","2ebe7ccd2a","81a78b0644","319daa95d6","771ca6cd2d","88bd398b68","eecee60e2f","6f052709b6","6acc7500e1","81a78b0644","319daa95d6","771ca6cd2d","88bd398b68","eecee60e2f","6f052709b6","6acc7500e1","f9596c8ce0","a59c24a830","be71a1fa5f","01955e125e","cc9794a3c8","0724660e7b","2f11abdb26","d25ecca3e9","45513e9b9e","53338d3288","d89869bb77","fff40fa185","b161a13eb9","59088912dc","6e2d107bef","f9f17bd380","7e09043836","6f8553c76d","b451f053ba","d09e49ca7a","fc5c59df5b","b5d5742add","fd4a27a49b","b7676c6e2e","e711f36d94","214b53c6c1","4cfcadf17d","6fe1b48841","939019263f","d46898a3bb","6d802c39e6","5f26d632eb","c715719cc1","f2ca66218a","afa7735d09","93637b441d","32b1576e68","178c1d3f46","75525a7e6a","beeafe7705","05ba6fd56b","16c8763f31","939019263f","d46898a3bb","6d802c39e6","5f26d632eb","c715719cc1","f2ca66218a","afa7735d09","c7f04385bc","0806fa4350","7974619651","3a904fb2a5","5b763afd54","a3768237d9","ce22621d53","a90cd8edf0","5819614952","a058088c31","93bf73f5a2","6f3a76212a","54f4bb2e7a","9369c3bdfe","ec872eebba","058f132d11","f87c195b57","d3f01bc457","73076135bc","e107bc36db","0b29bb8349","47e401ea98","4c1fcde993","f25eaad5a7","946a4f07c6","0caa24ce6c","cda09161d1","4114249263","19768b2842","a157f329be","1b4e67e86a","8679621097","711b417568","dc4b0307ad","acc66b0bd3","089ab40ad6","f6948b2481","e70389d248","93ff19492f","812dc00e7f","460eeaaa47","f6cb8a2f85","19768b2842","a157f329be","1b4e67e86a","8679621097","711b417568","dc4b0307ad","acc66b0bd3","18460196e0","9019730c68","6feeeeaf8f","7f8019b9e0","ca12c71dc6","0d8ab55700","076cdafe4a","4e2de63f7d","90bedd1440","bf76c84290","27d09b3b2b","1bac77b43f","2397367702","aeb294e767","187115a3dc","86049c3c2c","120170befb","4ff30a5aa4","5f09fc63e0","cab693e289","6c7e7146ee","4e2de63f7d","90bedd1440","bf76c84290","27d09b3b2b","1bac77b43f","2397367702","aeb294e767","77dc82c9ff","55f9e02451","db44106e94","6e7c137305","60d5df8ffc","5d18253552","4654ba18ab","a509f95fb7","a7963a010d","15492cd7ba","4ca63ca112","13235f56d6","da3233a58c","6b4cfe9350","a509f95fb7","a7963a010d","15492cd7ba","4ca63ca112","13235f56d6","da3233a58c","6b4cfe9350","e696696b91","f48f0ec800","54b3be78d5","52f980f766","1ac0c8c29d","5993480f63","b2b97a12c1","e696696b91","f48f0ec800","54b3be78d5","52f980f766","1ac0c8c29d","5993480f63","b2b97a12c1","6f3b6c149a","ff20d038eb","db115fcb84","f01f9a13dc","2677d11e76","9cf19453ba","a023577b57","a47e8ce33b","3a820ecc48","b24657db31","a8c3103d4c","70d73d7fec","50ff50d32c","10e261a890","b2472f3035","35bfef7982","fd50bde636","d27bc9e001","2e7dfeb082","25b4d99e25","e3d50a2898","beb30398ad","84bdc4046b","4f682a9a56","c3b52d550e","d1ef6a6777","4aa7689a1d","4ce7d58803","4c34d8680a","bcf3cfd431","c72a452de2","18f8a5b245","7502146da8","a07a275b8c","3330f2a225","1725f7a6f2","77196a7582","19bbf940bf","9a229e6ec5","40de8b7a6c","822cf9e6d8","68d7b6fd78","0373b2e088","742d3cae3c","32e509964d","52ccaaf572","ff4ea2cf95","10dbdd8b93","66a6d6a9e9","b36cac01d8","4b6125c86d","c2935d3ace","29c40ffcae","2f2455fb27","590869f4bb","9de583b202","b2472f3035","35bfef7982","fd50bde636","d27bc9e001","2e7dfeb082","25b4d99e25","e3d50a2898","dea9580520","35afe335d5","331803698c","118ba60efb","555200a316","f847e25749","33d64524f9","05e18bdcb7","bde9ad5700","0e2279ddbd","c81f9b6da8","334431284d","757b19c0a4","c4fc1a3593","bf2c5cbe09","9de8747446","2d3fdb3126","8059095682","9c20857649","43b6ea1f6c","624d795855","eefd11cffd","5bac7943b0","620d791ad1","5c14a0bc1e","3a5e8e27b8","36a9f6c0c2","84cbbb9d84","dd5e94ecd4","310cc5a2dd","6558630e59","751e8266c8","013e45fa01","87588c8a37","687a1e59e4","dd5e94ecd4","310cc5a2dd","6558630e59","751e8266c8","013e45fa01","87588c8a37","687a1e59e4","073cce9848","add51a71e0","a1ecfd146c","0beec25e45","c7670e735d","2365a9b193","06af9f0812","44da7155e5","c5a8d11e16","2e99d69f62","45c14b5447","d578cd163d","8c1b8da39f","8e2d606e91","a28c8e8979","ab81a53a6a","e76e3052e9","f365ad6f70","3631759f47","01f31fb3c7","4893675e7e","ed6c8097d2","44ee2bd0d4","a9af4855ed","ab0311c306","2aee0784d9","a40027f6e3","4e6a4dc1bb","f1f0577670","d3a7f9cc88","291d45f579","e5e36ecc90","869b42e1f0","80237b683d","a0ed6340ae","f1f0577670","d3a7f9cc88","291d45f579","e5e36ecc90","869b42e1f0","80237b683d","a0ed6340ae","188c7935a5","ce594ac469","1ec785328a","424169ceee","1e0440f425","5c0d661f00","2638685822","9b0ee07794","8e023d98b6","a2cde2c142","b0794a9461","4b496816f1","5f0f6b9517","8fc51bf38c","5f3d0f405b","6ebf84c20c","cba5112cfd","dd43d4316f","f800b14254","6e3f1a8cc5","01da6f2109","8c528f91f9","3e50b2f7b7","643d06975f","f532965b6b","825c332da0","f32c3abe67","e214fce9a2","d041574826","76250aa34f","425e79e368","46b7270d71","7a260af7c3","5c3ff0122d","18f25e4f95","d041574826","76250aa34f","425e79e368","46b7270d71","7a260af7c3","5c3ff0122d","18f25e4f95","adf7a08d11","055ce893ab","7632b9ed9b","657509b53e","19fc7324ac","22e15c7dcc","b5f0cde389","c0c7c2693e","9405d79805","9dfaa9b002","5aa6fbe565","8fcdd7d826","7b5d9d2445","ec96a5349d","1665fc3ba0","20a240753a","f9935760a0","b069f2ed28","ad57d0274c","d79538693a","77013c2092","775ef164f5","9df639d47d","e67a2132be","fb7b7fa9a9","4e9f68c5ac","afad2aff8e","8cbb668cb1","775ef164f5","9df639d47d","e67a2132be","fb7b7fa9a9","4e9f68c5ac","afad2aff8e","8cbb668cb1","059e5cf146","d7f16c690e","d60a1ae73a","d83d72a923","fabca3bf3c","1f29fdb0f7","d918feb2c3","33eeae0917","2908d05d38","35c5494b84","484755da13","6c445e6a3b","068a09e66e","b1455d20f2","e9fb130e2d","c7d19e6a54","f83cd0b4e6","009d4feb8a","39158a6eed","c61cef702d","16f4cc2e02","5076f89f91","0d7f9c245b","583e5521bb","a14d0648fa","1f5e2e7f64","3adf4b466a","56e6bb53eb","c1a9c43c9e","5d35e89418","33fdd2d203","dd7479fbf2","5b8a96e906","b5754f2992","bf2e523690","c1a9c43c9e","5d35e89418","33fdd2d203","dd7479fbf2","5b8a96e906","b5754f2992","bf2e523690","0c99ef7fb5","2626b7378b","5b963b0bda","5fe248a791","ced0d712c5","2d30d30f64","50808c6a30","0c5f5ac017","229f069524","c18896eb3d","843fc4709e","d03809b377","5d079e7646","6a72585eb8","80c376ebf8","9a9461f1bf","92589e5cc5","c2b2bf7f38","9e981efa96","09726dbae6","dab2dea580","80c376ebf8","9a9461f1bf","92589e5cc5","c2b2bf7f38","9e981efa96","09726dbae6","dab2dea580","02e185798c","719b142960","578bee8509","a1d951f75f","2e6a9aefc1","a90d4e59d5","f684cd88c8","173c57bf17","32f0514e45","1cc408b7e6","f0bc2b5110","b270a2b796","ee64fc869f","768c12b51d","40208ff6de","e2f6fd608d","b43b23b219","3a4500ad90","af5ffbeab9","e620a5c385","3bac6b9ecf","40d895ec03","fc515c877c","99bdeb7001","47ecf7d697","9106b91024","5b8d88bb97","f1211fd5f0","d8863f247d","89aa91c232","d2076dca49","32049e4efb","bd29488cf6","751e652a94","0c05067bc5","292c5acd86","187f08be91","5c10cd49fb","0df9326a2c","9f6d2d50f8","28917ebac6","2935710e7a","292c5acd86","187f08be91","5c10cd49fb","0df9326a2c","9f6d2d50f8","28917ebac6","2935710e7a","a46dc0b0e8","9f1e0a96e2","85a59f4cdf","bde1cc007e","3dac0abf12","c429b91f23","cc03113b6b","a46dc0b0e8","9f1e0a96e2","85a59f4cdf","bde1cc007e","3dac0abf12","c429b91f23","cc03113b6b","2d982ec19d","af7c1a16fa","5af4f29881","c0e629769f","9ee0bff172","88c3ac9ba4","1431a1f401","7a1e803625","32ddc44214","80d098a15f","8e06427ea3","5d4b9fff58","0a2880a07e","3e9a5d4fb2","7a1e803625","32ddc44214","80d098a15f","8e06427ea3","5d4b9fff58","0a2880a07e","3e9a5d4fb2","c023c6cd61","88088f1f1d","e862965212","cd5940bcfc","0c5d556395","51833aa7c6","caad1eb22f","f1a882a9c3","fc07e54c99","1b978277ee","3744d2a744","0b95e64032","6dcef94bf3","e24a860bdf","7e5d557c7f","33eb9f7967","aad3125a4b","fd8443567d","c4f8548297","35acb04dcf","d8315a0187","1ae107deab","00a54ac158","c5f907b679","b270dc20da","64b93abb34","8e008b3497","21e89bf1e5","f1a882a9c3","fc07e54c99","1b978277ee","3744d2a744","0b95e64032","6dcef94bf3","e24a860bdf","cbc25d55a6","7407f36f92","a5ed378d17","b4e2e23cfb","13a0419456","094ab34cea","30ad107a10","cbc25d55a6","7407f36f92","a5ed378d17","b4e2e23cfb","13a0419456","094ab34cea","30ad107a10","b933ec1490","6251c326ad","38a86cd3e0","bf5b084ff9","46462c6324","ebf504d63b","52fa61464a","b933ec1490","6251c326ad","38a86cd3e0","bf5b084ff9","46462c6324","ebf504d63b","52fa61464a","eeebd79a16","b16cbb0101","1188449844","0dc1405001","047aa357ca","2c1fbb292d","ebe344b168","eeebd79a16","b16cbb0101","1188449844","0dc1405001","047aa357ca","2c1fbb292d","ebe344b168","3d1541ced3","39f0138542","1aca46bd26","8d16bcaeb1","a405a64e1f","215f3d41c6","1308c6017c","cd72f1028f","6968876e50","279f0c3083","5e2606e902","7d848d4bb5","e426fb6671","2368c21784","fbfe8ef867","84a57da36e","c332314ff0","dab1ec4ac9","b09186f41d","4c64b85d8c","e6402ee4ce","5b0c64bac2","49f4c87414","95829b063d","1339690be4","347b217644","d615dd8820","2d56deb115","50cac86b8d","198948dcfe","dfd3294539","39774ffc78","61fa8d4ed5","af395a145d","9bc446b26d","c855ee0ffa","d9002f8db6","57af2eda9c","7bb0a664a9","9b1533863e","70ffb7b9d2","e8c929683c","52fa0a8041","6a45e663ab","bf9d6e9c71","309b47cfa1","0316c299ee","0c7fde86cf","dd43d4616a","2c2701a36e","17886f18c3","9714dcb7c8","aca07b2f2a","7cc583ac5f","67b0273003","01d382d708","36f0e4353e","2f73397fa3","a8e5eb6308","8011509fad","05ec347c7d","16d4412213","b56b079386","b0e3bc38f4","f90a0e1bd4","ae7bfb0082","7f24ed0d5e","8a7fc46569","d491189f0a","a9024fbb50","b0e3bc38f4","f90a0e1bd4","ae7bfb0082","7f24ed0d5e","8a7fc46569","d491189f0a","a9024fbb50","8749760e61","d7f1f2209c","cca9f1d08f","fc9d33889f","351280834a","937b5a7dfd","e8b308f673","6ab003a40f","7b8bcc654e","beaa224a7d","01fb10b6ce","5e0e4550bc","9ec8fbd89f","102e73d9b6","6ab003a40f","7b8bcc654e","beaa224a7d","01fb10b6ce","5e0e4550bc","9ec8fbd89f","102e73d9b6","7b41b40e6d","7a0c616391","0786c746be","0640f5bd3f","053872c82b","e4b0862a30","cc4448936a","7b41b40e6d","7a0c616391","0786c746be","0640f5bd3f","053872c82b","e4b0862a30","cc4448936a","effdb28d97","d9e1328691","496454570e","de54ae6504","dfb91efbe8","c0f097b192","44790f10ed","73defef3e3","ecba56c2e0","52cb3c051d","f354e9c9fa","cff8d1a460","772a66d1b7","5382beab7f","73defef3e3","ecba56c2e0","52cb3c051d","f354e9c9fa","cff8d1a460","772a66d1b7","5382beab7f","0573cf256d","8ded06b5ca","a9515bba30","7155e6fd61","80083d41b6","3bc066379d","6a4dc3e8b6","330b70f8ae","7314356eb6","a4ebefed3a","8cc3e02961","f2a1b67181","9d74438983","1d9e92c880","e919a61171","e5a4bee948","1836fea1ce","91a6aa384a","ebe5cbb294","b799166abd","1fcffeb348","5654c4d9d4","e98770a2cb","5834d77c2d","17e517be76","277a700bb5","c71056a5be","75bbd14a3a","83f230c174","6e4553a1c3","a169f4234b","93649378b4","8fbb470f44","4fe471e625","e16063b3c8","83f230c174","6e4553a1c3","a169f4234b","93649378b4","8fbb470f44","4fe471e625","e16063b3c8","be21221f71","8cff54f255","6fe63a27e4","93561cfacb","b86d433b8c","933c93c843","98caf81c99","72b20e3158","9ec7baacd9","99a60ee38f","802c2e7559","c226661bda","75f11afd44","f3fc513a5d","72b20e3158","9ec7baacd9","99a60ee38f","802c2e7559","c226661bda","75f11afd44","f3fc513a5d","77e1456762","a655fbbea0","ef02c6f3bb","9ba51908d6","781314c25f","b9d5c5427e","57259f4404","abdb9c9528","ca90367d31","26f47657e9","3a1d01efd2","96d60723d0","69dd53fe29","5745091fd0","1c6011a651","8f5f8e7ef7","e7b08f4d34","c14e575491","823be1838c","5d09c99ab0","7a6e2a279a","9424caf565","e3f5bf5937","49946035c2","e53505786e","ca3e8b39ad","526f54d5a6","7a41ac94ce","2127f2746e","52923bfd06","ad53df42a4","8b374f124d","697f2d8026","a73dab5bfc","d0e93f124b","caaf2a1f21","b4741df13c","9357eed42e","a477c72ede","d817ab753e","da71d14c13","6f78f5324c","caaf2a1f21","b4741df13c","9357eed42e","a477c72ede","d817ab753e","da71d14c13","6f78f5324c","68a1715b19","a085b87d6e","bc88c7de85","4f38e63194","55729e3657","ce75b72f45","0b93356275","195a9ef541","b9ab961fc9","442d664719","3279caa2b7","5c9d27938b","51f89d4dbe","2ae94d183a","836558919f","d207d99f0b","760c3240bc","1c57946702","f4b4deb97b","10565e0424","a12242fa1f","836558919f","d207d99f0b","760c3240bc","1c57946702","f4b4deb97b","10565e0424","a12242fa1f","7e4099323e","51acc47b20","a2a73590e4","b980e478f6","d379902693","0f11665996","ad3dd9cf67","7e4099323e","51acc47b20","a2a73590e4","b980e478f6","d379902693","0f11665996","ad3dd9cf67","d5f03a1e9b","4405203750","1b92d28fa1","a70a8ebcf2","30626382da","9133694cd1","f980175c08","b21e8637b8","d577b9a6ed","38706ad14d","f353e24cda","f337ed641f","eecb87720f","574dda25c6","0c8c813109","3408f3a62f","6660867fd2","f67e2ee8c7","86e65181f8","4bd9b2c7f6","f4a6e1c430","ce07d435de","c961f168ef","83d505038c","a8382279fa","722116dd5d","9e3712e796","c001bf5673","910bf5e00d","e4cf2f8576","f6fb3af880","0f927f4490","f5d033daea","99f5ff3948","5d5d8f729f","40c8b6a708","662adb5c27","4da916b8ac","050f3c4072","4165495fbf","25fd79e77e","16038ef493","c43f3976e4","2707730f3c","c7ac9972ec","f0f5b6ba82","27b04c8bab","24ae44e91a","e117d71761","56a83a57ed","38f4732a12","4b9755a403","374a77f486","c984ae0891","256fd2eac5","9bd716aea7","56a83a57ed","38f4732a12","4b9755a403","374a77f486","c984ae0891","256fd2eac5","9bd716aea7","59c1265f26","908f69adda","34f0f80c17","2cf46c118d","65c02b5eac","eb065240ed","e568335884","6db35d5ee2","4c4d8ec65b","3ebeed4aa0","4a6d582515","f69b8a69ec","819a7aec1c","69c9cd5c8f","45a19b646f","b6061ffa92","a66e240634","8a768d6880","d94fa30e7e","e84f7f54c6","b7b947ebbd","6db35d5ee2","4c4d8ec65b","3ebeed4aa0","4a6d582515","f69b8a69ec","819a7aec1c","69c9cd5c8f","6a805de9b5","619478859b","2797dcfe92","a061a41a5a","a7f273fec2","fa743dbeac","7b17b13934","14d7e94bb2","a379524047","132e735664","5bd8c0f711","078dd97953","472a2a60cb","bc111b9fcf","011eee158f","e2f0cfc771","cf4e408255","7cee9f350a","92a62ce1de","65b43b9ece","9636dc9c8e","2fe6e4fa32","80d4bcbffa","c3d43b5d2c","9ba31ab3d8","0eb1e637f8","b097121f62","6947deb8bf","226c912e9f","cd8bca5eda","35e9fa1de4","5043daa2f7","ee42767f1d","d786d21c0e","b0bd4dcd79","226c912e9f","cd8bca5eda","35e9fa1de4","5043daa2f7","ee42767f1d","d786d21c0e","b0bd4dcd79","d1a4de0c74","125e6a5e77","fa48cd2e75","f526dab169","9e27f7f64f","ca76aea060","f276a23598","d1a4de0c74","125e6a5e77","fa48cd2e75","f526dab169","9e27f7f64f","ca76aea060","f276a23598","03b29d534a","cfa0698b98","cd5e2da12b","3e20c72da0","9b25e6fc89","c1c6548dcc","557f623486","03b29d534a","cfa0698b98","cd5e2da12b","3e20c72da0","9b25e6fc89","c1c6548dcc","557f623486","6582978fb3","c2ff353b40","757b7c42e8","470bf3a169","2db3a3a926","a075f5a52e","164290b605","6582978fb3","c2ff353b40","757b7c42e8","470bf3a169","2db3a3a926","a075f5a52e","164290b605","0e77ca3b78","7b999452f7","320f99b348","7c04b4e675","37d26e9487","4439cbf6d7","90e3245d7b","6921108dd3","365bf17034","0a79851630","916169f0ea","1f940f1a45","8d17959982","c647227f98","6921108dd3","365bf17034","0a79851630","916169f0ea","1f940f1a45","8d17959982","c647227f98","cd473ea1c9","637e854293","a6aacee649","7ade206edb","cb4755bf8c","f9b81d2a8e","a0dbd84478","159e4b6208","45da47f330","363e1b7ff6","5699bafd8a","5e8902fc93","9ae4174ae0","7a94117635","159e4b6208","45da47f330","363e1b7ff6","5699bafd8a","5e8902fc93","9ae4174ae0","7a94117635","ca313f9c51","86bb7e8b57","dece048a65","72fe38b7fb","e97e7c0ffe","ab04d17c6c","116e11808f","6be752cfc7","9c60b065b8","06c7f9483b","92c21ca185","17858d7405","1881473c33","616ac7ec30","bdc73ea0f4","6750504a07","b42b5db2d0","56492bd90c","ebc6315afb","4433e725de","2bf3e77946","d1c9c14635","dd17a6f8c2","076e8d1019","964ae6bf8f","df31ac518d","13e9aaa085","9391e58358","58aa0b6012","a221ed1935","4d6ba7b646","53feedb5bc","48de41eac1","f9e9053125","fe415b785c","00337f7bea","1d68c6c463","2f744eba5d","57dab95828","f93cd5bed8","4e0328cc42","60d005f44e","390133186d","0525757718","0af6ccc084","5a40a767c2","4a051379dd","a6c6995ae2","947fcadfad","474e3f3238","e858bf3370","9ae22cf9d8","b2836a042b","2ae5abb3e6","9228567b05","69e2e78fd7","e36906d2c2","0e88e664b3","3c0c1433fc","48d22d5818","1080f3d220","b3446490ce","4bed4dfeaa","9c87680a49","d4d4dd34bb","8f3df1500b","d0b830b0e7","11cde77dcf","b2bc0f2bc2","7c944902b0","9c87680a49","d4d4dd34bb","8f3df1500b","d0b830b0e7","11cde77dcf","b2bc0f2bc2","7c944902b0","695464dc35","ff3e3e2e20","bf541e2642","1fdbba07f8","a93aa2cff5","6ceca6625d","8ad685afd2","530974c552","8fb7d13715","12a8774507","3872e90cc2","f7ff0fe3be","9b79ea00b9","73e46e4b71","61a5f5b046","215e4cf1c5","ad43e9612f","c1f50d5723","1740eec52d","212e529e5e","cb7f272db7","58aa0b6012","a221ed1935","4d6ba7b646","53feedb5bc","48de41eac1","f9e9053125","fe415b785c","58aa0b6012","a221ed1935","4d6ba7b646","53feedb5bc","48de41eac1","f9e9053125","fe415b785c","5c94ef5f06","5f8a6e4811","a1a354de0c","60c8b480b8","82fe3dffd7","66053186be","192515d06c","fec4f242fe","5b4bf33701","63ac4a915e","7a65021c5c","0b923898a3","23eb7b45cd","00aa5635d1","85573150f2","0fc8a3157c","166c5822d7","3baa19d2e8","d46ac98a5a","0d30da5f22","958476f2e9","a2eda932b1","d8ecdf3040","e07b41236c","39ccfe92f8","a0f5fe0878","0d562f2b88","edaa0c810e","f3b49ec1f5","a8aabc29ad","022e0e5eb1","40f3fb0458","a5d475527f","5e0c00b515","ec8bc959aa","937bd975cd","cfca86fc87","0cfa3dd956","fbca9f1d17","d45c444198","0e290b8786","967f4be15e","fa11785cd8","ff0035ad20","2ad31507a1","c3f83849fd","2d7194a0a3","44c845de26","96683e1b3e","de9e5ad596","a0cb83840e","595c70fdfe","5985c45ec2","e788cd9f5d","d1e80e6d6a","1e9b9a2fc2","30e644a7bd","5d9f511bd8","9c0089131e","230f0e5d81","8722875551","9feec002b2","e1a54e00b1","30e644a7bd","5d9f511bd8","9c0089131e","230f0e5d81","8722875551","9feec002b2","e1a54e00b1","4db15b5142","c554ac692e","3aa4f22c41","d9db718201","6299ed54df","0bb3c922af","42b81306d1","7c48bce9a5","44dec9b496","dd2f1931f1","a33aac2a9e","cc95a243c6","45d010355b","77a7f49ed1","7c48bce9a5","44dec9b496","dd2f1931f1","a33aac2a9e","cc95a243c6","45d010355b","77a7f49ed1","b23e63138a","2b014722a1","5dbedbf53d","664df86a40","d928fa001c","73cf6401bc","008db211ab","b23e63138a","2b014722a1","5dbedbf53d","664df86a40","d928fa001c","73cf6401bc","008db211ab","5d08617695","3194ea6a62","b20e7fad91","4c94f275fe","54d46e67f8","bcdc9e976d","88dab7e240","ed60baded4","fbcc2ab379","daa8854166","7bff3887e7","62430e6561","6c38227cb9","0d2fa7ad26","77aa6a8fba","a3656a3527","3bc803307c","42341a442c","e05c9de2c6","f7987f1299","bd3f8c80c1","0fa45838c2","945f82a4e9","ee4b9f7b02","55e26e1be8","702a18e1b4","de72b2a875","0ebd97545a","0fa45838c2","945f82a4e9","ee4b9f7b02","55e26e1be8","702a18e1b4","de72b2a875","0ebd97545a","ec2ef70637","2b7788b7e8","f58ef54364","e978e93a82","39ecb4fc23","54a61bfc1a","10f1410030","55ce0d3341","fc5c4bf37b","6c525f7bd0","0b067abb7a","4c2ceb3a95","bbd5323e21","e912848e78","749167313c","0235277f8b","29f429cfad","9d0aff9686","123f153cd0","28dcbcdc51","d42a790ea3","55ce0d3341","fc5c4bf37b","6c525f7bd0","0b067abb7a","4c2ceb3a95","bbd5323e21","e912848e78","1c60f33c10","2bdc09786f","db8aabf28d","50307af5fc","e9b6f744ae","642a546f3a","31d274af70","1c60f33c10","2bdc09786f","db8aabf28d","50307af5fc","e9b6f744ae","642a546f3a","31d274af70"]}
```

## JSON version of this report
https://gist.github.com/IllIllI000/c09bd21791510e83ee1b5d06446e0527
