// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LineA{

    function foo() external pure virtual returns(string memory){
        return "A";
    }

    function bar() external pure virtual returns(string memory){
        return "A";
    }

    function baz() external pure virtual returns(string memory){
        return "A";
    }
}

contract B is LineA{

    function foo() external pure virtual override returns(string memory){
        return "B";
    }

    function bar() external pure  virtual override returns(string memory){
        return "B";
    }

    function b() external pure returns(string memory){
        return "Bb";
    }

}

contract C is LineA,B{

    function foo() external pure override(LineA,B) returns(string memory){
        return "C";
    }

     function bar() external pure override(LineA,B) returns(string memory){
        return "C";
    }

}