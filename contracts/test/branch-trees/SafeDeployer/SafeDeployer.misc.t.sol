// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

import {AddressProvider} from "src/core/AddressProvider.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {PolicyRegistry} from "src/core/registries/PolicyRegistry.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

import {IGnosisProxyFactory} from "interfaces/external/IGnosisProxyFactory.sol";
import {IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";
import {IGnosisMultiSend} from "interfaces/external/IGnosisMultiSend.sol";

import {Types, SafeHelper} from "src/libraries/SafeHelper.sol";

contract PublicSafeDeployer is SafeDeployer {
    constructor(address _addressProvider) SafeDeployer(_addressProvider) {}

    function SAFE_CREATION_FAILURE_REASON() external pure returns (bytes32) {
        return _SAFE_CREATION_FAILURE_REASON;
    }
}

contract SafeDeployer_MiscellaneousTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    event SafeProxyCreationFailure(address indexed singleton, uint256 indexed nonce, bytes initializer);

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
    }

    function testDeploy() public {
        assertEq(address(safeDeployer.addressProvider()), address(addressProvider));
        assertEq(
            (new PublicSafeDeployer(address(addressProvider))).SAFE_CREATION_FAILURE_REASON(),
            keccak256("Create2 call failed")
        );
    }

    function testConsoleAccountDeploymentFrontrun(uint256 attempts) public {
        attempts = bound(attempts, 0, 8);

        address[] memory owners = new address[](3);
        owners[0] = makeAddr("owners[0]");
        owners[1] = makeAddr("owners[1]");
        owners[2] = makeAddr("owners[2]");
        uint256 threshold = 2;

        address gnosisProxyFactory = addressProvider.getAuthorizedAddress(_GNOSIS_PROXY_FACTORY_HASH);
        address gnosisSafeSingleton = addressProvider.getAuthorizedAddress(_GNOSIS_SINGLETON_HASH);

        uint256 idx;
        address frontrunDeployedWallet;
        bytes memory preComputeInitializer;
        uint256 preComputeNonce;
        do {
            bytes32 ownersHash = keccak256(abi.encode(owners));
            preComputeNonce = uint256(
                keccak256(
                    abi.encodePacked(
                        ownersHash,
                        safeDeployer.ownerSafeCount(ownersHash) + idx,
                        keccak256("salt"),
                        safeDeployer.VERSION()
                    )
                )
            );

            preComputeInitializer = _consoleAccountIntializer(owners, threshold);
            frontrunDeployedWallet = IGnosisProxyFactory(gnosisProxyFactory).createProxyWithNonce(
                gnosisSafeSingleton, preComputeInitializer, preComputeNonce
            );
            assertNotEq(frontrunDeployedWallet, address(0));

            unchecked {
                ++idx;
            }
        } while (idx < attempts);

        if (attempts > 0) {
            vm.expectEmit(true, true, true, true, address(safeDeployer));
            emit SafeProxyCreationFailure(gnosisSafeSingleton, preComputeNonce, preComputeInitializer);
        }

        address wallet = safeDeployer.deployConsoleAccount(owners, threshold, bytes32(0), keccak256("salt"));
        assertNotEq(wallet, address(0));
        assertNotEq(wallet, frontrunDeployedWallet);
    }

    function testSubAccountDeploymentFrontrun(uint256 attempts) public {
        attempts = bound(attempts, 0, 8);

        address[] memory owners = new address[](3);
        owners[0] = makeAddr("owners[0]");
        owners[1] = makeAddr("owners[1]");
        owners[2] = makeAddr("owners[2]");
        bytes32 _commit = keccak256("Commitment");
        uint256 threshold = 2;

        address gnosisProxyFactory = addressProvider.getAuthorizedAddress(_GNOSIS_PROXY_FACTORY_HASH);
        address gnosisSafeSingleton = addressProvider.getAuthorizedAddress(_GNOSIS_SINGLETON_HASH);

        uint256 idx;
        address frontrunDeployedWallet;
        bytes memory preComputeInitializer;
        uint256 preComputeNonce;
        do {
            bytes32 ownersHash = keccak256(abi.encode(owners));
            preComputeNonce = uint256(
                keccak256(
                    abi.encodePacked(
                        ownersHash,
                        safeDeployer.ownerSafeCount(ownersHash) + idx,
                        keccak256("salt"),
                        safeDeployer.VERSION()
                    )
                )
            );

            preComputeInitializer = _subAccountInitializer(owners, threshold, address(this));
            frontrunDeployedWallet = IGnosisProxyFactory(gnosisProxyFactory).createProxyWithNonce(
                gnosisSafeSingleton, preComputeInitializer, preComputeNonce
            );
            assertNotEq(frontrunDeployedWallet, address(0));

            unchecked {
                ++idx;
            }
        } while (idx < attempts);

        walletRegistry.registerWallet();

        if (attempts > 0) {
            vm.expectEmit(true, true, true, true, address(safeDeployer));
            emit SafeProxyCreationFailure(gnosisSafeSingleton, preComputeNonce, preComputeInitializer);
        }

        address wallet = safeDeployer.deploySubAccount(owners, threshold, _commit, keccak256("salt"));
        assertNotEq(wallet, address(0));
        assertNotEq(wallet, frontrunDeployedWallet);
    }

    function _consoleAccountIntializer(address[] memory _owners, uint256 _threshold)
        private
        view
        returns (bytes memory)
    {
        Types.Executable[] memory txns = new Types.Executable[](1);

        txns[0] = Types.Executable({
            callType: Types.CallType.CALL,
            target: addressProvider.getRegistry(_WALLET_REGISTRY_HASH),
            value: 0,
            data: abi.encodePacked(WalletRegistry.registerWallet.selector)
        });

        return abi.encodeCall(
            IGnosisSafe.setup,
            (
                _owners,
                _threshold,
                addressProvider.getAuthorizedAddress(_GNOSIS_MULTI_SEND_HASH),
                abi.encodeCall(IGnosisMultiSend.multiSend, (SafeHelper._packMultisendTxns(txns))),
                addressProvider.getAuthorizedAddress(_GNOSIS_FALLBACK_HANDLER_HASH),
                address(0),
                0,
                address(0)
            )
        );
    }

    function _subAccountInitializer(address[] memory _owners, uint256 _threshold, address _consoleAccount)
        private
        view
        returns (bytes memory)
    {
        address safeEnabler = addressProvider.getAuthorizedAddress(_SAFE_ENABLER_HASH);
        Types.Executable[] memory txns = new Types.Executable[](2);

        // Enable Console account as module on sub Account
        txns[0] = Types.Executable({
            callType: Types.CallType.DELEGATECALL,
            target: safeEnabler,
            value: 0,
            data: abi.encodeCall(IGnosisSafe.enableModule, (_consoleAccount))
        });

        // Enable guard on subAccount
        txns[1] = Types.Executable({
            callType: Types.CallType.DELEGATECALL,
            target: safeEnabler,
            value: 0,
            data: abi.encodeCall(IGnosisSafe.setGuard, (addressProvider.getAuthorizedAddress(_SAFE_MODERATOR_HASH)))
        });

        return abi.encodeCall(
            IGnosisSafe.setup,
            (
                _owners,
                _threshold,
                addressProvider.getAuthorizedAddress(_GNOSIS_MULTI_SEND_HASH),
                abi.encodeCall(IGnosisMultiSend.multiSend, (SafeHelper._packMultisendTxns(txns))),
                addressProvider.getAuthorizedAddress(_CONSOLE_FALLBACK_HANDLER_HASH),
                address(0),
                0,
                address(0)
            )
        );
    }
}
