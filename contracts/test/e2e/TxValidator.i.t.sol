// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {AddressProvider} from "src/core/AddressProvider.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";
import {SafeHelper, IGnosisSafe, Enum} from "src/libraries/SafeHelper.sol";
import "test/commons/ModSignature.sol";
import "interfaces/Types.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";
import {MockContractSignerValid, MockContractSignerInvalid} from "test/mocks/MockContractSigner.sol";

contract IntegrationTest_TxValidator is Test, ConsoleFactory("offchain/addressManager.ts"), ModSignature {
    IGnosisSafe subSafe;
    IGnosisSafe mainSafe;

    MockContractSignerValid mcsv;
    MockContractSignerInvalid mcsi;

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
        mcsv = new MockContractSignerValid();
        mcsi = new MockContractSignerInvalid();
        //
        walletRegistry.registerWallet();
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        mainSafe = IGnosisSafe(safeDeployer.deployConsoleAccount(owners, 1, commit, keccak256("salt")));
        subSafe = IGnosisSafe(safeDeployer.deploySubAccount(owners, 1, commit, keccak256("salt")));
    }

    function testValidateTransactionForConsoleGuard_ShouldRemoveGuard() public {
        assertEq(SafeHelper._getGuard(address(mainSafe)), address(safeModeratorOverridable));
        SafeHelper._executeOnSafe(
            address(mainSafe), address(mainSafe), Enum.Operation.Call, abi.encodeCall(IGnosisSafe.setGuard, address(0))
        );
        assertEq(SafeHelper._getGuard(address(mainSafe)), address(0));
    }

    function testValidateTransactionForConsoleGuard_ShouldRemoveFallbackHandler() public {
        assertEq(SafeHelper._getFallbackHandler(address(mainSafe)), address(consoleFallbackHandler));
        SafeHelper._executeOnSafe(
            address(mainSafe),
            address(mainSafe),
            Enum.Operation.Call,
            abi.encodeCall(IGnosisSafe.setFallbackHandler, address(0))
        );
        assertEq(SafeHelper._getFallbackHandler(address(mainSafe)), address(0));
    }

    function testCheckTransactionOverridable_ShouldRevertInvalidCommit() public {
        DigestData memory _txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce() + 1,
            policyCommit: invalid_commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        vm.expectRevert(TransactionValidator.TxnUnAuthorized.selector);
        ModSignature._executeOnSafeWithSigs(_txn, mainSafe, validatorPrivKey, address(policyValidator), address(this));
    }

    function testCheckTransactionOverridable_ShouldRevertInvalidValidator() public {
        DigestData memory _txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce() + 1,
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        vm.expectRevert(TransactionValidator.TxnUnAuthorized.selector);
        ModSignature._executeOnSafeWithSigs(
            _txn, mainSafe, notValidatorPrivKey, address(policyValidator), address(this)
        );
    }

    function testValidateTransactionForConsoleGuard() public {
        DigestData memory _txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce() + 1,
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });
        assertFalse(mainSafe.isModuleEnabled(makeAddr("module")));
        // Shouldn't revert
        ModSignature._executeOnSafeWithSigs(_txn, mainSafe, validatorPrivKey, address(policyValidator), address(this));
        assertTrue(mainSafe.isModuleEnabled(makeAddr("module")));
    }

    function testCheckTransaction_ShouldRevertInvalidCommit() public {
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: subSafe.nonce() + 1,
            policyCommit: invalid_commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        vm.expectRevert(TransactionValidator.TxnUnAuthorized.selector);
        ModSignature._executeOnSafeWithSigs(_txn, subSafe, validatorPrivKey, address(policyValidator), address(this));
    }

    function testCheckTransaction_ShouldRevertInvalidValidator() public {
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: subSafe.nonce() + 1,
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        vm.expectRevert(TransactionValidator.TxnUnAuthorized.selector);
        ModSignature._executeOnSafeWithSigs(_txn, subSafe, notValidatorPrivKey, address(policyValidator), address(this));
    }

    function testCheckTransaction_Valid() public {
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: subSafe.nonce() + 1,
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));
        ModSignature._executeOnSafeWithSigs(_txn, subSafe, validatorPrivKey, address(policyValidator), address(this));
        assertTrue(subSafe.isModuleEnabled(makeAddr("module")));
    }

    function testCheckAfterExecution_ShouldRevertGuardRemoval() public {
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.setGuard, address(0)),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: subSafe.nonce() + 1,
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        vm.expectRevert(TransactionValidator.InvalidGuard.selector);
        ModSignature._executeOnSafeWithSigs(_txn, subSafe, validatorPrivKey, address(policyValidator), address(this));
    }

    function testCheckAfterExecution_ShouldRevertModuleRemoval() public {
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.disableModule, (address(0x1), address(address(this)))),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: subSafe.nonce() + 1,
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        vm.expectRevert(TransactionValidator.InvalidModule.selector);
        ModSignature._executeOnSafeWithSigs(_txn, subSafe, validatorPrivKey, address(policyValidator), address(this));
    }

    function testCheckAfterExecution_ShouldRevertFallbackHandlerRemoval() public {
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.setFallbackHandler, (address(0))),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: subSafe.nonce() + 1,
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        vm.expectRevert(TransactionValidator.InvalidFallbackHandler.selector);
        ModSignature._executeOnSafeWithSigs(_txn, subSafe, validatorPrivKey, address(policyValidator), address(this));
    }

    function testCheckTransactionOverridable_Valid() public {
        DigestData memory _txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce() + 1,
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        assertFalse(mainSafe.isModuleEnabled(makeAddr("module")));
        ModSignature._executeOnSafeWithSigs(_txn, mainSafe, validatorPrivKey, address(policyValidator), address(this));
        assertTrue(mainSafe.isModuleEnabled(makeAddr("module")));
    }

    function testCheckTransactionExecutor_Valid() public {
        _setupRegisterExecAndExecPluginModule(executorAddress);
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: executorPlugin.executorNonce(address(subSafe), executorAddress),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        ExecutorPlugin.ExecutionRequest memory _execReq = ModSignature._buildExecPluginRequest(
            _txn, executorPrivKey, validatorPrivKey, executorAddress, address(executorPlugin), address(policyValidator)
        );

        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));
        executorPlugin.executeTransaction(_execReq);
        assertTrue(subSafe.isModuleEnabled(makeAddr("module")));
    }

    function testCheckAfterExecutor_ShouldRevertInvalidModuleWhenMainSafeRemoved() public {
        _setupRegisterExecAndExecPluginModule(executorAddress);

        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.disableModule, (address(executorPlugin), address(this))),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: executorPlugin.executorNonce(address(subSafe), executorAddress),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        ExecutorPlugin.ExecutionRequest memory _execReq = ModSignature._buildExecPluginRequest(
            _txn, executorPrivKey, validatorPrivKey, executorAddress, address(executorPlugin), address(policyValidator)
        );
        vm.expectRevert(abi.encodeWithSelector(TransactionValidator.InvalidModule.selector));
        executorPlugin.executeTransaction(_execReq);
    }

    function testCheckAfterExecutor_ShouldRevertInvalidGuardWhenTransactionGuardRemoved() public {
        _setupRegisterExecAndExecPluginModule(executorAddress);
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.setGuard, makeAddr("invalid_guard")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: executorPlugin.executorNonce(address(subSafe), executorAddress),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        ExecutorPlugin.ExecutionRequest memory _execReq = ModSignature._buildExecPluginRequest(
            _txn, executorPrivKey, validatorPrivKey, executorAddress, address(executorPlugin), address(policyValidator)
        );
        vm.expectRevert(abi.encodeWithSelector(TransactionValidator.InvalidGuard.selector));
        executorPlugin.executeTransaction(_execReq);
    }

    function testCheckAfterExecutor_ShouldRevertInvalidFallbackHandler() public {
        _setupRegisterExecAndExecPluginModule(executorAddress);
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.setFallbackHandler, makeAddr("invalid_fallback_handler")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: executorPlugin.executorNonce(address(subSafe), executorAddress),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        ExecutorPlugin.ExecutionRequest memory _execReq = ModSignature._buildExecPluginRequest(
            _txn, executorPrivKey, validatorPrivKey, executorAddress, address(executorPlugin), address(policyValidator)
        );
        vm.expectRevert(abi.encodeWithSelector(TransactionValidator.InvalidFallbackHandler.selector));
        executorPlugin.executeTransaction(_execReq);
    }

    function testValidateSafe_ReturnTrue_ValidTrustedValidatorContractSignature() public {
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, address(mcsv), true);

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

        bytes memory _sigSafe = ModSignature._buildSafeSignature(address(this));
        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));
        subSafe.execTransaction(
            _txn.to, // to
            _txn.value, // value
            _txn.txnData, // data
            _txn.operation, // operation
            1e6, // safeTxGas
            0, // baseGas
            0, // gasPrice
            address(0), // gasToken
            payable(address(0)), // refundReceiver
            abi.encodePacked(_sigSafe, uint256(0), _txn.expiryEpoch) // signatures
        );
        assertTrue(subSafe.isModuleEnabled(makeAddr("module")));
    }

    function testValidateSafe_ReturnTrue_ValidTrustedValidatorContractSignature_ValidExecutorEOA() public {
        _setupRegisterExecAndExecPluginModule(executorAddress);
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, address(mcsv), true);
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: executorPlugin.executorNonce(address(subSafe), executorAddress),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        ExecutorPlugin.ExecutionRequest memory _execReq = ModSignature._buildExecPluginRequest(
            _txn,
            executorPrivKey,
            notValidatorPrivKey,
            executorAddress,
            address(executorPlugin),
            address(policyValidator)
        );

        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));
        executorPlugin.executeTransaction(_execReq);
        assertTrue(subSafe.isModuleEnabled(makeAddr("module")));
    }

    function testValidateSafe_ReturnTrue_ValidTrustedValidatorContractSignature_ValidExecutorContractSignature()
        public
    {
        _setupRegisterExecAndExecPluginModule(address(mcsv));
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, address(mcsv), true);
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: executorPlugin.executorNonce(address(subSafe), executorAddress),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        Types.Executable memory _executable =
            Types.Executable({callType: Types.CallType.CALL, target: _txn.to, value: _txn.value, data: _txn.txnData});

        ExecutorPlugin.ExecutionRequest memory _execReq = ExecutorPlugin.ExecutionRequest({
            account: address(_txn.from),
            exec: _executable,
            executor: address(mcsv),
            executorSignature: hex"",
            validatorSignature: abi.encodePacked(uint32(0), _txn.expiryEpoch)
        });

        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));
        executorPlugin.executeTransaction(_execReq);
        assertTrue(subSafe.isModuleEnabled(makeAddr("module")));
    }

    function testValidateSafe_ReturnFalse_InvalidTrustedValidatorContractSignature() public {
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, address(mcsi), true);

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

        bytes memory _sigSafe = ModSignature._buildSafeSignature(address(this));
        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));
        vm.expectRevert(TransactionValidator.TxnUnAuthorized.selector);
        subSafe.execTransaction(
            _txn.to, // to
            _txn.value, // value
            _txn.txnData, // data
            _txn.operation, // operation
            1e6, // safeTxGas
            0, // baseGas
            0, // gasPrice
            address(0), // gasToken
            payable(address(0)), // refundReceiver
            abi.encodePacked(_sigSafe, uint256(0), _txn.expiryEpoch) // signatures
        );
        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));
    }

    function testValidateSafe_ReturnFalse_InvalidTrustedValidatorContractSignature_ValidExecutorEOA() public {
        _setupRegisterExecAndExecPluginModule(executorAddress);
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, address(mcsi), true);
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: executorPlugin.executorNonce(address(subSafe), executorAddress),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        Types.Executable memory _executable =
            Types.Executable({callType: Types.CallType.CALL, target: _txn.to, value: _txn.value, data: _txn.txnData});
        (bytes memory _sigExec,,) =
            ModSignature._buildExecutionSignature(_txn, executorPrivKey, executorAddress, address(executorPlugin));

        ExecutorPlugin.ExecutionRequest memory _execReq = ExecutorPlugin.ExecutionRequest({
            account: address(_txn.from),
            exec: _executable,
            executor: executorAddress,
            executorSignature: _sigExec,
            validatorSignature: abi.encodePacked(uint32(0), _txn.expiryEpoch)
        });

        vm.expectRevert(TransactionValidator.TxnUnAuthorized.selector);
        executorPlugin.executeTransaction(_execReq);
        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));
    }

    function testValidateSafe_ReturnFalse_ValidTrustedValidatorContract_InvalidExecutorContract() public {
        _setupRegisterExecAndExecPluginModule(address(mcsi));
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, address(mcsv), true);
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: executorPlugin.executorNonce(address(subSafe), executorAddress),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        Types.Executable memory _executable =
            Types.Executable({callType: Types.CallType.CALL, target: _txn.to, value: _txn.value, data: _txn.txnData});

        ExecutorPlugin.ExecutionRequest memory _execReq = ExecutorPlugin.ExecutionRequest({
            account: address(_txn.from),
            exec: _executable,
            executor: address(mcsi),
            executorSignature: hex"",
            validatorSignature: abi.encodePacked(uint32(0), _txn.expiryEpoch)
        });

        vm.expectRevert(ExecutorPlugin.InvalidExecutor.selector);
        executorPlugin.executeTransaction(_execReq);
        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));
    }

    function _setupRegisterExecAndExecPluginModule(address _execAddr) private {
        executorRegistry.registerExecutor(address(subSafe), _execAddr);
        DigestData memory _txn = DigestData({
            to: address(subSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, (address(executorPlugin))),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(subSafe),
            nonce: subSafe.nonce() + 1,
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        assertTrue(
            ModSignature._executeOnSafeWithSigs(
                _txn, subSafe, validatorPrivKey, address(policyValidator), address(this)
            )
        );
        assertTrue(executorRegistry.isExecutor(address(subSafe), _execAddr));
        assertTrue(subSafe.isModuleEnabled(address(executorPlugin)));
    }
}
