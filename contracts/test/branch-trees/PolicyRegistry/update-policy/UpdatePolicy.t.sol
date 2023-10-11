// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import "src/core/registries/PolicyRegistry.sol";

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

contract PolicyRegistry_UpdatePolicyTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    address public wallet = makeAddr("wallet");
    address public subAccount = makeAddr("subAccount");

    bytes32 initialCommit = keccak256("init");
    bytes32 public newPolicyCommit = keccak256("policyCommit");

    event UpdatedPolicyCommit(address indexed account, bytes32 policyCommit, bytes32 oldPolicyCommit);

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
    }

    function _registerWalletAndSubAccount() public {
        vm.prank(wallet);
        walletRegistry.registerWallet();

        vm.prank(address(safeDeployer));
        walletRegistry.registerSubAccount(wallet, subAccount);
    }

    function testDeploy() public {
        assertEq(policyRegistry.addressProviderTarget(), address(addressProvider));
    }

    function testUpdatePolicy_ShouldRevertInvalidCommit() public {
        vm.expectRevert(PolicyRegistry.PolicyCommitInvalid.selector);
        vm.prank(wallet);
        policyRegistry.updatePolicy(wallet, bytes32(0));
    }

    function testUpdatePolicy_ShouldRevertSafeDeployerNonInit() public {
        _registerWalletAndSubAccount();

        vm.startPrank(wallet);
        policyRegistry.updatePolicy(wallet, initialCommit);
        policyRegistry.updatePolicy(subAccount, initialCommit);
        vm.stopPrank();

        vm.expectRevert(PolicyRegistry.UnauthorizedPolicyUpdate.selector);
        vm.prank(address(safeDeployer));
        // setCommitForWallet
        policyRegistry.updatePolicy(wallet, newPolicyCommit); // Safe deployer calls when commitment already set

        vm.expectRevert(PolicyRegistry.UnauthorizedPolicyUpdate.selector);
        vm.prank(address(safeDeployer));
        // setCommitForSubAccount
        policyRegistry.updatePolicy(subAccount, newPolicyCommit); // Safe deployer calls when commitment already set
    }

    function testUpdatePolicy_MainSafeToMainSafe() public {
        _registerWalletAndSubAccount();

        assertEq(policyRegistry.commitments(wallet), bytes32(0));
        vm.expectEmit(true, true, true, true, address(policyRegistry));
        emit UpdatedPolicyCommit(wallet, newPolicyCommit, bytes32(0));
        vm.prank(wallet);
        policyRegistry.updatePolicy(wallet, newPolicyCommit);

        assertEq(policyRegistry.commitments(wallet), newPolicyCommit);
    }

    function testUpdatePolicy_MainSafeToSubSafe() public {
        _registerWalletAndSubAccount();

        assertEq(policyRegistry.commitments(subAccount), bytes32(0));
        vm.expectEmit(true, true, true, true, address(policyRegistry));
        emit UpdatedPolicyCommit(subAccount, newPolicyCommit, bytes32(0));
        vm.prank(wallet);
        policyRegistry.updatePolicy(subAccount, newPolicyCommit);

        assertEq(policyRegistry.commitments(subAccount), newPolicyCommit);
    }

    function testUpdatePolicy_MainSafeCanOverwrite() public {
        _registerWalletAndSubAccount();

        assertEq(policyRegistry.commitments(wallet), bytes32(0));
        vm.expectEmit(true, true, true, true, address(policyRegistry));
        emit UpdatedPolicyCommit(wallet, initialCommit, bytes32(0));
        vm.prank(wallet);
        policyRegistry.updatePolicy(wallet, initialCommit);
        assertEq(policyRegistry.commitments(wallet), initialCommit);

        vm.prank(wallet);
        vm.expectEmit(true, true, true, true, address(policyRegistry));
        emit UpdatedPolicyCommit(wallet, newPolicyCommit, initialCommit);
        policyRegistry.updatePolicy(wallet, newPolicyCommit);
        assertEq(policyRegistry.commitments(wallet), newPolicyCommit);
    }

    function testUpdatePolicy_SafeDeployerInitMainSafe() public {
        _registerWalletAndSubAccount();

        assertEq(policyRegistry.commitments(wallet), bytes32(0));
        assertEq(policyRegistry.commitments(subAccount), bytes32(0));

        vm.startPrank(address(safeDeployer));
        policyRegistry.updatePolicy(wallet, newPolicyCommit);
        policyRegistry.updatePolicy(subAccount, newPolicyCommit);
        vm.stopPrank();

        assertEq(policyRegistry.commitments(wallet), newPolicyCommit);
        assertEq(policyRegistry.commitments(subAccount), newPolicyCommit);
    }

    function testUpdatePolicy_ShouldRevertSubAccountToSubAccount() public {
        _registerWalletAndSubAccount();

        vm.expectRevert(PolicyRegistry.UnauthorizedPolicyUpdate.selector);
        vm.prank(subAccount);
        policyRegistry.updatePolicy(subAccount, newPolicyCommit);
    }

    function testUpdatePolicy_ShouldRevertSubAccountToMainSafe() public {
        _registerWalletAndSubAccount();

        vm.expectRevert(PolicyRegistry.UnauthorizedPolicyUpdate.selector);
        vm.prank(subAccount);
        policyRegistry.updatePolicy(wallet, newPolicyCommit);
    }

    function testUpdatePolicy_ShouldRevertArbitrarySenderToMainSafe(uint256 pk) public {
        address sender = vm.addr(bound(pk, 1, 500));

        _registerWalletAndSubAccount();

        vm.expectRevert(PolicyRegistry.UnauthorizedPolicyUpdate.selector);
        vm.prank(sender);
        policyRegistry.updatePolicy(wallet, newPolicyCommit);
    }

    function testUpdatePolicy_ShouldRevertArbitrarySenderToSubAccount(uint256 pk) public {
        address sender = vm.addr(bound(pk, 1, 500));

        _registerWalletAndSubAccount();

        vm.expectRevert(PolicyRegistry.UnauthorizedPolicyUpdate.selector);
        vm.prank(sender);
        policyRegistry.updatePolicy(subAccount, newPolicyCommit);
    }
}
