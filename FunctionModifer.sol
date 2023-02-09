// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionModifer{

    uint public count ; 

    bool public onOff ;

    function changeOnOff(bool _onOff) external {
        onOff = _onOff;
    }

    //公共方法，检查开关是否为true
    function checkOnOff() public view{
        require(onOff==true , "onOff is not true");
    }

    function inc() external returns(uint){
        //函数内部在调用其他函数方法进行判断，也可以使用函数修改器
        checkOnOff();
        return count++;
    }

    function dec() external returns(uint){
        checkOnOff();
        return count--;
    }

    /**
     *  函数修改器
     */

    //使用modifier定义函数修改器，类似spring中的AOP前置，或者环绕
     modifier checkOnOffModifier(){
         if(onOff == false){
             revert("onOff is false");
         }
         //使用_  表示以上函数修改器代码执行完成之后，开始执行调用函数的其他代码
         _;
     }

    //定义函数时就使用函数修改器
     function inc2() external checkOnOffModifier {
        
         count++;
    }

    function dec2() external checkOnOffModifier {
         count--;
    }


    modifier round(){
        assert(onOff == true);
        count = 100;

        _;

        count -= 100;
    }

    function testRound() public round{
        count += 1;
        // return count;
    }
}