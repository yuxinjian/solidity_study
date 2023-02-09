// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IterableMapping{

    mapping(address => uint) public bal;
    mapping(address => bool) public isInsert;

    address[] public keys;

    function set (address _addr , uint _value) external {
        bal[_addr] = _value;

        if(!isInsert[_addr]){
            isInsert[_addr] = true;
            keys.push(_addr);
        }
    }

    function getLength() external view returns(uint){
        return keys.length;
    }

    function getFirst() external view returns(uint){
        return bal[keys[0]];
    }

    function getLast() external view returns(uint){
        return bal[keys[keys.length -1 ]];
    }

    function getIndex(uint _index) external view returns(uint){
        return bal[keys[_index ]];
    }
}