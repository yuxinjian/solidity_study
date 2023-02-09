// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionIntro{

    function add(uint8 x , uint8 y) external pure returns(uint) {
        return x + y ;
    }

    function sub(uint8 x , uint8 y) external pure returns(uint) {
        return x - y;
    }
}
