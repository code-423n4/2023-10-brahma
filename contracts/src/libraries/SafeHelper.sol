/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {Enum, IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";
import {Types} from "interfaces/Types.sol";

/**
 * @title SafeHelper
 * @author Brahma.fi
 * @notice Helper library containing functions to interact with gnosis safe
 */
library SafeHelper {
    error InvalidMultiSendCall(uint256);
    error InvalidMultiSendInput();
    error SafeExecTransactionFailed();
    error UnableToParseOperation();

    /// @notice uint256(keccak256("guard_manager.guard.address"))
    /// @dev This refers to the storage slot where guard is stored in Safe's layout: https://github.com/safe-global/safe-contracts/blob/ff4c6761fbfae8ab8a94f36fd26bcfb2b5414eb1/contracts/base/GuardManager.sol#L77
    uint256 internal constant _GUARD_STORAGE_SLOT =
        33528237782592280163068556224972516439282563014722366175641814928123294921928;
    /// @notice uint256(keccak256("fallback_manager.handler.address"))
    /// @dev This refers to the storage slot where fallback handler is stored in Safe's layout: https://github.com/safe-global/safe-contracts/blob/ff4c6761fbfae8ab8a94f36fd26bcfb2b5414eb1/contracts/base/FallbackManager.sol#L14
    uint256 internal constant _FALLBACK_HANDLER_STORAGE_SLOT =
        49122629484629529244014240937346711770925847994644146912111677022347558721749;

    /**
     * @notice Contains hash for expected overridable guard removal calldata
     * @dev This is the hash of the calldata for the following function call
     *
     * abi.encodeCall(IGnosisSafe.setGuard, (address(0))) = 0xe19a9dd90000000000000000000000000000000000000000000000000000000000000000
     * keccak256(abi.encodeCall(IGnosisSafe.setGuard, (address(0)))) = 0xc0e2c16ecb99419a40dd8b9c0b339b27acebd27c481a28cd606927aeb86f5079
     */
    bytes32 internal constant _GUARD_REMOVAL_CALLDATA_HASH =
        0xc0e2c16ecb99419a40dd8b9c0b339b27acebd27c481a28cd606927aeb86f5079;

    /**
     * @notice Contains hash for expected overridable fallback handler removal calldata
     * @dev This is the hash of the calldata for the following function call
     *
     * abi.encodeCall(IGnosisSafe.setFallbackHandler, (address(0))) = 0xf08a0323000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
     * keccak256(abi.encodeCall(IGnosisSafe.setFallbackHandler, (address(0)))) = 0x5bdf8c44c012c1347b2b15694dc5cc39b899eb99e32614676b7661001be925b7
     */
    bytes32 internal constant _FALLBACK_REMOVAL_CALLDATA_HASH =
        0x5bdf8c44c012c1347b2b15694dc5cc39b899eb99e32614676b7661001be925b7;

    /**
     * @notice Executes a transaction on a safe
     *
     * @dev Allows any contract using this library to execute a transaction on a safe
     *  Assumes the contract using this method is the owner of the safe
     *  Also assumes the safe is a single threshold safe
     *  This uses pre-validated signature scheme used by gnosis
     *
     * @param safe Safe address
     * @param target Target contract address
     * @param op Safe Operation type
     * @param data Transaction data
     */
    function _executeOnSafe(address safe, address target, Enum.Operation op, bytes memory data) internal {
        bool success = IGnosisSafe(safe).execTransaction(
            address(target), // to
            0, // value
            data, // data
            op, // operation
            0, // safeTxGas
            0, // baseGas
            0, // gasPrice
            address(0), // gasToken
            payable(address(0)), // refundReceiver
            _generateSingleThresholdSignature(address(this)) // signatures
        );

        if (!success) revert SafeExecTransactionFailed();
    }

    /**
     * @notice Generates a pre-validated signature for a safe transaction
     * @dev Refer to https://docs.safe.global/learn/safe-core/safe-core-protocol/signatures#pre-validated-signatures
     * This calldata assumes that owner is the actual address that will be sending the execTransaction call to safe
     * @param owner Owner of the safe
     * @return signatures bytes array containing single pre validated owner signature
     */
    function _generateSingleThresholdSignature(address owner) internal pure returns (bytes memory) {
        bytes memory signatures = abi.encodePacked(
            bytes12(0), // Padding for signature verifier address
            bytes20(owner), // Signature Verifier
            bytes32(0), // Position of extra data bytes (last set of data)
            bytes1(hex"01") // Signature Type - 1 (presigned transaction)
        );
        return signatures;
    }

    /**
     * @notice Packs multiple executables into a single bytes array compatible with Safe's MultiSend contract which can be used as argument for multicall method
     * @dev Reference contract at https://github.com/safe-global/safe-contracts/blob/main/contracts/libraries/MultiSend.sol
     * @param _txns Array of executables to pack
     * @return packedTxns bytes array containing packed transactions
     */
    function _packMultisendTxns(Types.Executable[] memory _txns) internal pure returns (bytes memory packedTxns) {
        uint256 len = _txns.length;
        if (len == 0) revert InvalidMultiSendInput();

        uint256 i = 0;
        do {
            // Enum.Operation.Call is 0
            uint8 call = uint8(Enum.Operation.Call);
            if (_txns[i].callType == Types.CallType.DELEGATECALL) {
                call = uint8(Enum.Operation.DelegateCall);
            } else if (_txns[i].callType == Types.CallType.STATICCALL) {
                revert InvalidMultiSendCall(i);
            }

            uint256 calldataLength = _txns[i].data.length;

            bytes memory encodedTxn = abi.encodePacked(
                bytes1(call), bytes20(_txns[i].target), bytes32(_txns[i].value), bytes32(calldataLength), _txns[i].data
            );

            if (i != 0) {
                // If not first transaction, append to packedTxns
                packedTxns = abi.encodePacked(packedTxns, encodedTxn);
            } else {
                // If first transaction, set packedTxns to encodedTxn
                packedTxns = encodedTxn;
            }

            unchecked {
                ++i;
            }
        } while (i < len);
    }

    /**
     * @notice Gets the guard for a safe
     * @param safe address of safe
     * @return address of guard, address(0) if no guard exists
     */
    function _getGuard(address safe) internal view returns (address) {
        bytes memory guardAddress = IGnosisSafe(safe).getStorageAt(_GUARD_STORAGE_SLOT, 1);
        return address(uint160(uint256(bytes32(guardAddress))));
    }

    /**
     * @notice Gets the fallback handler for a safe
     * @param safe address of safe
     * @return address of fallback handler, address(0) if no fallback handler exists
     */
    function _getFallbackHandler(address safe) internal view returns (address) {
        bytes memory fallbackHandlerAddress = IGnosisSafe(safe).getStorageAt(_FALLBACK_HANDLER_STORAGE_SLOT, 1);
        return address(uint160(uint256(bytes32(fallbackHandlerAddress))));
    }

    /**
     * @notice Converts a CallType enum to an Operation enum.
     * @dev Reverts with UnableToParseOperation error if the CallType is not supported.
     * @param callType The CallType enum to be converted.
     * @return operation The converted Operation enum.
     */
    function _parseOperationEnum(Types.CallType callType) internal pure returns (Enum.Operation operation) {
        if (callType == Types.CallType.DELEGATECALL) {
            operation = Enum.Operation.DelegateCall;
        } else if (callType == Types.CallType.CALL) {
            operation = Enum.Operation.Call;
        } else {
            revert UnableToParseOperation();
        }
    }
}
