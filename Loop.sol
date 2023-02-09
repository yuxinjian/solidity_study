// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Loop{

    function loop(uint _x) external pure returns(uint) {
        uint _y; 
        while(_y<_x){
            _y++;
        }
        return _y;
    }

}