// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {AddressProvider} from "src/core/AddressProvider.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {PolicyRegistry} from "src/core/registries/PolicyRegistry.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";
import {SafeEnabler} from "src/core/SafeEnabler.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";
import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";

contract SafeEnabler_EnableModuleTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    IGnosisSafe consoleAccount;
    address payable consoleAccountAddress;

    event EnabledModule(address module);

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        consoleAccountAddress = payable(safeDeployer.deployConsoleAccount(owners, 1, bytes32(0), keccak256("salt")));
        consoleAccount = IGnosisSafe(consoleAccountAddress);
    }

    function testRevertEnableModule_OnlyDelegateCall() public {
        bytes memory _calldata = abi.encodeWithSelector(SafeEnabler.enableModule.selector, [address(1)]);

        vm.expectRevert("GS013");
        consoleAccount.execTransaction(
            address(safeEnabler),
            0,
            _calldata,
            Enum.Operation.Call,
            0,
            0,
            0,
            address(0),
            payable(0),
            SafeHelper._generateSingleThresholdSignature(address(this))
        );
    }

    function testRevertEnableModule_ZeroAddrModule() public {
        bytes memory _calldata = abi.encodeWithSelector(SafeEnabler.enableModule.selector, [address(0)]);

        vm.expectRevert("GS013");
        consoleAccount.execTransaction(
            address(safeEnabler),
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

    function testRevertEnableModule_SentinelModule() public {
        bytes memory _calldata = abi.encodeWithSelector(SafeEnabler.enableModule.selector, [address(1)]);

        vm.expectRevert("GS013");
        consoleAccount.execTransaction(
            address(safeEnabler),
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

    function testEnableModule() public {
        address _module = makeAddr("module");
        bytes memory _calldata = abi.encodeWithSelector(SafeEnabler.enableModule.selector, [address(_module)]);

        vm.expectEmit(true, true, true, true, address(consoleAccount));
        emit EnabledModule(_module);
        assertTrue(
            consoleAccount.execTransaction(
                address(safeEnabler),
                0,
                _calldata,
                Enum.Operation.DelegateCall,
                0,
                0,
                0,
                address(0),
                payable(0),
                SafeHelper._generateSingleThresholdSignature(address(this))
            )
        );
        assertTrue(consoleAccount.isModuleEnabled(_module));
    }

    function testRevertEnableModule_ReAddingModuleTwice() public {
        address _module = makeAddr("module");
        bytes memory _calldata = abi.encodeWithSelector(SafeEnabler.enableModule.selector, [address(_module)]);

        assertTrue(
            consoleAccount.execTransaction(
                address(safeEnabler),
                0,
                _calldata,
                Enum.Operation.DelegateCall,
                0,
                0,
                0,
                address(0),
                payable(0),
                SafeHelper._generateSingleThresholdSignature(address(this))
            )
        );
        assertTrue(consoleAccount.isModuleEnabled(_module));
        //
        vm.expectRevert("GS013");
        consoleAccount.execTransaction(
            address(safeEnabler),
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
