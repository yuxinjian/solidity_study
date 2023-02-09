// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DataLocaltions{

    string public text ;

    function set(string calldata _text) external {
        text = _text;
    }

    function get() external returns(string memory){
        // return text;

        string memory a = "123";
        text = a ;
        return text;
    }
}