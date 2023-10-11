// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {AddressProvider} from "src/core/AddressProvider.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {SafeModerator} from "src/core/SafeModerator.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";

import {SafeHelper, IGnosisSafe, Enum} from "src/libraries/SafeHelper.sol";

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

import "test/mocks/MockTransactionValidator.sol";
import {ModSignature} from "test/commons/ModSignature.sol";

contract SafeModeratorOverridable_CheckTransactionTest is
    Test,
    ModSignature,
    ConsoleFactory("offchain/addressManager.ts"),
    MockTransactionValidator
{
    IGnosisSafe safe;

    uint256 validatorPrivKey;
    bool isTxValid;

    bytes32 commit = keccak256("commit");

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        (, validatorPrivKey) = makeAddrAndKey("Validator");

        addressProvider.setAuthorizedAddress(_TRANSACTION_VALIDATOR_HASH, address(this), true);

        address[] memory owners = new address[](1);
        owners[0] = address(this);
        safe = IGnosisSafe(safeDeployer.deployConsoleAccount(owners, 1, commit, keccak256("salt")));
    }

    function validatePreTransactionOverridable(TransactionValidator.SafeTransactionParams memory)
        external
        view
        override
    {
        if (isTxValid) return;

        revert TxnUnAuthorized();
    }

    function testDeploy() public {
        assertTrue(address(safe) != address(0));
        assertEq(SafeHelper._getGuard(address(safe)), address(safeModeratorOverridable));
    }

    function testCheckTransaction_Valid() public {
        isTxValid = true;

        DigestData memory _txn = DigestData({
            to: address(safe),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(safe),
            nonce: safe.nonce() + 1,
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        ModSignature._executeOnSafeWithSigs(_txn, safe, validatorPrivKey, address(policyValidator), address(this));
    }

    function testCheckTransaction_ShouldRevert() public {
        isTxValid = true;

        DigestData memory _txn = DigestData({
            to: address(this),
            txnData: abi.encodeCall(IGnosisSafe.enableModule, makeAddr("module")),
            operation: Enum.Operation.Call,
            value: 0,
            from: address(safe),
            nonce: safe.nonce() + 1,
            policyCommit: commit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        /// @dev ensure failure isnt from checkAfterTransaction (isValidTx is true at this point)
        ModSignature._executeOnSafeWithSigs(_txn, safe, validatorPrivKey, address(policyValidator), address(this));

        isTxValid = false;
        vm.expectRevert(TxnUnAuthorized.selector);
        ModSignature._executeOnSafeWithSigs(_txn, safe, validatorPrivKey, address(policyValidator), address(this));
    }
}
