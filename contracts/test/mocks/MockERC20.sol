// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ERC20} from "solady/tokens/ERC20.sol";

contract MockERC20 is ERC20 {
    string private _name;
    string private _symbol;

    constructor(string memory name_, string memory sym_) {
        _name = name_;
        _symbol = sym_;
    }

    function mint(address _to, uint256 _amt) public {
        _mint(_to, _amt);
    }

    function name() public view override returns (string memory) {
        return _name;
    }

    function symbol() public view override returns (string memory) {
        return _symbol;
    }
}
