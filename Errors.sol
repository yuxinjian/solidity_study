// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Errors{
    
    //require 进行报错控制
    function testRequire(uint x ) public pure{
        require(x <= 10 , "x>10");
    }

    //使用revert进行报错控制
    function testRevert(uint x) public pure{
        if(x < 10){
            revert("x < 10");
        }
    }

    //使用断言
    function testAssert(uint x) public pure{
        assert(x == 12);
    }

    //自定义报错信息
    error MyError(address caller , uint i);
    function customError(uint x) public view{
        revert MyError(msg.sender,x);
    }
}