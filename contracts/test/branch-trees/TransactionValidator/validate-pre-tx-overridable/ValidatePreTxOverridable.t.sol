// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {AddressProvider} from "src/core/AddressProvider.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";
import {IGnosisSafe, Enum} from "src/libraries/SafeHelper.sol";
import {MockPolicyValidatorTrue, MockPolicyValidatorFalse} from "test/mocks/MockPolicyValidator.sol";
import "test/commons/ModSignature.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

contract TransactionValidator_validatePreTransactionOverridableTest is
    Test,
    ConsoleFactory("offchain/addressManager.ts"),
    ModSignature
{
    IGnosisSafe mainSafe;

    MockPolicyValidatorTrue mpvt;
    MockPolicyValidatorFalse mpvf;

    uint256 validatorPrivKey;
    uint256 executorPrivKey;
    address executorAddress;
    uint256 notValidatorPrivKey;
    uint256 notExecutorPrivKey;

    bytes32 commit = keccak256("commit");
    bytes32 invalid_commit = keccak256("invalid_commit");

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        (, validatorPrivKey) = makeAddrAndKey("TrustedValidator");
        (executorAddress, executorPrivKey) = makeAddrAndKey("Executor");
        (, notValidatorPrivKey) = makeAddrAndKey("NotTrustedValidator");
        (, notExecutorPrivKey) = makeAddrAndKey("NotExecutor");
        //
        mpvt = new MockPolicyValidatorTrue();
        mpvf = new MockPolicyValidatorFalse();
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, vm.addr(validatorPrivKey), false);
        addressProvider.setAuthorizedAddress(_POLICY_VALIDATOR_HASH, address(mpvt), true);
        //
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        mainSafe = IGnosisSafe(safeDeployer.deployConsoleAccount(owners, 1, commit, keccak256("salt")));
    }

    function testValidatePreTransactionOverridable_ShouldNotRevertWhenGuardRemoved() public {
        DigestData memory _txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.setGuard, address(0)),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });
        TransactionValidator.SafeTransactionParams memory _params =
            ModSignature._digestDataToSafeParams(_txn, notValidatorPrivKey, address(policyValidator));
        assertEq(keccak256(_params.data), SafeHelper._GUARD_REMOVAL_CALLDATA_HASH);
        transactionValidator.validatePreTransactionOverridable(_params); // Shouldn't revert
        SafeHelper._executeOnSafe(_txn.from, _txn.to, _txn.operation, _txn.txnData);
        assertEq(SafeHelper._getGuard(address(mainSafe)), address(0));
    }

    function testValidatePreTransactionOverridable_ShouldNotRevertWhenFallbackHandlerRemoved() public {
        DigestData memory _txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.setFallbackHandler, address(0)),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });
        TransactionValidator.SafeTransactionParams memory _params =
            ModSignature._digestDataToSafeParams(_txn, notValidatorPrivKey, address(policyValidator));
        assertEq(keccak256(_params.data), SafeHelper._FALLBACK_REMOVAL_CALLDATA_HASH);
        transactionValidator.validatePreTransactionOverridable(_params); // Shouldn't revert
        SafeHelper._executeOnSafe(_txn.from, _txn.to, _txn.operation, _txn.txnData);
        assertEq(SafeHelper._getFallbackHandler(address(mainSafe)), address(0));
    }

    function testValidatePreTransactionOverridable_ShouldRevertInvalidTxnUnAuthorized_PolicyValidatorFail() public {
        // Invalid policy result
        addressProvider.setAuthorizedAddress(_POLICY_VALIDATOR_HASH, address(mpvf), true);
        DigestData memory _txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce(),
            policyCommit: invalid_commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        vm.expectRevert(TransactionValidator.TxnUnAuthorized.selector);
        transactionValidator.validatePreTransactionOverridable(
            ModSignature._digestDataToSafeParams(_txn, validatorPrivKey, address(policyValidator))
        );
    }

    function testvalidatePreTransactionOverridable() public {
        DigestData memory _txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });
        // Shouldn't revert
        transactionValidator.validatePreTransactionOverridable(
            ModSignature._digestDataToSafeParams(_txn, validatorPrivKey, address(policyValidator))
        );
        SafeHelper._executeOnSafe(_txn.from, _txn.to, _txn.operation, _txn.txnData);
        assertTrue(mainSafe.isModuleEnabled(makeAddr("module")));
    }
}
