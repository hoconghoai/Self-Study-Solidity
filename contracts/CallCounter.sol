// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

interface ICounter {
    function count() external returns(uint);
    function increment() external;
}

contract CallCounter {
    function getCount(address _address) external returns(uint) {
        return ICounter(_address).count(); 
    }

    function increment(address _address) external {
        ICounter(_address).increment();
    }
}