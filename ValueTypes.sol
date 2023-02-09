// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ValueTypes{

    bool public b = true;

    uint256 public u = 256;
    uint8 public u8 = 256;

    int public i = 255;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


}