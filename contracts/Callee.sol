// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

contract Callee{
    uint public x;
    uint public a;

    function setX(uint256 _x) public {
        x = _x;
    }

    function setA(uint256 _a) public {
        a = _a;
    }
}