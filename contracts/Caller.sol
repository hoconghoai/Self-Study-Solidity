// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

contract Caller {
    uint public x;
    uint y;
    address public callee;

    constructor(address _callee){
        callee = _callee;
    }

    function callX(uint _x) public{
        (bool success, ) = callee.call(abi.encodeWithSignature("setX(uint256)", _x));
        require(success, "Error");
    }

    function delegateCallX(uint _x) public{
        (bool success, ) = callee.delegatecall(abi.encodeWithSignature("setX(uint256)", _x));
        require(success, "Error");
    }

    function delegateCallA(uint _a) public{
        (bool success, ) = callee.delegatecall(abi.encodeWithSignature("setA(uint256)", _a));
        require(success, "Error");
    }

    function getY() public view returns(uint){
        return y;
    }
}