pragma solidity ^0.5.16;

import './StandardToken.sol';

contract BUVToken is StandardToken {
    string public constant name = 'Blockchain Ultra-Ventures';
    string public constant symbol = 'BUV';
    uint8 public constant decimals = 2;
    uint256 constant _initial_supply = 2100000000;

    constructor() public {
        totalSupply_ = _initial_supply;
        balances[msg.sender] = _initial_supply;
        emit Transfer(address(0), msg.sender, _initial_supply);
    }
}
