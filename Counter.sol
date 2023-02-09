// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter{

    int public u ;

    function inc() external {
        u += 1;
    }

    function dec() external { 
        u -= 1;
    }

    function testAddress() external pure returns(address,bytes32){
        address add = address(1);
        bytes32 b32 = bytes32("123");
        return (add,b32);
    }
}