// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TodoList{

    struct Todo {
        string text;
        bool isComp;
    }

    Todo[] public todos;
    
    function create (string calldata _text) external {
        todos.push(Todo({
            text: _text,
            isComp: false
        }));
    }

    function update(uint _index,string calldata _text) external{
        // todos[_index] = _text;
        Todo storage todoObj = todos[_index];
        todoObj.text = _text;
    }
    
    function get(uint _index) external view returns(string memory,bool) {
        Todo storage todoObj = todos[_index];
        return (todoObj.text , todoObj.isComp);
    }

}