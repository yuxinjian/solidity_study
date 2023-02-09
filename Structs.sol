// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Structs{

    //使用struct定义结构体，其实就是类
    struct Car{
        string name;
        uint age;
        address owner;
    }

    Car public car ;
    Car[] public cars;
    mapping(address => Car[]) public carOwner;

    function examples() external{
        //使用结构体创建对象，不同于java的是少了new关键字
        Car memory bmw = Car("bmw",1,msg.sender);
        Car memory viso = Car("viso",7,address(1));

        car = bmw;
        //往数组中添加结构体对象
        cars.push(bmw);
        cars.push(viso);

        carOwner[msg.sender] = cars; 

        Car memory lambo ;
        lambo.name = "lambo"; 

        //此处使用memory无法修改内存中的数据，需要改成stroage
        Car storage _car = cars[0];
        _car.name = " edit";
    }

}