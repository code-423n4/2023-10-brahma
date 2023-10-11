// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {AddressProvider} from "src/core/AddressProvider.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";

import "test/commons/ModSignature.sol";

contract ConsoleOpBuilder_DisablePolicyOnConsoleTest is
    Test,
    ConsoleFactory("offchain/addressManager.ts"),
    ModSignature
{
    IGnosisSafe consoleAccount;
    address payable consoleAccountAddress;
    uint256 validatorPrivKey;

    bytes32 public constant policyCommit = keccak256("policy_commit");

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);

        (, validatorPrivKey) = makeAddrAndKey("TrustedValidator");
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, vm.addr(validatorPrivKey), false);

        address[] memory owners = new address[](1);
        owners[0] = address(this);
        consoleAccountAddress = payable(safeDeployer.deployConsoleAccount(owners, 1, bytes32(0), keccak256("salt")));
        consoleAccount = IGnosisSafe(consoleAccountAddress);
    }

    function testDisablePolicyMulticall() public {
        _enablePolicy();

        assertEq(SafeHelper._getGuard(consoleAccountAddress), address(safeModeratorOverridable));
        assertEq(SafeHelper._getFallbackHandler(consoleAccountAddress), address(consoleFallbackHandler));

        bytes memory _calldata = consoleOpBuilder.disablePolicyOnConsole(consoleAccountAddress);
        DigestData memory _txn = DigestData({
            to: address(gnosisMultisend),
            txnData: _calldata,
            operation: Enum.Operation.DelegateCall,
            value: 0,
            from: consoleAccountAddress,
            nonce: consoleAccount.nonce() + 1,
            policyCommit: policyCommit,
            expiryEpoch: uint32(block.timestamp + 1000)
        });

        ModSignature._executeOnSafeWithSigs(
            _txn, consoleAccount, validatorPrivKey, address(policyValidator), address(this)
        );

        assertEq(SafeHelper._getGuard(consoleAccountAddress), address(0));
        assertEq(SafeHelper._getFallbackHandler(consoleAccountAddress), address(0));
    }

    function _enablePolicy() private {
        bytes memory _calldata = consoleOpBuilder.enablePolicyOnConsole(consoleAccountAddress, policyCommit);

        consoleAccount.execTransaction(
            address(gnosisMultisend),
            0,
            _calldata,
            Enum.Operation.DelegateCall,
            0,
            0,
            0,
            address(0),
            payable(0),
            SafeHelper._generateSingleThresholdSignature(address(this))
        );
    }
}
