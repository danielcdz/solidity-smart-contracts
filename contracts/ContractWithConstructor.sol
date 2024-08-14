// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Contract {
    uint value = 0;
    address public owner;

    constructor (uint _value) {
        value = _value;
        owner = msg.sender;
    }


    function getValue() public view returns (uint) {
        return value;
    }

}