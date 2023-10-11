// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {AddressProvider} from "src/core/AddressProvider.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {ExecutorPlugin} from "src/core/ExecutorPlugin.sol";
import {IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";
import {IGnosisSafe, Enum} from "src/libraries/SafeHelper.sol";
import "test/commons/ModSignature.sol";
import "interfaces/Types.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";
import {MockContractSignerValid} from "test/mocks/MockContractSigner.sol";

contract ExecutorPlugin_MiscellaneousTest is ConsoleFactory("offchain/addressManager.ts"), ModSignature {
    // keccak256("guard_manager.guard.address")
    bytes32 internal constant SAFE_GUARD_STORAGE_SLOT =
        0x4a204f620c8c5ccdca3fd54d003badd85ba500436a431f0cbda4f558c93c34c8;

    IGnosisSafe subSafe;
    IGnosisSafe mainSafe;
    MockContractSignerValid mcsv;

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

        mcsv = new MockContractSignerValid();
        //
        (, validatorPrivKey) = makeAddrAndKey("TrustedValidator");
        (executorAddress, executorPrivKey) = makeAddrAndKey("Executor");
        (, notValidatorPrivKey) = makeAddrAndKey("NotTrustedValidator");
        (, notExecutorPrivKey) = makeAddrAndKey("NotExecutor");
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, vm.addr(validatorPrivKey), false);

        address[] memory owners = new address[](1);
        owners[0] = address(this);
        mainSafe = IGnosisSafe(safeDeployer.deployConsoleAccount(owners, 1, commit, keccak256("salt")));
        walletRegistry.registerWallet();
        subSafe = IGnosisSafe(safeDeployer.deploySubAccount(owners, 1, commit, keccak256("salt")));
    }

    function testDeploy() public {
        (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        ) = executorPlugin.eip712Domain();
        assertEq(name, "ExecutorPlugin");
        assertEq(version, "1.0");
        assertEq(chainId, block.chainid);
        assertEq(verifyingContract, address(executorPlugin));
        assertEq(fields, hex"0f");
        assertEq(salt, bytes32(0));
        assertEq(extensions.length, 0);
    }

    function testExtractExecutorSignature_WithoutExecutorSig1271() public {
        _setupRegisterExecAndExecPluginModule(address(mcsv));
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
        bytes memory _sigValidator =
            ModSignature._buildValiditySignature(_txn, validatorPrivKey, address(policyValidator));
        Types.Executable memory _executable =
            Types.Executable({callType: Types.CallType.CALL, target: _txn.to, value: 0, data: _txn.txnData});

        ExecutorPlugin.ExecutionRequest memory _execReq = ExecutorPlugin.ExecutionRequest({
            account: address(subSafe),
            exec: _executable,
            executor: executorAddress,
            executorSignature: bytes(""),
            validatorSignature: abi.encodePacked(_sigValidator, _txn.expiryEpoch)
        });

        vm.expectRevert(abi.encodeWithSelector(ExecutorPlugin.InvalidExecutor.selector));
        executorPlugin.executeTransaction(_execReq);
    }

    function testExecuteTransaction_ShouldRevertSigReplay() public {
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

        vm.expectRevert(abi.encodeWithSelector(ExecutorPlugin.InvalidExecutor.selector));
        executorPlugin.executeTransaction(_execReq);
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
