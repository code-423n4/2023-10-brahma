// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {AddressProvider} from "src/core/AddressProvider.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {ExecutorPlugin} from "src/core/ExecutorPlugin.sol";
import {IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";
import {IGnosisSafe, Enum} from "src/libraries/SafeHelper.sol";
import {MockPolicyValidatorTrue, MockPolicyValidatorFalse} from "test/mocks/MockPolicyValidator.sol";
import "test/commons/ModSignature.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

contract TransactionValidator_validatePreExecutorTransactionTest is
    Test,
    ConsoleFactory("offchain/addressManager.ts"),
    ModSignature
{
    IGnosisSafe subSafe;

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
        walletRegistry.registerWallet();
        subSafe = IGnosisSafe(safeDeployer.deploySubAccount(owners, 1, commit, keccak256("salt")));
        executorRegistry.registerExecutor(address(subSafe), executorAddress);
        vm.prank(address(subSafe));
        subSafe.enableModule(address(executorPlugin));
    }

    function testvalidatePreExecutorTransaction_ShouldRevertTxnUnauthorized_PolicyValidatorFail() public {
        // Invalid policy result
        addressProvider.setAuthorizedAddress(_POLICY_VALIDATOR_HASH, address(mpvf), true);
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: subSafe.nonce(),
            policyCommit: invalid_commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });
        (bytes memory _sigExec,, bytes32 _txnStructHash) =
            ModSignature._buildExecutionSignature(_txn, executorPrivKey, executorAddress, address(executorPlugin));
        bytes memory _sigValidator = ModSignature._buildExecutionValiditySignature(
            _txn, _txnStructHash, notValidatorPrivKey, address(policyValidator)
        );
        vm.expectRevert(TransactionValidator.TxnUnAuthorized.selector);
        transactionValidator.validatePreExecutorTransaction(
            _txn.from,
            _txn.from,
            _txnStructHash,
            abi.encodePacked(_sigExec, _sigValidator, uint256(65), _txn.expiryEpoch)
        );
    }

    function testvalidatePreExecutorTransaction() public {
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
        (bytes memory _sigExec,, bytes32 _txnStructHash) =
            ModSignature._buildExecutionSignature(_txn, executorPrivKey, executorAddress, address(executorPlugin));
        bytes memory _sigValidator = ModSignature._buildExecutionValiditySignature(
            _txn, _txnStructHash, validatorPrivKey, address(policyValidator)
        );
        // Shouldn't revert
        transactionValidator.validatePreExecutorTransaction(
            _txn.from,
            _txn.from,
            _txnStructHash,
            abi.encodePacked(_sigExec, _sigValidator, uint256(65), _txn.expiryEpoch)
        );
        executorPlugin.executeTransaction(
            ModSignature._buildExecPluginRequest(
                _txn,
                executorPrivKey,
                validatorPrivKey,
                executorAddress,
                address(executorPlugin),
                address(policyValidator)
            )
        );
        assertTrue(subSafe.isModuleEnabled(makeAddr("module")));
    }
}
