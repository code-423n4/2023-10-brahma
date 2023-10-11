// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";
import "interfaces/Types.sol";
import {SafeHelper, IGnosisSafe, Enum} from "src/libraries/SafeHelper.sol";
import {ExecutorPlugin} from "../../src/core/ExecutorPlugin.sol";
import {TransactionValidator} from "../../src/core/TransactionValidator.sol";

contract ModSignature is Test, Script {
    struct DigestData {
        address to;
        bytes txnData;
        Enum.Operation operation;
        uint256 value;
        address from;
        uint256 nonce;
        bytes32 policyCommit;
        uint32 expiryEpoch;
    }

    bytes32 public constant TRANSACTION_PARAMS_TYPEHASH = keccak256(
        "ExecutionParams(address to,uint256 value,bytes data,uint8 operation,address account,address executor,uint256 nonce)"
    );

    bytes32 public constant VALIDATION_PARAMS_TYPEHASH = keccak256(
        "ValidationParams(ExecutionParams executionParams,bytes32 policyHash,uint32 expiryEpoch)ExecutionParams(address to,uint256 value,bytes data,uint8 operation,address account,address executor,uint256 nonce)"
    );

    bytes32 public constant DOMAIN_SEPRATOR_TYPEHASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    function _buildValiditySignature(DigestData memory _txn, uint256 _privKey, address _policyValidator)
        internal
        view
        returns (bytes memory sig)
    {
        bytes32 _domainSeparator = keccak256(
            abi.encode(
                DOMAIN_SEPRATOR_TYPEHASH,
                keccak256("PolicyValidator"),
                keccak256("1.0"),
                block.chainid,
                _policyValidator
            )
        );

        bytes32 _transactionTypeHash = keccak256(
            abi.encode(
                TRANSACTION_PARAMS_TYPEHASH,
                _txn.to,
                _txn.value,
                keccak256(_txn.txnData),
                uint8(_txn.operation),
                _txn.from,
                address(0),
                _txn.nonce
            )
        );

        bytes32 _validationTypeHash =
            keccak256(abi.encode(VALIDATION_PARAMS_TYPEHASH, _transactionTypeHash, _txn.policyCommit, _txn.expiryEpoch));

        bytes32 _txnValidityDigest = keccak256(abi.encodePacked("\x19\x01", _domainSeparator, _validationTypeHash));

        (uint8 v, bytes32 r, bytes32 s) = vm.sign(_privKey, _txnValidityDigest);
        return abi.encodePacked(r, s, v);
    }

    function _buildValiditySignatureFrontend(DigestData memory _txn, uint256 _privKey, address _policyValidator)
        internal
        returns (bytes memory sig)
    {
        string[] memory cmd = new string[](16);

        console.log(_privKey);
        console.log(vm.toString(bytes32(_privKey)));

        cmd[0] = "npx";
        cmd[1] = "ts-node";
        cmd[2] = "test/commons/eip712Digest.ts";
        cmd[3] = "buildValidationDigestSignature";
        cmd[4] = vm.toString(bytes32(_privKey));
        cmd[5] = vm.toString(block.chainid);
        cmd[6] = vm.toString(_policyValidator);
        cmd[7] = vm.toString(_txn.to);
        cmd[8] = vm.toString(_txn.value);
        cmd[9] = vm.toString(_txn.txnData);
        cmd[10] = vm.toString(uint8(_txn.operation));
        cmd[11] = vm.toString(_txn.from);
        cmd[12] = vm.toString(address(0));
        cmd[13] = vm.toString(_txn.nonce);
        cmd[14] = vm.toString(_txn.policyCommit);
        cmd[15] = vm.toString(_txn.expiryEpoch);

        bytes memory signature = vm.ffi(cmd);

        return signature;
    }

    function _buildExecutionValiditySignature(
        DigestData memory _txn,
        bytes32 _executionDigest,
        uint256 _privKey,
        address _policyValidator
    ) internal view returns (bytes memory sig) {
        bytes32 _domainSeparator = keccak256(
            abi.encode(
                DOMAIN_SEPRATOR_TYPEHASH,
                keccak256("PolicyValidator"),
                keccak256("1.0"),
                block.chainid,
                _policyValidator
            )
        );
        bytes32 _validationTypeHash =
            keccak256(abi.encode(VALIDATION_PARAMS_TYPEHASH, _executionDigest, _txn.policyCommit, _txn.expiryEpoch));

        bytes32 _txnValidityDigest = keccak256(abi.encodePacked("\x19\x01", _domainSeparator, _validationTypeHash));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(_privKey, _txnValidityDigest);
        return abi.encodePacked(r, s, v);
    }

    function _buildSafeSignature(address _safeOwner) internal pure returns (bytes memory) {
        return SafeHelper._generateSingleThresholdSignature(_safeOwner);
    }

    function _buildPackedSignature(
        DigestData memory _txn,
        uint256 _privKey,
        address _safeOwner,
        address _policyValidator
    ) internal view returns (bytes memory sig) {
        bytes memory baseSignature = _buildSafeSignature(_safeOwner);
        bytes memory txnValiditySignature = _buildValiditySignature(_txn, _privKey, _policyValidator);
        return abi.encodePacked(baseSignature, txnValiditySignature, uint32(65), _txn.expiryEpoch);
    }

    function _buildExecutionSignature(DigestData memory _txn, uint256 _privKey, address _exec, address _executorPlugin)
        internal
        view
        returns (bytes memory, bytes32, bytes32)
    {
        bytes32 _domainSeparator = keccak256(
            abi.encode(
                DOMAIN_SEPRATOR_TYPEHASH, keccak256("ExecutorPlugin"), keccak256("1.0"), block.chainid, _executorPlugin
            )
        );
        bytes32 _txnStructHash = keccak256(
            abi.encode(
                TRANSACTION_PARAMS_TYPEHASH,
                _txn.to,
                _txn.value,
                keccak256(_txn.txnData),
                uint8(_txn.operation),
                _txn.from,
                _exec,
                _txn.nonce
            )
        );
        bytes32 _txnExecDigest = keccak256(abi.encodePacked("\x19\x01", _domainSeparator, _txnStructHash));

        (uint8 v, bytes32 r, bytes32 s) = vm.sign(_privKey, _txnExecDigest);
        return (abi.encodePacked(r, s, v), _txnExecDigest, _txnStructHash);
    }

    function _buildExecutionSignatureFrontend(
        DigestData memory _txn,
        uint256 _privKey,
        address _exec,
        address _executorPlugin
    ) internal returns (bytes memory) {
        string[] memory cmd = new string[](14);

        console.log(_privKey);
        console.log(vm.toString(bytes32(_privKey)));

        cmd[0] = "npx";
        cmd[1] = "ts-node";
        cmd[2] = "test/commons/eip712Digest.ts";
        cmd[3] = "buildTransactionDigestSignature";
        cmd[4] = vm.toString(bytes32(_privKey));
        cmd[5] = vm.toString(block.chainid);
        cmd[6] = vm.toString(_executorPlugin);
        cmd[7] = vm.toString(_txn.to);
        cmd[8] = vm.toString(_txn.value);
        cmd[9] = vm.toString(_txn.txnData);
        cmd[10] = vm.toString(uint8(_txn.operation));
        cmd[11] = vm.toString(_txn.from);
        cmd[12] = vm.toString(_exec);
        cmd[13] = vm.toString(_txn.nonce);

        bytes memory signature = vm.ffi(cmd);

        return signature;
    }

    function _buildPackedExecutionSignature(
        DigestData memory _txn,
        uint256 _execPrivKey,
        uint256 _validatorPrivKey,
        address _exec,
        address _executorPlugin,
        address _policyValidator
    ) internal view returns (bytes memory, bytes32) {
        (bytes memory _sigExec,, bytes32 _txnStructHash) =
            _buildExecutionSignature(_txn, _execPrivKey, _exec, _executorPlugin);
        bytes memory _sigValidator =
            _buildExecutionValiditySignature(_txn, _txnStructHash, _validatorPrivKey, _policyValidator);

        return (abi.encodePacked(_sigExec, _sigValidator, uint32(65), _txn.expiryEpoch), _txnStructHash);
    }

    function _buildExecPluginRequest(
        DigestData memory _txn,
        uint256 _execPrivKey,
        uint256 _validatorPrivKey,
        address _exec,
        address _executorPlugin,
        address _policyValidator
    ) internal view returns (ExecutorPlugin.ExecutionRequest memory _execReq) {
        Types.Executable memory _executable =
            Types.Executable({callType: Types.CallType.CALL, target: _txn.to, value: _txn.value, data: _txn.txnData});

        (bytes memory sigExec,, bytes32 txnStructHash) =
            _buildExecutionSignature(_txn, _execPrivKey, _exec, _executorPlugin);
        bytes memory sigValidator =
            _buildExecutionValiditySignature(_txn, txnStructHash, _validatorPrivKey, _policyValidator);

        _execReq = ExecutorPlugin.ExecutionRequest({
            account: address(_txn.from),
            exec: _executable,
            executor: _exec,
            executorSignature: sigExec,
            validatorSignature: abi.encodePacked(sigValidator, uint32(65), _txn.expiryEpoch)
        });
    }

    function _digestDataToSafeParamsExec(
        DigestData memory _txn,
        uint256 _execPrivKey,
        uint256 _validatorPrivKey,
        address _executorAddress,
        address _executorPlugin,
        address _policyValidator
    ) internal returns (TransactionValidator.SafeTransactionParams memory _params) {
        (bytes memory _sigExec,,) = _buildExecutionSignature(_txn, _execPrivKey, _executorAddress, _executorPlugin);

        bytes memory _sigValidator = _buildValiditySignature(_txn, _validatorPrivKey, _policyValidator);

        bytes memory _sigValidatorFrontend =
            ModSignature._buildValiditySignatureFrontend(_txn, _validatorPrivKey, _policyValidator);

        console.logBytes(_sigValidator);
        console.logBytes(_sigValidatorFrontend);
        assert(keccak256(_sigValidator) == keccak256(_sigValidatorFrontend));

        return TransactionValidator.SafeTransactionParams({
            from: _txn.from,
            to: _txn.to,
            value: _txn.value,
            data: _txn.txnData,
            operation: _txn.operation,
            safeTxGas: 0,
            baseGas: 0,
            gasPrice: 0,
            gasToken: address(0),
            refundReceiver: payable(0),
            signatures: abi.encodePacked(_sigExec, _sigValidator, uint32(65), _txn.expiryEpoch),
            msgSender: address(0)
        });
    }

    function _digestDataToSafeParams(DigestData memory _txn, uint256 _validatorPrivKey, address _policyValidator)
        internal
        returns (TransactionValidator.SafeTransactionParams memory _params)
    {
        bytes memory _sigValidator = _buildValiditySignature(_txn, _validatorPrivKey, _policyValidator);

        bytes memory _sigValidatorFrontend =
            ModSignature._buildValiditySignatureFrontend(_txn, _validatorPrivKey, _policyValidator);

        console.logBytes(_sigValidator);
        console.logBytes(_sigValidatorFrontend);
        assert(keccak256(_sigValidator) == keccak256(_sigValidatorFrontend));

        return TransactionValidator.SafeTransactionParams({
            from: _txn.from,
            to: _txn.to,
            value: _txn.value,
            data: _txn.txnData,
            operation: _txn.operation,
            safeTxGas: 0,
            baseGas: 0,
            gasPrice: 0,
            gasToken: address(0),
            refundReceiver: payable(0),
            signatures: abi.encodePacked(_sigValidator, uint32(65), _txn.expiryEpoch),
            msgSender: address(0)
        });
    }

    function _executeOnSafeWithSigs(
        DigestData memory _txn,
        IGnosisSafe _safe,
        uint256 _privKey,
        address _policyValidator,
        address _safeOwner
    ) internal returns (bool) {
        bytes memory _signatures = _buildPackedSignature(_txn, _privKey, _safeOwner, _policyValidator);

        return _safe.execTransaction(
            _txn.to, // to
            _txn.value, // value
            _txn.txnData, // data
            _txn.operation, // operation
            1e6, // safeTxGas
            0, // baseGas
            0, // gasPrice
            address(0), // gasToken
            payable(address(0)), // refundReceiver
            _signatures // signatures
        );
    }
}
