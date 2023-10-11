// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {ModSignature} from "test/commons/ModSignature.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";
import {IGnosisSafe, Enum} from "interfaces/external/IGnosisSafe.sol";
import {IFallbackHandler} from "interfaces/external/IFallbackHandler.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";
import {GnosisSafe} from "safe-contracts/GnosisSafe.sol";
import {MockContractSignerValid, MockContractSignerInvalid} from "test/mocks/MockContractSigner.sol";
import {SignMessageLib} from "safe-contracts/examples/libraries/SignMessage.sol";
import {ISignatureValidator} from "safe-contracts/interfaces/ISignatureValidator.sol";

contract ConsoleFallbackHandler_Misc is ConsoleFactory("offchain/addressManager.ts"), ModSignature {
    using stdStorage for StdStorage;

    //
    bytes4 internal constant EIP1271_MAGIC_VALUE = 0x20c13b0b;
    bytes32 constant commit = keccak256("valid_commit");
    //
    IGnosisSafe consoleWPolicy;
    address payable consoleWPolicyAddress;
    IGnosisSafe consoleNoPolicy;
    address payable consoleNoPolicyAddress;
    SignMessageLib signMessageLib;
    bool returnValidSignature;
    address mscv;
    address msci;
    uint256 validatorPrivKey;
    bytes4 constant MAGIC_VALUE = 0x20c13b0b;
    bytes4 constant ON_1155_BATCH = 0xbc197c81;
    bytes4 constant ON_1155 = 0xf23a6e61;
    bytes4 constant ON_721 = 0x150b7a02;

    IFallbackHandler compatibilityFallbackHandler;
    bytes32 public domainSeparator = keccak256("DOMAIN_SEPRATOR");
    bytes32 private constant SAFE_MSG_TYPEHASH = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca;
    bytes32 private constant SAFE_DOMAIN_SEPARATOR_TYPEHASH =
        0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218;

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        mscv = address(new MockContractSignerValid());
        msci = address(new MockContractSignerInvalid());
        walletRegistry.registerWallet();
        //
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        //
        signMessageLib = new SignMessageLib();
        (, validatorPrivKey) = makeAddrAndKey("TrustedValidator");
        addressProvider.setAuthorizedAddress(_TRUSTED_VALIDATOR_HASH, vm.addr(validatorPrivKey), false);

        //
        consoleWPolicyAddress = payable(safeDeployer.deployConsoleAccount(owners, 1, commit, keccak256("salt")));
        consoleWPolicy = IGnosisSafe(consoleWPolicyAddress);
        consoleNoPolicyAddress = payable(safeDeployer.deployConsoleAccount(owners, 1, bytes32(0), keccak256("salt")));
        consoleNoPolicy = IGnosisSafe(consoleNoPolicyAddress);
        compatibilityFallbackHandler = IFallbackHandler(fallbackHandler);
    }

    function generateSafeDomainSeprator(address _safe) private view returns (bytes32) {
        return keccak256(abi.encode(SAFE_DOMAIN_SEPARATOR_TYPEHASH, block.chainid, _safe));
    }

    function generateMessageHashForSafe(address _safe, bytes memory _message) private view returns (bytes32) {
        bytes32 safeMessageHash = keccak256(abi.encode(SAFE_MSG_TYPEHASH, keccak256(_message)));
        return
            keccak256(abi.encodePacked(bytes1(0x19), bytes1(0x01), generateSafeDomainSeprator(_safe), safeMessageHash));
    }

    function testDeploy() public {
        assertEq(SafeHelper._getFallbackHandler(consoleWPolicyAddress), address(consoleFallbackHandler));
        assertEq(SafeHelper._getFallbackHandler(consoleNoPolicyAddress), fallbackHandler);
    }

    function testGetMessageHash() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);

        assertEq(consoleFallbackHandler.getMessageHash(_data), compatibilityFallbackHandler.getMessageHash(_data));
        assertEq(
            IFallbackHandler(consoleNoPolicyAddress).getMessageHash(_data),
            generateMessageHashForSafe(consoleNoPolicyAddress, _data)
        );
        assertEq(
            IFallbackHandler(consoleWPolicyAddress).getMessageHash(_data),
            generateMessageHashForSafe(consoleWPolicyAddress, _data)
        );
    }

    function testGetMessageHashForSafe() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);

        assertEq(
            consoleFallbackHandler.getMessageHashForSafe(GnosisSafe(consoleWPolicyAddress), _data),
            compatibilityFallbackHandler.getMessageHashForSafe(consoleWPolicyAddress, _data)
        );
        assertEq(
            IFallbackHandler(consoleNoPolicyAddress).getMessageHashForSafe(consoleNoPolicyAddress, _data),
            generateMessageHashForSafe(consoleNoPolicyAddress, _data)
        );
        assertEq(
            IFallbackHandler(consoleWPolicyAddress).getMessageHashForSafe(consoleWPolicyAddress, _data),
            generateMessageHashForSafe(consoleWPolicyAddress, _data)
        );
    }

    function testGetModules() public {
        vm.prank(consoleWPolicyAddress);
        bytes32 consolefhm = keccak256(abi.encode(consoleFallbackHandler.getModules()));
        vm.prank(consoleWPolicyAddress);
        bytes32 compatfhm = keccak256(abi.encode(compatibilityFallbackHandler.getModules()));
        assertEq(consolefhm, compatfhm);
        //
        consolefhm = keccak256(abi.encode(IFallbackHandler(consoleWPolicyAddress).getModules()));
        compatfhm = keccak256(abi.encode(IFallbackHandler(consoleNoPolicyAddress).getModules()));
        assertEq(consolefhm, compatfhm);
    }

    function testIsValidSignatureBytes() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);

        vm.startPrank(msci);
        bytes32 consoleivs = consoleFallbackHandler.isValidSignature(keccak256(_data), _data);
        bytes32 compativs = compatibilityFallbackHandler.isValidSignature(keccak256(_data), _data);
        assertEq(consoleivs, compativs);
        vm.stopPrank();

        vm.startPrank(mscv);
        consoleivs = consoleFallbackHandler.isValidSignature(keccak256(_data), _data);
        compativs = compatibilityFallbackHandler.isValidSignature(keccak256(_data), _data);
        assertEq(consoleivs, compativs);
        vm.stopPrank();
    }
    //

    function testIsValidSignatureBytes32() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        // Write signed messages
        bytes32 _hashWPolicy =
            IFallbackHandler(address(consoleFallbackHandler)).getMessageHashForSafe(consoleWPolicyAddress, _data);

        stdstore.target(consoleWPolicyAddress).sig("signedMessages(bytes32)").with_key(_hashWPolicy).checked_write(1);

        bytes32 _hashNoPolicy =
            IFallbackHandler(address(consoleFallbackHandler)).getMessageHashForSafe(consoleNoPolicyAddress, _data);
        stdstore.target(consoleNoPolicyAddress).sig("signedMessages(bytes32)").with_key(_hashNoPolicy).checked_write(1);
        // ----------------------------- //
        assertEq(
            keccak256(abi.encode(IFallbackHandler(consoleNoPolicyAddress).isValidSignature(_data, hex""))),
            keccak256(abi.encode(MAGIC_VALUE))
        );
        assertEq(
            keccak256(abi.encode(IFallbackHandler(consoleWPolicyAddress).isValidSignature(_data, hex""))),
            keccak256(abi.encode(MAGIC_VALUE))
        );
    }
    //

    uint256[] dummyUintArr;

    function testOnReceiveTokens() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        dummyUintArr.push(1);
        dummyUintArr.push(2);
        assertEq(
            IFallbackHandler(consoleWPolicyAddress).onERC1155BatchReceived(
                address(this), address(this), dummyUintArr, dummyUintArr, _data
            ),
            ON_1155_BATCH
        );
        assertEq(
            IFallbackHandler(consoleWPolicyAddress).onERC1155Received(
                address(this), address(this), uint256(1), uint256(1), _data
            ),
            ON_1155
        );

        assertEq(
            IFallbackHandler(consoleWPolicyAddress).onERC721Received(address(this), address(this), uint256(1), _data),
            ON_721
        );
    }

    function simulateAndRevert(address targetContract, bytes memory calldataPayload) external {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            let success := delegatecall(gas(), targetContract, add(calldataPayload, 0x20), mload(calldataPayload), 0, 0)

            mstore(0x00, success)
            mstore(0x20, returndatasize())
            returndatacopy(0x40, 0, returndatasize())
            revert(0, add(returndatasize(), 0x40))
        }
    }

    function testSimulate() public {
        returnValidSignature = true;
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        bytes4 SELECTOR = bytes4(keccak256("isValidSignature(bytes,bytes)"));

        assertEq(
            compatibilityFallbackHandler.simulate(
                address(mscv), abi.encodeWithSelector(SELECTOR, abi.encode(_data, _data))
            ),
            consoleFallbackHandler.simulate(address(mscv), abi.encodeWithSelector(SELECTOR, abi.encode(_data, _data)))
        );
    }

    function testSimulateViaSafe() public {
        bytes memory _data = abi.encode(0x3131204E6F76656D6265722032303030);
        bytes4 SELECTOR = bytes4(keccak256("isValidSignature(bytes,bytes)"));

        assertEq(
            IFallbackHandler(consoleWPolicyAddress).simulate(
                address(mscv), abi.encodeWithSelector(SELECTOR, abi.encode(_data, _data))
            ),
            abi.encode(MAGIC_VALUE)
        );
    }
}
