// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "script/utils/ConsoleFactory.s.sol";
import "../libs/SafeHelper.lib.sol";
import "interfaces/Types.sol";
import "interfaces/external/IGnosisSafe.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";
import {ERC20} from "solady/tokens/ERC20.sol";
import "test/mocks/MockERC20.sol";

contract SafeHelperTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    SafeHelperLib safeHelperLib;
    MockERC20 token = new MockERC20("MockToken", "MOCK");

    bytes expectedRes =
        hex"005615deb798bb3e4dfa0139dfa1b3d433cc23b72f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044a9059cbb00000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000056bc75e2d63100000";

    bytes expectedResMultiPack =
        hex"005615deb798bb3e4dfa0139dfa1b3d433cc23b72f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044a9059cbb00000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000056bc75e2d63100000005615deb798bb3e4dfa0139dfa1b3d433cc23b72f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044a9059cbb00000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000056bc75e2d63100000";

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        safeHelperLib = new SafeHelperLib();
    }

    function testValidateConstants() public {
        assertEq(bytes32(SafeHelper._GUARD_STORAGE_SLOT), keccak256("guard_manager.guard.address"));
        assertEq(bytes32(SafeHelper._FALLBACK_HANDLER_STORAGE_SLOT), keccak256("fallback_manager.handler.address"));
        assertEq(
            bytes32(SafeHelper._FALLBACK_REMOVAL_CALLDATA_HASH),
            keccak256(abi.encodeCall(IGnosisSafe.setFallbackHandler, (address(0))))
        );
        assertEq(SafeHelper._GUARD_REMOVAL_CALLDATA_HASH, keccak256(abi.encodeCall(IGnosisSafe.setGuard, (address(0)))));
    }

    function testPackMultisendTxn() public {
        Types.Executable[] memory _txns = new Types.Executable[](1);

        _txns[0] = Types.Executable({
            callType: Types.CallType.CALL,
            target: address(token),
            value: 0,
            data: abi.encodeCall(ERC20.transfer, (address(5), 1e20))
        });

        bytes memory res = safeHelperLib.packMultisendTxns(_txns);
        console.logBytes(res);

        assertTrue(keccak256(res) == keccak256(expectedRes));
    }

    function testPackMultisendMultipleTxn() public {
        Types.Executable[] memory _txns = new Types.Executable[](2);

        _txns[0] = Types.Executable({
            callType: Types.CallType.CALL,
            target: address(token),
            value: 0,
            data: abi.encodeCall(ERC20.transfer, (address(5), 1e20))
        });

        _txns[1] = _txns[0];

        bytes memory res = safeHelperLib.packMultisendTxns(_txns);
        console.logBytes(res);

        assertTrue(keccak256(res) == keccak256(expectedResMultiPack));
    }

    function testExecuteValidTxn() public {
        address[] memory owners = new address[](1);
        owners[0] = address(safeHelperLib);
        address wallet = safeDeployer.deployConsoleAccount(owners, 1, bytes32(0), keccak256("salt"));
        deal(address(token), wallet, 1e24, true);
        safeHelperLib.executeOnSafe(
            wallet, address(token), Enum.Operation.Call, abi.encodeCall(ERC20.transfer, (address(5), 1e20))
        );
    }

    function testFailExecuteInvalidTxn() public {
        address[] memory owners = new address[](1);
        owners[0] = address(safeHelperLib);
        address wallet = safeDeployer.deployConsoleAccount(owners, 1, bytes32(0), keccak256("salt"));
        // ERC20 transfer without enough funds
        safeHelperLib.executeOnSafe(
            wallet, address(token), Enum.Operation.Call, abi.encodeCall(ERC20.transfer, (address(5), 1e20))
        );
    }

    function testRevertStaticCall() public {
        Types.Executable[] memory _failTxns = new Types.Executable[](1);
        _failTxns[0].callType = Types.CallType.STATICCALL;

        vm.expectRevert(abi.encodeWithSelector(SafeHelper.InvalidMultiSendCall.selector, 0));
        safeHelperLib.packMultisendTxns(_failTxns);
    }

    function testRevertEmptyExec() public {
        Types.Executable[] memory _failTxns;

        vm.expectRevert(SafeHelper.InvalidMultiSendInput.selector);
        safeHelperLib.packMultisendTxns(_failTxns);
    }

    function testParseOp() public {
        assertEq(uint8(safeHelperLib.parseOperationEnum(Types.CallType.CALL)), uint8(Enum.Operation.Call));
        assertEq(
            uint8(safeHelperLib.parseOperationEnum(Types.CallType.DELEGATECALL)), uint8(Enum.Operation.DelegateCall)
        );
        vm.expectRevert(SafeHelper.UnableToParseOperation.selector);
        safeHelperLib.parseOperationEnum(Types.CallType.STATICCALL);
    }
}
