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

contract SafeModeratorOverridable_CheckAfterExecutionTest is
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

    function validatePostTransactionOverridable(bytes32, /*txHash */ bool, /*success */ address /*subAccount*/ )
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

    function testCheckAfterExecution_Valid() public {
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

    function testCheckAfterExecution_ShouldRevert() public {
        isTxValid = false;

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

        // ensure failure isnt from check before
        safeModerator.checkTransaction(
            _txn.to, // to
            _txn.value, // value
            _txn.txnData, // data
            _txn.operation, // operation
            1e6, // safeTxGas
            0, // baseGas
            0, // gasPrice
            address(0), // gasToken
            payable(address(0)), // refundReceiver
            ModSignature._buildPackedSignature(_txn, validatorPrivKey, address(this), address(policyValidator)),
            address(safe)
        );

        vm.expectRevert(TxnUnAuthorized.selector);
        ModSignature._executeOnSafeWithSigs(_txn, safe, validatorPrivKey, address(policyValidator), address(this));
    }
}
