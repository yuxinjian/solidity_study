// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TestConstructor{

    address public owner ;

    uint public x ;

    //构造函数
    constructor(uint y){
        owner = msg.sender;
        x = y;
    }
}