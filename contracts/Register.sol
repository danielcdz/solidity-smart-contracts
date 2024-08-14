// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;

contract Register {
    string private storedInfo;

    function setInfo(string memory myInfo) external {
        storedInfo = myInfo;
    }


    function getInfo() external view returns (string memory) {
        return storedInfo;
    }
}