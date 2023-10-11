pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "forge-std/interfaces/IERC20.sol";
import {SafeDeployer} from "src/core/SafeDeployer.sol";
import {SafeModerator} from "src/core/SafeModerator.sol";
import {IGnosisSafe} from "interfaces/external/IGnosisSafe.sol";
import {SafeHelper, IGnosisSafe, Enum} from "src/libraries/SafeHelper.sol";
import "interfaces/Types.sol";

import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";
import "test/mocks/MockERC20.sol";

contract SafeModerator_MiscellaneousTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    IGnosisSafe mainSafe;
    IGnosisSafe subAccount;
    uint256 userPrivKey;
    address userAddress;
    address token;

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        token = address(new MockERC20("MockERC20", "MOCK"));

        (userAddress, userPrivKey) = makeAddrAndKey("User");
        address[] memory _owners = new address[](1);
        _owners[0] = userAddress;
        mainSafe = IGnosisSafe(safeDeployer.deployConsoleAccount(_owners, 1, bytes32(0), keccak256("salt")));
        vm.prank(address(mainSafe));
        subAccount = IGnosisSafe(safeDeployer.deploySubAccount(_owners, 1, keccak256("commit"), keccak256("salt")));
    }

    function testWithdrawETHFromSubAccountWithoutValidation() public {
        // User makes a txn from console safe to take funds out of the subaccount
        //
        deal(address(subAccount), 1e20);

        // txn to make 11e18 eth transfer to address(1111)
        Types.Executable memory _txn =
            Types.Executable({callType: Types.CallType.CALL, target: address(1111), value: 11e18, data: hex""});

        bytes memory _data = abi.encodeCall(
            IGnosisSafe.execTransactionFromModuleReturnData,
            (_txn.target, _txn.value, _txn.data, SafeHelper._parseOperationEnum(_txn.callType))
        );

        bytes memory _sig = _signTxEOA(
            _encodeTxData(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), mainSafe.nonce()
            ),
            userPrivKey
        );

        assertEq(policyRegistry.commitments(address(subAccount)), keccak256("commit")); // Make sure policyHash is set

        assertTrue(
            mainSafe.execTransaction(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), _sig
            )
        );
        assertEq(address(1111).balance, 11e18);
    }

    function testWithdrawERC20FromSubAccountWithoutValidation() public {
        // User makes a txn from console safe to take funds out of the subaccount
        //
        deal(token, address(subAccount), 1e20, true);

        // txn to make 11e18 token transfer to address(1111)
        Types.Executable memory _txn = Types.Executable({
            callType: Types.CallType.CALL,
            target: token,
            value: 0,
            data: abi.encodeCall(IERC20.transfer, (address(1111), 11e18))
        });

        bytes memory _data = abi.encodeCall(
            IGnosisSafe.execTransactionFromModuleReturnData,
            (_txn.target, _txn.value, _txn.data, SafeHelper._parseOperationEnum(_txn.callType))
        );

        bytes memory _sig = _signTxEOA(
            _encodeTxData(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), mainSafe.nonce()
            ),
            userPrivKey
        );

        assertEq(policyRegistry.commitments(address(subAccount)), keccak256("commit")); // Make sure policyHash is set

        assertTrue(
            mainSafe.execTransaction(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), _sig
            )
        );
        assertEq(IERC20(token).balanceOf(address(1111)), 11e18);
    }

    function testConsoleToAddOwnerToSubAccount() public {
        // User makes a txn from console safe to change ownership (owners/threshold) of subaccount
        //
        Types.Executable memory _txn = Types.Executable({
            callType: Types.CallType.CALL,
            target: address(subAccount),
            value: 0,
            data: abi.encodeCall(IGnosisSafe.addOwnerWithThreshold, (address(11), 2))
        });

        bytes memory _data = abi.encodeCall(
            IGnosisSafe.execTransactionFromModuleReturnData,
            (_txn.target, _txn.value, _txn.data, SafeHelper._parseOperationEnum(_txn.callType))
        );

        bytes memory _sig = _signTxEOA(
            _encodeTxData(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), mainSafe.nonce()
            ),
            userPrivKey
        );

        assertEq(policyRegistry.commitments(address(subAccount)), keccak256("commit")); // Make sure policyHash is set

        assertTrue(
            mainSafe.execTransaction(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), _sig
            )
        );
        assertTrue(subAccount.isOwner(address(11)));
        assertEq(subAccount.getThreshold(), 2);
    }

    function testConsoleToRemoveOwnerToSubAccount() public {
        // User makes a txn from console safe to change ownership (owners/threshold) of subaccount
        //
        Types.Executable memory _txn = Types.Executable({
            callType: Types.CallType.CALL,
            target: address(subAccount),
            value: 0,
            data: abi.encodeCall(IGnosisSafe.addOwnerWithThreshold, (address(11), 1))
        });
        bytes memory _data = abi.encodeCall(
            IGnosisSafe.execTransactionFromModuleReturnData,
            (_txn.target, _txn.value, _txn.data, SafeHelper._parseOperationEnum(_txn.callType))
        );

        bytes memory _sig = _signTxEOA(
            _encodeTxData(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), mainSafe.nonce()
            ),
            userPrivKey
        );
        assertTrue(
            mainSafe.execTransaction(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), _sig
            )
        );
        // Added address(11) as owners
        //
        _txn = Types.Executable({
            callType: Types.CallType.CALL,
            target: address(subAccount),
            value: 0,
            data: abi.encodeCall(IGnosisSafe.removeOwner, (address(0x1), address(11), 1))
        });

        _data = abi.encodeCall(
            IGnosisSafe.execTransactionFromModuleReturnData,
            (_txn.target, _txn.value, _txn.data, SafeHelper._parseOperationEnum(_txn.callType))
        );

        _sig = _signTxEOA(
            _encodeTxData(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), mainSafe.nonce()
            ),
            userPrivKey
        );
        assertTrue(
            mainSafe.execTransaction(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), _sig
            )
        );
        assertFalse(subAccount.isOwner(address(11)));
        assertTrue(subAccount.isOwner(address(userAddress)));
    }

    function testConsoleToSwapOwnerToSubAccount() public {
        // User makes a txn from console safe to change ownership (owners/threshold) of subaccount
        //
        Types.Executable memory _txn = Types.Executable({
            callType: Types.CallType.CALL,
            target: address(subAccount),
            value: 0,
            data: abi.encodeCall(IGnosisSafe.swapOwner, (address(0x1), userAddress, address(11)))
        });

        bytes memory _data = abi.encodeCall(
            IGnosisSafe.execTransactionFromModuleReturnData,
            (_txn.target, _txn.value, _txn.data, SafeHelper._parseOperationEnum(_txn.callType))
        );

        bytes memory _sig = _signTxEOA(
            _encodeTxData(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), mainSafe.nonce()
            ),
            userPrivKey
        );

        assertTrue(
            mainSafe.execTransaction(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), _sig
            )
        );

        assertTrue(subAccount.isOwner(address(11)));
        assertFalse(subAccount.isOwner(address(userAddress)));
    }

    function testMakeSubAccountDelegateCallWithValidation() public {
        // Subaccount delegatee unable to run txn on subaccount without brahma validation
        //
        Types.Executable memory _txn = Types.Executable({
            callType: Types.CallType.CALL,
            target: address(subAccount),
            value: 0,
            data: abi.encodeCall(IGnosisSafe.swapOwner, (address(0x1), userAddress, address(11)))
        });

        bytes memory _data = abi.encodeCall(
            IGnosisSafe.execTransactionFromModuleReturnData,
            (_txn.target, _txn.value, _txn.data, SafeHelper._parseOperationEnum(_txn.callType))
        );

        bytes memory _sig = _signTxEOA(
            _encodeTxData(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), mainSafe.nonce()
            ),
            userPrivKey
        );

        assertTrue(
            mainSafe.execTransaction(
                address(subAccount), 0, _data, Enum.Operation.Call, 0, 0, 0, address(0), payable(0), _sig
            )
        );

        assertTrue(subAccount.isOwner(address(11)));
        assertFalse(subAccount.isOwner(address(userAddress)));
    }

    function testCheckModuleCompatibility() public {
        safeModerator.checkModuleTransaction(address(0), 0, hex"", Enum.Operation.Call, address(0));
    }

    function _signTxEOA(bytes memory _encodedTxData, uint256 _privateKey) internal pure returns (bytes memory) {
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(_privateKey, keccak256(_encodedTxData));
        return abi.encodePacked(r, s, v);
    }

    function _encodeTxData(
        address _to,
        uint256 _value,
        bytes memory _data,
        Enum.Operation _operation,
        uint256 _safeTxGas,
        uint256 _baseGas,
        uint256 _gasPrice,
        address _gasToken,
        address _refundReceiver,
        uint256 _nonce
    ) private view returns (bytes memory) {
        return mainSafe.encodeTransactionData(
            _to, _value, _data, _operation, _safeTxGas, _baseGas, _gasPrice, _gasToken, _refundReceiver, _nonce
        );
    }
}
