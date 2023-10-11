// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "script/utils/ConsoleFactory.s.sol";
import "../libs/SafeHelper.lib.sol";
import "interfaces/Types.sol";
import "interfaces/external/IGnosisSafe.sol";
import "interfaces/external/IFallbackHandler.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";
import {ERC20} from "solady/tokens/ERC20.sol";

contract ConsoleFactoryTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    bool public isAddressHashInit;
    bytes32 public addressHash;

    address public deployedConsoleModerated;
    address public deployedConsole;

    string[2][] public allRpcs;

    function setUp() public {}

    function testMultichainDeployment() public {
        console.log("Starting test multichain deployment");
        allRpcs = vm.rpcUrls();

        uint256 i;
        do {
            console.log("[Forking] ", allRpcs[i][0]);
            _deployOnRPC(allRpcs[i][1]);
            unchecked {
                ++i;
            }
        } while (i < allRpcs.length);
        console.log("----");
    }

    function _deployOnRPC(string memory rpcUrl) internal {
        vm.createSelectFork(rpcUrl);
        ConstantSetup.setUpConstants();
        ConsoleFactory.deployConsole(address(this), false);

        address[] memory owners = new address[](3);
        owners[0] = makeAddr("owners[0]");
        owners[1] = makeAddr("owners[1]");
        owners[2] = makeAddr("owners[2]");

        deployedConsoleModerated =
            safeDeployer.deployConsoleAccount(owners, 2, bytes32(keccak256("0")), keccak256("salt"));

        deployedConsole = safeDeployer.deployConsoleAccount(owners, 2, bytes32(0), keccak256("salt"));

        console.log("deployedConsole", deployedConsole);
        console.log("deployedConsoleModerated", deployedConsoleModerated);
        assertNotEq(deployedConsole, address(0));
        assertNotEq(deployedConsoleModerated, address(0));

        assertEq(SafeHelper._getGuard(deployedConsoleModerated), address(safeModeratorOverridable));

        assertEq(
            bytes32(IFallbackHandler(deployedConsole).onERC721Received(address(0), address(0), 0, bytes(""))),
            bytes32(bytes4(0x150b7a02))
        );
        assertEq(
            bytes32(IFallbackHandler(deployedConsoleModerated).onERC721Received(address(0), address(0), 0, bytes(""))),
            bytes32(bytes4(0x150b7a02))
        );

        assertEq(
            bytes32(consoleFallbackHandler.onERC721Received(address(0), address(0), 0, bytes(""))),
            bytes32(bytes4(0x150b7a02))
        );
        assertEq(
            bytes32(IFallbackHandler(fallbackHandler).onERC721Received(address(0), address(0), 0, bytes(""))),
            bytes32(bytes4(0x150b7a02))
        );

        console.log("[computed addresses hash] chain id:", block.chainid);
        assertTrue(_doDeployedAddressesMatchPrevious());
    }

    function _doDeployedAddressesMatchPrevious() internal returns (bool) {
        bytes32 _newAddressHash =
            keccak256(abi.encode(_getEncodedRegistries(), _getEncodedCore(), _getEncodedAccounts()));

        console.logBytes32(_newAddressHash);
        console.log("----");

        if (isAddressHashInit) {
            if (_newAddressHash != addressHash) return false;
        } else {
            isAddressHashInit = true;
        }

        addressHash = _newAddressHash;
        return true;
    }

    function _getEncodedRegistries() private view returns (bytes memory) {
        return abi.encode(walletRegistry, policyRegistry, executorRegistry);
    }

    function _getEncodedCore() private view returns (bytes memory) {
        return abi.encode(
            addressProvider,
            safeDeployer,
            safeModerator,
            safeModeratorOverridable,
            policyValidator,
            executorPlugin,
            transactionValidator,
            consoleOpBuilder,
            consoleFallbackHandler,
            consoleOpBuilder,
            consoleFallbackHandler,
            safeEnabler
        );
    }

    function _getEncodedAccounts() private view returns (bytes memory) {
        return abi.encode(deployedConsole, deployedConsoleModerated);
    }
}
