// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {AddressProvider} from "src/core/AddressProvider.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {ExecutorPlugin} from "src/core/ExecutorPlugin.sol";
import {Enum, IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";
import {ModSignature} from "test/commons/ModSignature.sol";
import {Types} from "interfaces/Types.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";
import {ConsoleFallbackHandler} from "src/core/ConsoleFallbackHandler.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";
import {SignMessageLib} from "safe-contracts/examples/libraries/SignMessage.sol";
import {ISignatureValidator} from "safe-contracts/interfaces/ISignatureValidator.sol";
// import "safe-contracts/handler/CompatibilityFallbackHandler.sol";
import {MockContractSignerValid} from "test/mocks/MockContractSigner.sol";
import {GnosisSafe} from "safe-contracts/GnosisSafe.sol";

contract ConsoleFallbackHandler_IsValidSignature is ConsoleFactory("offchain/addressManager.ts"), ModSignature {
    //
    bytes4 internal constant EIP1271_MAGIC_VALUE = 0x20c13b0b;
    bytes32 constant commit = keccak256("valid_commit");
    //
    IGnosisSafe subSafeContractOwner;
    address subSafeContractOwnerAddress;
    //
    IGnosisSafe subSafeEOAOwner;
    address subSafeEOAOwnerAddress;
    //
    SignMessageLib signMessageLib;
    bytes4 constant MAGIC_VALUE = 0x20c13b0b;

    bool returnValidSignature;

    uint256 validatorPrivKey;
    uint256 notValidatorPrivKey;
    //
    uint256 safeOwnerPrivKey;
    address safeOwnerAddress;
    //
    uint256 notSafeOwnerPrivKey;
    address notSafeOwnerAddress;
    address mcsv;

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        signMessageLib = new SignMessageLib();
        //
        (, validatorPrivKey) = makeAddrAndKey("TrustedValidator");
        (, notValidatorPrivKey) = makeAddrAndKey("NotTrustedValidator");
        (safeOwnerAddress, safeOwnerPrivKey) = makeAddrAndKey("SafeOwnerPrivKey");
        (notSafeOwnerAddress, notSafeOwnerPrivKey) = makeAddrAndKey("NotSafeOwnerPrivKey");
        //
        mcsv = address(new MockContractSignerValid());
        //
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, vm.addr(validatorPrivKey), false);
        walletRegistry.registerWallet();
        //
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        //
        subSafeContractOwnerAddress = safeDeployer.deploySubAccount(owners, 1, commit, keccak256("salt"));
        subSafeContractOwner = IGnosisSafe(subSafeContractOwnerAddress);
        //
        owners[0] = safeOwnerAddress;
        subSafeEOAOwnerAddress = safeDeployer.deploySubAccount(owners, 1, commit, keccak256("salt"));
        subSafeEOAOwner = IGnosisSafe(subSafeEOAOwnerAddress);
    }

    function isValidSignature(bytes memory, bytes memory) external view returns (bytes4) {
        if (returnValidSignature) {
            return MAGIC_VALUE;
        }
        return bytes4(0);
    }

    function testDeploy() public {
        assertEq(SafeHelper._getFallbackHandler(subSafeContractOwnerAddress), address(consoleFallbackHandler));
        assertTrue(subSafeContractOwner.isModuleEnabled(address(this)));
    }

    function testIsValidSignature_ShouldRevert_SigLen0_NotApprovedInSignedMessages() public {
        vm.expectRevert("Hash not approved");
        ISignatureValidator(subSafeContractOwnerAddress).isValidSignature(
            abi.encode(0x3131204E6F76656D6265722032303030), hex""
        );
    }

    function testIsValidSignature_ShouldReturnMagicValue__SigLen0_SignedMessage() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        bytes memory _callData = abi.encodeCall(SignMessageLib.signMessage, _data);

        subSafeContractOwner.execTransactionFromModule(
            address(signMessageLib), 0, _callData, Enum.Operation.DelegateCall
        );
        //
        assertEq(ISignatureValidator(subSafeContractOwnerAddress).isValidSignature(_data, hex""), MAGIC_VALUE);
    }

    function testIsValidSignature_ShouldRevert_ValidPolicy_PreSign_HashNotApproved() public {
        //
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig,) = _buildValiditySignatureFallbackExec(
            _data, subSafeContractOwnerAddress, validatorPrivKey, address(policyValidator), _expiry
        );

        bytes memory _safeSig = SafeHelper._generateSingleThresholdSignature(address(this));

        vm.expectRevert("GS025");
        ISignatureValidator(subSafeContractOwnerAddress).isValidSignature(
            _data, abi.encodePacked(_safeSig, _validitySig, uint32(65), _expiry)
        );
    }

    function testIsValidSignature_ShouldRevert_InvalidPolicy_PreSign_NotTrustedValidator() public {
        //
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig, bytes32 _msgHash) = _buildValiditySignatureFallbackExec(
            _data, subSafeContractOwnerAddress, notValidatorPrivKey, address(policyValidator), _expiry
        );
        subSafeContractOwner.approveHash(_msgHash);
        bytes memory _safeSig = SafeHelper._generateSingleThresholdSignature(address(this));

        vm.expectRevert("Policy not approved");

        ISignatureValidator(subSafeContractOwnerAddress).isValidSignature(
            _data, abi.encodePacked(_safeSig, _validitySig, uint32(65), _expiry)
        );
    }

    function testIsValidSignature_ShouldReturnMagicValue_ValidPolicy_PreSign() public {
        //
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig, bytes32 _msgHash) = _buildValiditySignatureFallbackExec(
            _data, subSafeContractOwnerAddress, validatorPrivKey, address(policyValidator), _expiry
        );

        // PreSign should only work when hash approved
        subSafeContractOwner.approveHash(_msgHash);

        bytes memory _safeSig = SafeHelper._generateSingleThresholdSignature(address(this));

        assertEq(
            ISignatureValidator(subSafeContractOwnerAddress).isValidSignature(
                _data, abi.encodePacked(_safeSig, _validitySig, uint32(65), _expiry)
            ),
            MAGIC_VALUE
        );
    }

    function testIsValidSignature_ShouldReturnMagicValue_ValidPolicy_ECDSA() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig,) = _buildValiditySignatureFallbackExec(
            _data, subSafeEOAOwnerAddress, validatorPrivKey, address(policyValidator), _expiry
        );
        (bytes memory _safeOwnerSig,) = _buildOwnerECDSASig(_data, subSafeEOAOwnerAddress, safeOwnerPrivKey);
        assertEq(
            ISignatureValidator(subSafeEOAOwnerAddress).isValidSignature(
                _data, abi.encodePacked(_safeOwnerSig, _validitySig, uint32(65), _expiry)
            ),
            MAGIC_VALUE
        );
    }

    function testIsValidSignature_ECDSA_FE() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);

        bytes memory _safeOwnerSigFFI = _buildOwnerECDSASigFE(_data, subSafeEOAOwnerAddress, safeOwnerPrivKey);
        (bytes memory _safeOwnerSig,) = _buildOwnerECDSASig(_data, subSafeEOAOwnerAddress, safeOwnerPrivKey);
        assertEq(_safeOwnerSigFFI, _safeOwnerSig);
    }

    function testIsValidSignature_ShouldRevert_InvalidPolicy_ECDSA() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig,) = _buildValiditySignatureFallbackExec(
            _data, subSafeEOAOwnerAddress, notValidatorPrivKey, address(policyValidator), _expiry
        );

        (bytes memory _safeOwnerSig,) = _buildOwnerECDSASig(_data, subSafeEOAOwnerAddress, safeOwnerPrivKey);
        vm.expectRevert("Policy not approved");
        ISignatureValidator(subSafeEOAOwnerAddress).isValidSignature(
            _data, abi.encodePacked(_safeOwnerSig, _validitySig, uint32(65), _expiry)
        );
    }

    function testIsValidSignature_ShouldRevert_InvalidPolicy_ContractSignature() public {
        returnValidSignature = true;
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig,) = _buildValiditySignatureFallbackExec(
            _data, subSafeContractOwnerAddress, notValidatorPrivKey, address(policyValidator), _expiry
        );

        // Signature verifier - Padded address of the contract that implements the EIP 1271 interface to verify the signature
        // Data position - Position of the start of the signature data (offset relative to the beginning of the signature data)
        // Signature type - 0
        // {32-bytes signature verifier}{32-bytes data position}{1-byte signature type}{data length}
        bytes memory _sig =
            abi.encodePacked(bytes12(0), bytes20(address(this)), bytes32(uint256(65)), uint8(0), uint256(0));
        vm.expectRevert("Policy not approved");
        ISignatureValidator(subSafeContractOwnerAddress).isValidSignature(
            _data, abi.encodePacked(_sig, _validitySig, uint32(65), _expiry)
        );
    }

    function testIsValidSignature_ShouldRevert_InvalidContractSignature() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig,) = _buildValiditySignatureFallbackExec(
            _data, subSafeContractOwnerAddress, validatorPrivKey, address(policyValidator), _expiry
        );

        // Signature verifier - Padded address of the contract that implements the EIP 1271 interface to verify the signature
        // Data position - Position of the start of the signature data (offset relative to the beginning of the signature data)
        // Signature type - 0
        // {32-bytes signature verifier}{32-bytes data position}{1-byte signature type}{data length}
        bytes memory _sig =
            abi.encodePacked(bytes12(0), bytes20(address(this)), bytes32(uint256(65)), uint8(0), uint256(0));
        vm.expectRevert("GS024");
        ISignatureValidator(subSafeContractOwnerAddress).isValidSignature(
            _data, abi.encodePacked(_sig, _validitySig, uint32(65), _expiry)
        );
    }

    function testIsValidSignature_ShouldRevert_ValidContractSignature_InvalidOwner() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig,) = _buildValiditySignatureFallbackExec(
            _data, subSafeContractOwnerAddress, validatorPrivKey, address(policyValidator), _expiry
        );

        // Signature verifier - Padded address of the contract that implements the EIP 1271 interface to verify the signature
        // Data position - Position of the start of the signature data (offset relative to the beginning of the signature data)
        // Signature type - 0
        // {32-bytes signature verifier}{32-bytes data position}{1-byte signature type}{data length}
        bytes memory _sig = abi.encodePacked(bytes12(0), bytes20(mcsv), bytes32(uint256(65)), uint8(0), uint256(0));
        vm.expectRevert("GS026");
        ISignatureValidator(subSafeContractOwnerAddress).isValidSignature(
            _data, abi.encodePacked(_sig, _validitySig, uint32(65), _expiry)
        );
    }

    function testIsValidSignature_ShouldRevert_ValidPolicy_InvalidECDSA() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig,) = _buildValiditySignatureFallbackExec(
            _data, subSafeEOAOwnerAddress, validatorPrivKey, address(policyValidator), _expiry
        );

        (bytes memory _safeOwnerSig,) = _buildOwnerECDSASig(_data, subSafeEOAOwnerAddress, notSafeOwnerPrivKey);

        vm.expectRevert("GS026");
        ISignatureValidator(subSafeEOAOwnerAddress).isValidSignature(
            _data, abi.encodePacked(_safeOwnerSig, _validitySig, uint32(65), _expiry)
        );
    }

    function testIsValidSignature_ShouldReturnMagicValue_ValidPolicy_ECDSAEIP191() public {
        //
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig,) = _buildValiditySignatureFallbackExec(
            _data, subSafeEOAOwnerAddress, validatorPrivKey, address(policyValidator), _expiry
        );

        (bytes memory _safeOwnerSig,) = _buildOwnerECDSASigEIP191(_data, subSafeEOAOwnerAddress, safeOwnerPrivKey);

        assertEq(
            ISignatureValidator(subSafeEOAOwnerAddress).isValidSignature(
                _data, abi.encodePacked(_safeOwnerSig, _validitySig, uint32(65), _expiry)
            ),
            MAGIC_VALUE
        );
    }

    function testIsValidSignature_ShouldReturnMagicValue_InvalidPolicy_ECDSAEIP191() public {
        //
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig,) = _buildValiditySignatureFallbackExec(
            _data, subSafeEOAOwnerAddress, notValidatorPrivKey, address(policyValidator), _expiry
        );

        (bytes memory _safeOwnerSig,) = _buildOwnerECDSASigEIP191(_data, subSafeEOAOwnerAddress, safeOwnerPrivKey);
        vm.expectRevert("Policy not approved");
        ISignatureValidator(subSafeEOAOwnerAddress).isValidSignature(
            _data, abi.encodePacked(_safeOwnerSig, _validitySig, uint32(65), _expiry)
        );
    }

    function testIsValidSignature_ShouldReturnMagicValue_ValidPolicy_InvalidECDSAEIP191() public {
        //
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        uint32 _expiry = uint32(block.timestamp + 1000);
        (bytes memory _validitySig,) = _buildValiditySignatureFallbackExec(
            _data, subSafeEOAOwnerAddress, validatorPrivKey, address(policyValidator), _expiry
        );

        (bytes memory _safeOwnerSig,) = _buildOwnerECDSASigEIP191(_data, subSafeEOAOwnerAddress, notSafeOwnerPrivKey);

        vm.expectRevert("GS026");
        ISignatureValidator(subSafeEOAOwnerAddress).isValidSignature(
            _data, abi.encodePacked(_safeOwnerSig, _validitySig, uint32(65), _expiry)
        );
    }

    function _buildValiditySignatureFallbackExec(
        bytes memory _data,
        address _safe,
        uint256 _privKey,
        address _policyValidator,
        uint32 _expiry
    ) internal view returns (bytes memory _validitySig, bytes32 _msgHash) {
        _msgHash = consoleFallbackHandler.getMessageHashForSafe(GnosisSafe(payable(_safe)), _data);

        bytes32 _domainSeparator = keccak256(
            abi.encode(
                DOMAIN_SEPRATOR_TYPEHASH,
                keccak256("PolicyValidator"),
                keccak256("1.0"),
                block.chainid,
                _policyValidator
            )
        );

        bytes32 _validationTypeHash = keccak256(abi.encode(VALIDATION_PARAMS_TYPEHASH, _msgHash, commit, _expiry));
        bytes32 _txnValidityDigest = keccak256(abi.encodePacked("\x19\x01", _domainSeparator, _validationTypeHash));

        (uint8 v, bytes32 r, bytes32 s) = vm.sign(_privKey, _txnValidityDigest);
        return (abi.encodePacked(r, s, v), _msgHash);
    }

    function _buildOwnerECDSASig(bytes memory _data, address _safe, uint256 _privKey)
        internal
        view
        returns (bytes memory _safeOwnerSig, bytes32 _msgHash)
    {
        _msgHash = consoleFallbackHandler.getMessageHashForSafe(GnosisSafe(payable(_safe)), _data);
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(_privKey, _msgHash);
        return (abi.encodePacked(r, s, v), _msgHash);
    }

    function _buildOwnerECDSASigFE(bytes memory _data, address _safe, uint256 _privKey)
        internal
        returns (bytes memory _safeOwnerSig)
    {
        string[] memory cmd = new string[](7);

        cmd[0] = "npx";
        cmd[1] = "ts-node";
        cmd[2] = "test/commons/isValidSignatureEIP712Digest.ts";
        cmd[3] = vm.toString(bytes32(_privKey));
        cmd[4] = vm.toString(block.chainid);
        cmd[5] = vm.toString(_safe);
        cmd[6] = vm.toString(_data);

        bytes memory signature = vm.ffi(cmd);

        return signature;
    }

    function _buildOwnerECDSASigEIP191(bytes memory _data, address _safe, uint256 _privKey)
        internal
        view
        returns (bytes memory _safeOwnerSig, bytes32 _msgHash)
    {
        _msgHash = consoleFallbackHandler.getMessageHashForSafe(GnosisSafe(payable(_safe)), _data);
        bytes32 _msgHashEIP = keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", _msgHash));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(_privKey, _msgHashEIP);
        return (abi.encodePacked(r, s, uint8(v + 4)), _msgHashEIP);
    }
}
