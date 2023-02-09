// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mapping{

    mapping(address => uint) public map1;

    function examples() external returns(uint){
        map1[msg.sender] = 100;

        uint senderUint = map1[msg.sender];

        return senderUint;
    }
}