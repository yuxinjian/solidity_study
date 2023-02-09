// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Ownable{

    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier checkOwner(){
        require(owner == msg.sender,"owner is error");
        _;
    }

    function changeOwner(address _newOwner) public checkOwner{
        require(_newOwner != address(0) , "input error");
        owner = _newOwner;
    }

    function onlyOwner() public checkOwner{

    }

    function anyBody() public {

    }
}