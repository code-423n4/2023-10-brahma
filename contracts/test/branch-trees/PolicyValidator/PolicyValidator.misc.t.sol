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

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

contract PolicyValidator_MiscellaneousTest is ConsoleFactory("offchain/addressManager.ts"), ModSignature {
    // keccak256("guard_manager.guard.address")
    bytes32 internal constant SAFE_GUARD_STORAGE_SLOT =
        0x4a204f620c8c5ccdca3fd54d003badd85ba500436a431f0cbda4f558c93c34c8;

    IGnosisSafe mainSafe;
    MockAddressProviderService aps;

    uint256 validatorPrivKey;
    uint256 notValidatorPrivKey;

    address gov = makeAddr("gov");
    bytes32 commit = keccak256("commit");
    bytes32 invalid_commit = keccak256("invalid_commit");

    function setUp() public {
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

    function testDeploy() public {
        (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        ) = policyValidator.eip712Domain();
        assertEq(name, "PolicyValidator");
        assertEq(version, "1.0");
        assertEq(chainId, block.chainid);
        assertEq(verifyingContract, address(policyValidator));
        assertEq(fields, hex"0f");
        assertEq(salt, bytes32(0));
        assertEq(extensions.length, 0);
    }

    function testRevertWhenGuardSetButNotCommit_NoPolicyCommit() public {
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
        vm.expectRevert(PolicyValidator.NoPolicyCommit.selector);
        policyValidator.isPolicySignatureValid(txn.from, txn.to, txn.value, txn.txnData, txn.operation, _sig);
    }

    function _updatePolicy(address _safe, bytes32 _policy) private {
        bytes memory _attachSafeModeratorCalldata = abi.encodeCall(PolicyRegistry.updatePolicy, (_safe, _policy));

        SafeHelper._executeOnSafe(
            address(_safe), aps.getRegistry(_POLICY_REGISTRY_HASH), Enum.Operation.Call, _attachSafeModeratorCalldata
        );
    }
}
