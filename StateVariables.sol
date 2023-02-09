// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StateVariables{

    //状态变量
    uint public u ;

    function foo() external{
        u = 259;   //局部变量
        uint x = 100;
    }
}