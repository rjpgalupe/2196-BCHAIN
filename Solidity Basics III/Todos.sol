// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Structs_Demo2.sol";

contract Todos {
    //An array of 'Todo' structs
    Todo[] public todos;

    // 2 new functions
    function addTodo(string memory _text, bool _completed) public {
        todos.push(Todo({
            text: _text,
            completed: _completed
        }));
    }

    function getCompletedCount() public view returns (uint) {
        uint count = 0;
        for (uint i = 0; i < todos.length; i++) {
            if (todos[i].completed) {
                count++;
            }
        }
        return count;
    }
}

