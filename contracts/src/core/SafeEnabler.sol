/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {GnosisSafeStorage} from "safe-contracts/examples/libraries/GnosisSafeStorage.sol";

/**
 * @title SafeEnabler
 * @author Brahma.fi
 * @notice Contract which holds bytecode to enable modules and guards for a Gnosis Safe
 * @dev Bytecode in methods is kept as close as possible to the original Safe 1.3.0 to
 *  avoid any discrepancies in delegatecall behavior, except ignoring SelfAuthorized check
 */
contract SafeEnabler is GnosisSafeStorage {
    error OnlyDelegateCall();

    event EnabledModule(address module);
    event ChangedGuard(address guard);

    /// @notice self address
    address internal immutable _self;

    /// @notice address of sentinel modules
    address internal constant _SENTINEL_MODULES = address(0x1);

    /// @notice guard storage slot
    /// @dev keccak256("guard_manager.guard.address")
    bytes32 internal constant _GUARD_STORAGE_SLOT = 0x4a204f620c8c5ccdca3fd54d003badd85ba500436a431f0cbda4f558c93c34c8;

    constructor() {
        _self = address(this);
    }

    /**
     * @notice Enables the module `module` for the Safe.
     * @dev Delegatecall into this during initialization to set up the initial modules
     *  bypasses Safe selfAuthorized check which disallows setting up guard during initialization
     *  Refer https://github.com/safe-global/safe-contracts/blob/186a21a74b327f17fc41217a927dea7064f74604/contracts/base/ModuleManager.sol#L32C5-L32C5
     * @param module Module to be whitelisted.
     */
    function enableModule(address module) public {
        _onlyDelegateCall();

        // Module address cannot be null or sentinel.
        // solhint-disable-next-line custom-errors
        require(module != address(0) && module != _SENTINEL_MODULES, "GS101");

        // Module cannot be added twice.
        // solhint-disable-next-line custom-errors
        require(modules[module] == address(0), "GS102");
        modules[module] = modules[_SENTINEL_MODULES];
        modules[_SENTINEL_MODULES] = module;
        emit EnabledModule(module);
    }

    /**
     * @notice Sets the guard for a safe
     * @dev Delegatecall into this during initialization to set up the guard,
     *  bypasses Safe selfAuthorized check which disallows setting up guard during initialization
     *  Refer https://github.com/safe-global/safe-contracts/blob/186a21a74b327f17fc41217a927dea7064f74604/contracts/base/GuardManager.sol#L34
     * @param guard address of the guard
     * @dev delegatecalled during initialization to bypass authorization modifier and set guard on safe
     */
    function setGuard(address guard) public {
        _onlyDelegateCall();

        bytes32 slot = _GUARD_STORAGE_SLOT;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            sstore(slot, guard)
        }
        emit ChangedGuard(guard);
    }

    /**
     * @notice Validates if the current call being made is DELEGATECALL
     * @dev reverts if not DELEGATECALL
     */
    function _onlyDelegateCall() private view {
        if (address(this) == _self) revert OnlyDelegateCall();
    }
}
