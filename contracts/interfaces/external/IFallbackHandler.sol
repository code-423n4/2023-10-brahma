// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.7.0 <0.9.0;

interface IFallbackHandler {
    function getMessageHash(bytes memory message) external view returns (bytes32);
    function getMessageHashForSafe(address safe, bytes memory message) external view returns (bytes32);
    function getModules() external view returns (address[] memory);
    function isValidSignature(bytes32 _dataHash, bytes memory _signature) external view returns (bytes4);
    function isValidSignature(bytes memory _data, bytes memory _signature) external view returns (bytes4);
    function onERC1155BatchReceived(address, address, uint256[] memory, uint256[] memory, bytes memory)
        external
        pure
        returns (bytes4);
    function onERC1155Received(address, address, uint256, uint256, bytes memory) external pure returns (bytes4);
    function onERC721Received(address, address, uint256, bytes memory) external pure returns (bytes4);
    function simulate(address targetContract, bytes memory calldataPayload) external returns (bytes memory response);
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
    function tokensReceived(address, address, address, uint256, bytes memory, bytes memory) external pure;
}
