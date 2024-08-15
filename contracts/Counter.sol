// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract StorageCounter {
    string storedInfo="";
    uint public countChanges=0;

    constructor(string memory _storedInfo) {
        storedInfo = _storedInfo;
    }

    function setStoredInfo(string memory _storedInfo) public {
        require(countChanges <= 5, "[ERROR] The counter should be less than 5");

        storedInfo = _storedInfo;
        countChanges+=1;
    }

    function getStoredInfo() public view returns (string memory) {
        return storedInfo;
    }
}