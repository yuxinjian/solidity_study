// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Enums{

    //使用enum定义枚举
    enum Status{
        None,
        Pending,
        Completed,
        Rejected
    }

    Status public status;

    struct Order{
        address owner;
        Status status;
    }

    Order public order1; 
    Order public order2; 

    function changeOrder1() external{
        order1.owner = msg.sender;
        order1.status = Status.Pending;
    }

    function get() external view returns(Status) {
        return status;
    }

    function complet() external{
        status = Status.Completed;
    }

    function set(Status _status) external{
        status = _status;
    }
}