// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract StoredInfoCounter {
    string storedInfo;
    uint public countChanges=0;
    address public owner;
    address public lastExecutioner;

    constructor(string memory _storedInfo) {
        storedInfo = _storedInfo;
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "[ERROR] Only the owner can perform this action");
        _;
    }

    modifier lessThanfiveChanges() {
        require(countChanges <= 5, "[ERROR] The counter should be less than 5!");
        _;
    }
    
    modifier saveLastExecutioner(){
        lastExecutioner = msg.sender;
        _;
    }

    function setStoredInfo(string memory _storedInfo) public onlyOwner lessThanfiveChanges saveLastExecutioner{
        storedInfo = _storedInfo;
        countChanges++;
    }

    function getStoredInfo() public view  returns (string memory) {
        return storedInfo;
    }
}