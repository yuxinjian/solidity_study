// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract A{

    //被重写的函数需要加上virtrual
    function foo() external pure virtual returns(string memory){
        return "A";
    }

    function bar() external pure virtual returns(string memory){
        return "A";
    }
}

contract B is A{
    //重写父类的函数需要加上override
    function foo() external pure virtual override returns(string memory){
        return "B";
    }
}

contract C is B{
    function foo() external pure override returns(string memory){
        return "C";
    }
}