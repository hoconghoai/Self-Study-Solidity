// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

contract Counter {
    uint public count;

    function increment() public {
        count++;
    }
}