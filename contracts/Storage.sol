// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Storage {
    uint counter = 0;
    bool isFinished = true;
    address owner = 0xeBDD3FD9Ba7C73101497C2BE137f7C528AdcB3f4;

    enum State {Pending, Approved, Rejected}

    function setCounter (uint newCounter) public {
        counter = newCounter;
    }

    function addCounter () public {
        counter += 1;
    }

    function getCounter()  external view returns (uint) {
        return counter;
    }
}