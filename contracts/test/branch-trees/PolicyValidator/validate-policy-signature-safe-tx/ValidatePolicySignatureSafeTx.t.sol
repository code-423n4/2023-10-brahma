// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {AddressProvider} from "src/core/AddressProvider.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {PolicyRegistry} from "src/core/registries/PolicyRegistry.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {PolicyValidator} from "src/core/PolicyValidator.sol";
import {IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";
import "test/commons/ModSignature.sol";
import {SafeHelper, IGnosisSafe, Enum} from "src/libraries/SafeHelper.sol";
import {MockAddressProviderService} from "test/mocks/MockAddressProviderService.sol";
import {MockContractSignerValid, MockContractSignerInvalid} from "test/mocks/MockContractSigner.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

contract PolicyValidator_isPolicySignatureValidSafeTxTest is
    ConsoleFactory("offchain/addressManager.ts"),
    ModSignature
{
    // keccak256("guard_manager.guard.address")
    bytes32 internal constant SAFE_GUARD_STORAGE_SLOT =
        0x4a204f620c8c5ccdca3fd54d003badd85ba500436a431f0cbda4f558c93c34c8;

    IGnosisSafe mainSafe;
    MockAddressProviderService aps;
    MockContractSignerValid mcsv;
    MockContractSignerInvalid mcsi;

    uint256 validatorPrivKey;
    uint256 notValidatorPrivKey;

    address gov = makeAddr("gov");
    bytes32 commit = keccak256("commit");
    bytes32 invalid_commit = keccak256("invalid_commit");

    function setUp() public {
        mcsv = new MockContractSignerValid();
        mcsi = new MockContractSignerInvalid();

        ConsoleFactory.deployConsole(address(this), false);
        aps = new MockAddressProviderService(address(addressProvider));

        (, validatorPrivKey) = makeAddrAndKey("TrustedValidator");
        (, notValidatorPrivKey) = makeAddrAndKey("NotTrustedValidator");

        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, vm.addr(validatorPrivKey), false);

        address[] memory owners = new address[](1);
        owners[0] = address(this);
        mainSafe = IGnosisSafe(safeDeployer.deployConsoleAccount(owners, 1, bytes32(0), keccak256("salt")));
        walletRegistry.registerWallet();
    }

    function testValidateSafe_ShouldRevertWhenExpired() public {
        _updatePolicy(address(mainSafe), commit);

        DigestData memory txn = DigestData({
            to: makeAddr("to"),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp - 1000)
        });

        vm.expectRevert(abi.encodeWithSelector(PolicyValidator.TxnExpired.selector, uint32(block.timestamp - 1000)));
        bytes memory _sig =
            ModSignature._buildPackedSignature(txn, validatorPrivKey, address(this), address(policyValidator));
        policyValidator.isPolicySignatureValid(txn.from, txn.to, txn.value, txn.txnData, txn.operation, _sig);
    }

    function testValidateSafe_ReturnTrueValidEOASignature() public {
        _updatePolicy(address(mainSafe), commit);

        DigestData memory txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, (makeAddr("module"))),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        bytes memory _sig =
            ModSignature._buildPackedSignature(txn, validatorPrivKey, address(this), address(policyValidator));
        assertTrue(
            policyValidator.isPolicySignatureValid(txn.from, txn.to, txn.value, txn.txnData, txn.operation, _sig)
        );
    }

    function testValidateSafe_ReturnFalseInvalidEOASignature() public {
        _updatePolicy(address(mainSafe), commit);

        DigestData memory txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, (makeAddr("module"))),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        bytes memory _sig =
            ModSignature._buildPackedSignature(txn, notValidatorPrivKey, address(this), address(policyValidator));

        assertFalse(
            policyValidator.isPolicySignatureValid(txn.from, txn.to, txn.value, txn.txnData, txn.operation, _sig)
        );
    }

    function testValidateSafe_ReturnTrueValidContractSignature() public {
        _updatePolicy(address(mainSafe), commit);
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, address(mcsv), true);

        DigestData memory txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, (makeAddr("module"))),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        bytes memory _sig =
            ModSignature._buildPackedSignature(txn, validatorPrivKey, address(this), address(policyValidator));
        assertTrue(
            policyValidator.isPolicySignatureValid(txn.from, txn.to, txn.value, txn.txnData, txn.operation, _sig)
        );
    }

    function testValidateSafe_ReturnFalseInvalidContractSignature() public {
        _updatePolicy(address(mainSafe), commit);
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, address(mcsi), true);

        DigestData memory txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, (makeAddr("module"))),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        bytes memory _sig =
            ModSignature._buildPackedSignature(txn, validatorPrivKey, address(this), address(policyValidator));
        assertFalse(
            policyValidator.isPolicySignatureValid(txn.from, txn.to, txn.value, txn.txnData, txn.operation, _sig)
        );
    }

    function testValidateSafe_RevertInvalidLength() public {
        _updatePolicy(address(mainSafe), commit);
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, address(mcsi), true);

        DigestData memory txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, (makeAddr("module"))),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        vm.expectRevert(PolicyValidator.InvalidSignatures.selector);
        policyValidator.isPolicySignatureValid(txn.from, txn.to, txn.value, txn.txnData, txn.operation, bytes(""));
    }

    function testValidateSafe_RevertInvalidSignature() public {
        _updatePolicy(address(mainSafe), commit);

        DigestData memory txn = DigestData({
            to: address(mainSafe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, (makeAddr("module"))),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(mainSafe),
            nonce: mainSafe.nonce(),
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        bytes memory _sig = ModSignature._buildSafeSignature(address(this));

        vm.expectRevert(PolicyValidator.InvalidSignature.selector);
        policyValidator.isPolicySignatureValid(
            txn.from,
            txn.to,
            txn.value,
            txn.txnData,
            txn.operation,
            abi.encodePacked(_sig, hex"", uint32(0), txn.expiryEpoch)
        );
    }

    function _updatePolicy(address _safe, bytes32 _policy) private {
        bytes memory _attachSafeModeratorCalldata = abi.encodeCall(PolicyRegistry.updatePolicy, (_safe, _policy));

        SafeHelper._executeOnSafe(
            address(_safe), aps.getRegistry(_POLICY_REGISTRY_HASH), Enum.Operation.Call, _attachSafeModeratorCalldata
        );
    }
}
