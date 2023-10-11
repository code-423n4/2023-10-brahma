// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.19;

import "../script/utils/ConsoleFactory.s.sol";

contract DeployProtocol is ConsoleFactory {
    constructor() ConsoleFactory("offchain/addressManager.ts") {}

    function deployProtocol() public {
        ConsoleFactory.deployConsole(_getGovernance(), true);
    }

    function _getGovernance() internal view returns (address) {
        address _gov = vm.addr(uint256(vm.envBytes32("CONSOLE_MAINNET_PRIVATE_KEY")));
        require(_gov != address(0), "invalid gov");
        return _gov;
    }
}
