// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import "../interfaces/Types.sol";

interface IWalletAdapter is Types {
    function id() external view returns (uint8);

    function formatForWallet(address _wallet, Types.Executable memory _txn)
        external
        view
        returns (Types.Executable memory);

    function isAuthorized(address _wallet, address _user) external view returns (bool);

    function decodeReturnData(bytes memory data) external view returns (bool success, bytes memory returnData);
}
