// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionOutputs{

    //返回多个值
    function returnMany() public pure returns(uint ,bool){
        return (100,true);
    }

    //定义名称返回
    function named() public pure returns(uint x,bool b){
        return (1,false);
    }

    //隐式返回
    function assigned() public pure returns(uint x,bool b){
        x =255;
        b = true;
    }

    function test() public pure returns(uint u ,bool b1){
        (uint x , bool b) = returnMany();
        x +=100;
        b = false;

        u = x;
        b1 = b;
    }
}