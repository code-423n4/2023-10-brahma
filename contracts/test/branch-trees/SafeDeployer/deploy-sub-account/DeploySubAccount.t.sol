// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {AddressProvider} from "src/core/AddressProvider.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {PolicyRegistry} from "src/core/registries/PolicyRegistry.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";
import {IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";

contract SafeDeployer_DeploySubAccountTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    address notGov = makeAddr("notGov");
    address gov = makeAddr("gov");

    // keccak256("guard_manager.guard.address")
    bytes32 internal constant SAFE_GUARD_STORAGE_SLOT =
        0x4a204f620c8c5ccdca3fd54d003badd85ba500436a431f0cbda4f558c93c34c8;

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
    }

    function testDeploy() public {
        assertEq(address(safeDeployer.addressProvider()), address(addressProvider));
    }

    function testDeploySubAccount_Succesful() public {
        address[] memory owners = new address[](3);
        owners[0] = makeAddr("owners[0]");
        owners[1] = makeAddr("owners[1]");
        owners[2] = makeAddr("owners[2]");
        bytes32 _commit = keccak256("Commitment");

        walletRegistry.registerWallet();

        address _subAccount = safeDeployer.deploySubAccount(owners, 2, _commit, keccak256("salt"));
        assert(_subAccount != address(0));

        assertEq(IGnosisSafe(_subAccount).getThreshold(), 2);
        assertEq(IGnosisSafe(_subAccount).getOwners().length, 3);
        assertEq(IGnosisSafe(_subAccount).getOwners()[0], owners[0]);
        assertEq(IGnosisSafe(_subAccount).getOwners()[1], owners[1]);
        assertEq(safeDeployer.ownerSafeCount(keccak256(abi.encode(owners))), 1);
        assertEq(walletRegistry.subAccountToWallet(_subAccount), address(this));
        assertEq(policyRegistry.commitments(_subAccount), _commit);
        assertTrue(IGnosisSafe(_subAccount).isModuleEnabled(address(this)));
        assertEq(SafeHelper._getGuard(address(_subAccount)), address(safeModerator));
    }

    function testDeploySubAccount_ShouldRevertInvalidCommitment() public {
        address[] memory owners = new address[](3);
        owners[0] = makeAddr("owners[0]");
        owners[1] = makeAddr("owners[1]");
        owners[2] = makeAddr("owners[2]");
        vm.expectRevert(abi.encodeWithSelector(SafeDeployer.InvalidCommitment.selector));

        safeDeployer.deploySubAccount(owners, 2, bytes32(0), keccak256("salt"));
    }

    function testDeploySubAccount_ShouldRevertNotWallet() public {
        address[] memory owners = new address[](3);
        owners[0] = makeAddr("owners[0]");
        owners[1] = makeAddr("owners[1]");
        owners[2] = makeAddr("owners[2]");
        bytes32 _commit = keccak256("Commitment");

        vm.expectRevert(abi.encodeWithSelector(SafeDeployer.NotWallet.selector));

        safeDeployer.deploySubAccount(owners, 2, _commit, keccak256("salt"));
    }
}
