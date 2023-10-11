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
import {Types} from "interfaces/Types.sol";
import {IGnosisMultiSend} from "../../../../interfaces/external/IGnosisMultiSend.sol";

contract SafeDeployer_DeployConsoleAccountTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
    }

    function testDeploy() public {
        assertEq(address(safeDeployer.addressProvider()), address(addressProvider));
    }

    function testDeployConsoleAccount_WithoutPolicyCommit() public {
        address[] memory owners = new address[](3);
        owners[0] = makeAddr("owners[0]");
        owners[1] = makeAddr("owners[1]");
        owners[2] = makeAddr("owners[2]");

        address _wallet = safeDeployer.deployConsoleAccount(owners, 2, bytes32(0), keccak256("salt"));
        assert(_wallet != address(0));

        assertEq(IGnosisSafe(_wallet).getThreshold(), 2);
        assertEq(IGnosisSafe(_wallet).getOwners().length, 3);
        assertEq(IGnosisSafe(_wallet).getOwners()[0], owners[0]);
        assertEq(IGnosisSafe(_wallet).getOwners()[1], owners[1]);
        assertEq(SafeHelper._getFallbackHandler(_wallet), fallbackHandler);
        assertEq(SafeHelper._getGuard(_wallet), address(0));
        assertEq(safeDeployer.ownerSafeCount(keccak256(abi.encode(owners))), 1);
        assertEq(walletRegistry.isWallet(_wallet), true);
    }

    function testDeployConsoleAccount_WithPolicyCommit() public {
        address[] memory owners = new address[](3);
        owners[0] = makeAddr("owners[0]");
        owners[1] = makeAddr("owners[1]");
        owners[2] = makeAddr("owners[2]");
        bytes32 _commit = keccak256("Commitment");

        address _wallet = safeDeployer.deployConsoleAccount(owners, 2, _commit, keccak256("salt"));
        assert(_wallet != address(0));

        assertEq(IGnosisSafe(_wallet).getThreshold(), 2);
        assertEq(IGnosisSafe(_wallet).getOwners().length, 3);
        assertEq(IGnosisSafe(_wallet).getOwners()[0], owners[0]);
        assertEq(IGnosisSafe(_wallet).getOwners()[1], owners[1]);
        assertEq(SafeHelper._getFallbackHandler(_wallet), address(consoleFallbackHandler));
        assertEq(SafeHelper._getGuard(_wallet), address(safeModeratorOverridable));

        assertEq(safeDeployer.ownerSafeCount(keccak256(abi.encode(owners))), 1);
        assertEq(walletRegistry.isWallet(_wallet), true);
        assertEq(policyRegistry.commitments(_wallet), _commit);
    }

    function testRevertDeployConsoleAccount_OwnerZeroAddress() public {
        address[] memory owners = new address[](3);
        owners[0] = makeAddr("owners[0]");
        owners[2] = makeAddr("owners[2]");

        vm.expectRevert(SafeDeployer.SafeProxyCreationFailed.selector);
        safeDeployer.deployConsoleAccount(owners, 2, bytes32(0), keccak256("salt"));
    }

    function testRevertDeployConsoleAccount_Create2CallFailed() public {
        addressProvider.setAuthorizedAddress(_GNOSIS_MULTI_SEND_HASH, address(this), true);

        address[] memory _owners = new address[](3);
        _owners[0] = makeAddr("owners[0]");
        _owners[1] = makeAddr("owners[1]");
        _owners[2] = makeAddr("owners[2]");

        vm.expectRevert(SafeDeployer.SafeProxyCreationFailed.selector);
        safeDeployer.deployConsoleAccount(_owners, 2, bytes32(0), keccak256("salt"));
    }

    fallback() external {
        revert("Not create 2 failed");
    }
}
