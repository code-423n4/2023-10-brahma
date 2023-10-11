/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {SignatureCheckerLib} from "solady/utils/SignatureCheckerLib.sol";
import {EIP712} from "solady/utils/EIP712.sol";
import {AddressProviderService} from "src/core/AddressProviderService.sol";
import {PolicyRegistry} from "src/core/registries/PolicyRegistry.sol";
import {TypeHashHelper} from "src/libraries/TypeHashHelper.sol";
import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";

/**
 * @title PolicyValidator
 * @author Brahma.fi
 * @notice Responsible for validating policy signatures for safe transactions
 */
contract PolicyValidator is AddressProviderService, EIP712 {
    error InvalidSignature();
    error NoPolicyCommit();
    error TxnExpired(uint32 expiryEpoch);
    error InvalidSignatures();

    /// @notice EIP712 domain name
    string private constant _NAME = "PolicyValidator";
    /// @notice EIP712 domain version
    string private constant _VERSION = "1.0";

    constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

    /**
     * @notice generates digest and validates signature against policies for safe transaction
     * @dev The TRUSTED_VALIDATOR is expected to sign EIP712 digest generated from the following struct:
     * TypeHashHelper.Validation, where -
     *  txnDigest = EIP712 digest generated from struct: TypeHashHelper.Transaction
     *  policyHash = policy commit hash of the safe account
     *  expiryEpoch = expiry timestamp
     *
     * @dev signatures = abi.encodePacked(safeSignature, validatorSignature, validatorSignatureLength, expiryEpoch)
     *  safeSignature = safe owners signatures (arbitrary bytes length)
     *  validatorSignature = EIP 712 digest signature (arbitrary bytes length)
     *  validatorSignatureLength = length of `validatorSignature` (4 bytes)
     *  expiryEpoch = expiry timestamp (4 bytes)
     *
     * @param account address of account to validate txn for
     * @param to target address
     * @param value txn value
     * @param data txn callData
     * @param operation type of operation
     * @param signatures user signatures appended with validation signature
     * @return isSignatureValid boolean
     */
    function isPolicySignatureValid(
        address account,
        address to,
        uint256 value,
        bytes memory data,
        Enum.Operation operation,
        bytes calldata signatures
    ) external view returns (bool) {
        // Get nonce from safe
        uint256 nonce = IGnosisSafe(account).nonce();

        // Build transaction struct hash
        bytes32 transactionStructHash = TypeHashHelper._buildTransactionStructHash(
            TypeHashHelper.Transaction({
                to: to,
                value: value,
                data: data,
                operation: uint8(operation),
                account: account,
                executor: address(0),
                nonce: nonce
            })
        );

        // Validate signature
        return isPolicySignatureValid(account, transactionStructHash, signatures);
    }

    /**
     * @notice generates digest and validates signature against policies for module execution
     * @dev signatures = abi.encodePacked(validatorSignature, validatorSignatureLength, expiryEpoch)
     *      validatorSignature = EIP 712 digest signed by `TRUSTED_VALIDATOR`(arbitrary bytes length)
     *      validatorSignatureLength = length of `validatorSignature` (4 bytes)
     *      expiryEpoch = expiry timestamp (4 bytes)
     *  Here,
     *  The `TRUSTED_VALIDATOR` is expected to sign the EIP 712 digest generated from following struct:
     *  TypeHashHelper.Validation -
     *      txnDigest = EIP712 digest generated from struct: TypeHashHelper.Transaction, with valid executor
     *      policyHash = policy commit hash of the safe account
     *      expiryEpoch = expiry timestamp
     *
     * @param account address of account to validate txn for
     * @param transactionStructHash execution digest from ExecutorPlugin
     * @param signatures user signatures appended with validation signature
     * @return isSignatureValid boolean
     */
    function isPolicySignatureValid(address account, bytes32 transactionStructHash, bytes calldata signatures)
        public
        view
        returns (bool)
    {
        // Get policy hash from registry
        bytes32 policyHash =
            PolicyRegistry(AddressProviderService._getRegistry(_POLICY_REGISTRY_HASH)).commitments(account);
        if (policyHash == bytes32(0)) {
            revert NoPolicyCommit();
        }

        // Get expiry epoch and validator signature from signatures
        (uint32 expiryEpoch, bytes memory validatorSignature) = _decompileSignatures(signatures);

        // Ensure transaction has not expired
        if (expiryEpoch < uint32(block.timestamp)) {
            revert TxnExpired(expiryEpoch);
        }

        // Build validation struct hash
        bytes32 validationStructHash = TypeHashHelper._buildValidationStructHash(
            TypeHashHelper.Validation({
                transactionStructHash: transactionStructHash,
                policyHash: policyHash,
                expiryEpoch: expiryEpoch
            })
        );

        // Build EIP712 digest with validation struct hash
        bytes32 txnValidityDigest = _hashTypedData(validationStructHash);

        address trustedValidator = AddressProviderService._getAuthorizedAddress(_TRUSTED_VALIDATOR_HASH);

        // Empty Signature check for EOA signer
        if (trustedValidator.code.length == 0 && validatorSignature.length == 0) {
            // TrustedValidator is an EOA and no trustedValidator signature is provided
            revert InvalidSignature();
        }

        // Validate signature
        return SignatureCheckerLib.isValidSignatureNow(trustedValidator, txnValidityDigest, validatorSignature);
    }

    /**
     * @notice Internal helper to extract validity signature from overall safe transaction signature
     * @dev _signatures = abi.encodePacked(safeSignature, validatorSignature, validatorSignatureLength, expiryEpoch)
     *  safeSignature = safe owners signatures (arbitrary bytes length)
     *  validatorSignature = EIP 712 digest signed (arbitrary bytes length)
     *  validatorSignatureLength = length of `validatorSignature` (4 bytes)
     *  expiryEpoch = expiry timestamp (4 bytes)
     *
     * @param _signatures packed transaction signature
     * @return expiryEpoch extracted expiry epoch signed by brahma backend
     * @return validatorSignature extracted validity signature
     */
    function _decompileSignatures(bytes calldata _signatures)
        internal
        pure
        returns (uint32 expiryEpoch, bytes memory validatorSignature)
    {
        uint256 length = _signatures.length;
        if (length < 8) revert InvalidSignatures();

        uint32 sigLength = uint32(bytes4(_signatures[length - 8:length - 4]));
        expiryEpoch = uint32(bytes4(_signatures[length - 4:length]));
        validatorSignature = _signatures[length - 8 - sigLength:length - 8];
    }

    /**
     * @notice Internal helper to get EIP712 domain name and version
     * @return name domainName
     * @return version domainVersion
     */
    function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {
        return (_NAME, _VERSION);
    }
}
