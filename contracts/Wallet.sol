pragma solidity ^0.8.0;

contract Wallet{
    function deposit() public payable{

    }

    address payable public owner;

    constructor() public payable{
        owner = payable(msg.sender);
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Not owner");
        _;
    }

    function withdraw(uint amount) public onlyOwner {
        owner.transfer(amount);
    }

    function transfer(address payable to, uint amount) public onlyOwner{
        to.transfer(amount);
    }

    function getBalance() public returns (uint){
        return address(this).balance;
    }

    function transferFrom(address payable to) public payable{
        to.transfer(msg.value);
    }
}
