// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables{

    uint public x = 100;

    function globalVar() external view returns(address ,uint,uint){

        //全局变量
        address sender = msg.sender;

        //全局变量
        uint timestamp = block.timestamp;

        //全局变量
        uint blockNum = block.number;


        return(sender,timestamp,blockNum);
    }

    //view 只读，不可更改
    //pure 不能读取


}