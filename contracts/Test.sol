// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

import "hardhat/console.sol";

contract Test {
    function add(uint8 a, uint8 b) public pure returns (uint8){
        return a + b;
    }

    function getBalance() public view returns (uint){
        return msg.sender.balance;
    }

    function transfer(address payable _receive, uint amount) public payable {
        console.log(msg.sender.balance);
        return _receive.transfer(amount);
    }

    uint[] a = new uint[](1);

    function test() public returns (uint){
        a[0] = 1;
        uint[] storage b = a;
        b[0] = 2;
        console.log(a[0]);
        console.log(b[0]);
    }

    function test_array() public{
        a[0] = 1;
        a.push(3);
        console.log(a.length);
    }

    int public i = 0;
    function forever() public {
        while(true){
            i++;
        }
    }
}
