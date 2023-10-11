// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {AddressProvider} from "src/core/AddressProvider.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {ExecutorPlugin} from "src/core/ExecutorPlugin.sol";
import {PolicyValidator} from "src/core/PolicyValidator.sol";
import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";
import {MockAddressProviderService} from "test/mocks/MockAddressProviderService.sol";
import {MockContractSignerValid, MockContractSignerInvalid} from "test/mocks/MockContractSigner.sol";
import {ModSignature} from "test/commons/ModSignature.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";
import "interfaces/Types.sol";

contract ExecutorPlugin_ExecuteTransactionTest is ConsoleFactory("offchain/addressManager.ts"), ModSignature {
    // keccak256("guard_manager.guard.address")
    bytes32 internal constant SAFE_GUARD_STORAGE_SLOT =
        0x4a204f620c8c5ccdca3fd54d003badd85ba500436a431f0cbda4f558c93c34c8;
    IGnosisSafe subSafe;
    IGnosisSafe mainSafe;
    MockAddressProviderService aps;

    MockContractSignerValid mcsv;
    MockContractSignerInvalid mcsi;

    uint256 validatorPrivKey;
    uint256 executorPrivKey;
    address executorAddress;
    uint256 notValidatorPrivKey;
    uint256 notExecutorPrivKey;

    address gov = makeAddr("gov");
    bytes32 commit = keccak256("commit");
    bytes32 invalid_commit = keccak256("invalid_commit");

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        (, validatorPrivKey) = makeAddrAndKey("TrustedValidator");
        (executorAddress, executorPrivKey) = makeAddrAndKey("Executor");
        (, notValidatorPrivKey) = makeAddrAndKey("NotTrustedValidator");
        (, notExecutorPrivKey) = makeAddrAndKey("NotExecutor");
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, vm.addr(validatorPrivKey), false);
        //
        mcsv = new MockContractSignerValid();
        mcsi = new MockContractSignerInvalid();
        //
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        mainSafe = IGnosisSafe(safeDeployer.deployConsoleAccount(owners, 1, commit, keccak256("salt")));
        walletRegistry.registerWallet();
        subSafe = IGnosisSafe(safeDeployer.deploySubAccount(owners, 1, commit, keccak256("salt")));
    }

    function testExecuteTransaction_ShouldRevertInvalidExecutorSignature() public {
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
            _txn,
            notExecutorPrivKey,
            validatorPrivKey,
            executorAddress,
            address(executorPlugin),
            address(policyValidator)
        );
        vm.expectRevert(abi.encodeWithSelector(ExecutorPlugin.InvalidExecutor.selector));
        executorPlugin.executeTransaction(_execReq);
    }

    function testExecuteTransaction_ShouldRevertInvalidContractSigner() public {
        _setupRegisterExecAndExecPluginModule(address(mcsi));
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

        bytes32 _txnStructHash = keccak256(
            abi.encode(
                TRANSACTION_PARAMS_TYPEHASH,
                _txn.to,
                _txn.value,
                keccak256(_txn.txnData),
                uint8(_txn.operation),
                _txn.from,
                address(mcsv),
                _txn.nonce
            )
        );

        bytes memory sigValidator = ModSignature._buildExecutionValiditySignature(
            _txn, _txnStructHash, validatorPrivKey, address(policyValidator)
        );

        ExecutorPlugin.ExecutionRequest memory _execReq = ExecutorPlugin.ExecutionRequest({
            account: address(_txn.from),
            exec: _executable,
            executor: address(mcsv),
            executorSignature: hex"",
            validatorSignature: abi.encodePacked(sigValidator, uint32(65), _txn.expiryEpoch)
        });

        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));

        vm.expectRevert(abi.encodeWithSelector(ExecutorPlugin.InvalidExecutor.selector));
        executorPlugin.executeTransaction(_execReq);

        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));
    }

    function testExecuteTransaction_ShouldRevertExecutorNotRegistered() public {
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
        vm.expectRevert(abi.encodeWithSelector(ExecutorPlugin.InvalidExecutor.selector));
        executorPlugin.executeTransaction(_execReq);
    }

    function testExecuteTransaction_ShouldRevertTxnUnAuthorized() public {
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
            _txn,
            executorPrivKey,
            notValidatorPrivKey,
            executorAddress,
            address(executorPlugin),
            address(policyValidator)
        );

        vm.expectRevert(abi.encodeWithSelector(TransactionValidator.TxnUnAuthorized.selector));
        executorPlugin.executeTransaction(_execReq);
    }

    function testExecuteTransaction_ShouldRevertModuleExecutionFailed() public {
        executorRegistry.registerExecutor(address(subSafe), vm.addr(executorPrivKey));

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
        vm.expectRevert("GS104");
        executorPlugin.executeTransaction(_execReq);
    }

    function testExecuteTransaction_WhenTransactionGuardRemoved_ShouldRevertInvalidGuard() public {
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

    function testExecuteTransaction_WhenMainSafeRemoved_ShouldRevertInvalidModule() public {
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

    function testExecuteTransaction_SuccessfulEOASigner() public {
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

        executorPlugin.executeTransaction(_execReq);
        assertTrue(subSafe.isModuleEnabled(makeAddr("module")));
    }

    function testExecuteTransaction_ShouldRevertInvalidSignature() public {
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
        _execReq.validatorSignature = abi.encodePacked(hex"", uint32(0), _txn.expiryEpoch);
        _execReq.executorSignature = hex"";

        vm.expectRevert(ExecutorPlugin.InvalidSignature.selector);
        executorPlugin.executeTransaction(_execReq);
    }

    function testExecuteTransaction_SuccessfulContractSigner() public {
        _setupRegisterExecAndExecPluginModule(address(mcsv));
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

        bytes32 _txnStructHash = keccak256(
            abi.encode(
                TRANSACTION_PARAMS_TYPEHASH,
                _txn.to,
                _txn.value,
                keccak256(_txn.txnData),
                uint8(_txn.operation),
                _txn.from,
                address(mcsv),
                _txn.nonce
            )
        );

        bytes memory sigValidator = ModSignature._buildExecutionValiditySignature(
            _txn, _txnStructHash, validatorPrivKey, address(policyValidator)
        );

        ExecutorPlugin.ExecutionRequest memory _execReq = ExecutorPlugin.ExecutionRequest({
            account: address(_txn.from),
            exec: _executable,
            executor: address(mcsv),
            executorSignature: hex"",
            validatorSignature: abi.encodePacked(sigValidator, uint32(65), _txn.expiryEpoch)
        });

        assertFalse(subSafe.isModuleEnabled(makeAddr("module")));
        executorPlugin.executeTransaction(_execReq);
        assertTrue(subSafe.isModuleEnabled(makeAddr("module")));
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
