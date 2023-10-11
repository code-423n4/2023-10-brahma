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

contract TransactionValidator_validatePreTransactionTest is
    Test,
    ConsoleFactory("offchain/addressManager.ts"),
    ModSignature
{
    IGnosisSafe subSafe;

    MockPolicyValidatorTrue mpvt;
    MockPolicyValidatorFalse mpvf;

    uint256 validatorPrivKey;
    uint256 notValidatorPrivKey;

    bytes32 commit = keccak256("commit");

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        (, validatorPrivKey) = makeAddrAndKey("TrustedValidator");
        (, notValidatorPrivKey) = makeAddrAndKey("NotTrustedValidator");
        //
        mpvt = new MockPolicyValidatorTrue();
        mpvf = new MockPolicyValidatorFalse();
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, vm.addr(validatorPrivKey), false);
        addressProvider.setAuthorizedAddress(_POLICY_VALIDATOR_HASH, address(mpvt), true);
        //
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        walletRegistry.registerWallet();
        subSafe = IGnosisSafe(safeDeployer.deploySubAccount(owners, 1, commit, keccak256("salt")));
    }

    function testvalidatePreTransaction_ShouldRevertTxnUnAuthorized_PolicyValidatorFail() public {
        // Invalid policy result
        addressProvider.setAuthorizedAddress(_POLICY_VALIDATOR_HASH, address(mpvf), true);
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: subSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        vm.expectRevert(TransactionValidator.TxnUnAuthorized.selector);
        transactionValidator.validatePreTransaction(
            ModSignature._digestDataToSafeParams(_txn, notValidatorPrivKey, address(policyValidator))
        );

        vm.expectRevert(TransactionValidator.TxnUnAuthorized.selector);
        ModSignature._executeOnSafeWithSigs(_txn, subSafe, notValidatorPrivKey, address(policyValidator), address(this));
    }

    function testvalidatePreTransaction() public {
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: subSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });
        // Shouldn't revert
        transactionValidator.validatePreTransaction(
            ModSignature._digestDataToSafeParams(_txn, validatorPrivKey, address(policyValidator))
        );

        ModSignature._executeOnSafeWithSigs(_txn, subSafe, validatorPrivKey, address(policyValidator), address(this));
        assertTrue(subSafe.isModuleEnabled(makeAddr("module")));
    }
}
