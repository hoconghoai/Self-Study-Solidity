// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;
contract ContractA {
    function test(address _add) public returns(uint){
        ContractB b = ContractB(_add);
        return b.testB();
    }
}

contract ContractB {
    function testB() public pure returns(uint){
        return 1;
    }
}

contract ContractC {
    function testB() public pure returns(uint){
        return 2;
    }
}