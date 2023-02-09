// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Event{

    event Log(string name,uint val);
    event IndexedLog(address indexed addr,uint val);

    function examples() external{
        emit Log("event" , 100);

        emit IndexedLog(msg.sender , 100);
    }

    event Message(address indexed _from, address indexed _to, string msg);

    function sendmsg(address _to, string calldata _msg) external{
        emit Message(msg.sender,_to, _msg);
    }

}