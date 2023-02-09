// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Arrasys{
    
    uint[] public nums = [1,2,3];
    uint[3] numsFiexd = [4,5,6];

    function changeNums() external {
        //push 往后追加
        nums.push(4);

        //delete 不能删除数组的数据，只能让其变成该类型的默认值
        delete nums[0];

        //使用pop删除最后一位元素
        nums.pop();

        nums.length;

    }

    function returnArray() external view returns (uint[] memory){
        return nums;
    }

    function memoryArray() external pure returns(uint[] memory){
        uint[] memory myArray = new uint[](3);
        myArray[0] = 1;
        return myArray;
    }


    function delArray(uint index) external returns(uint[] memory){
        nums[index] = nums[nums.length - 1];
        nums.pop();

        return nums;
    }
}