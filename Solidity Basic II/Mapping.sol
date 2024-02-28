// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MappingExmaple {
    mapping (address => uint256) public valueMapping;

    function serValue(uint256 _value) public {
        valueMapping[msg.sender] = _value;
    }

    function getValue() public view returns(uint256){
        return valueMapping[msg.sender];
    }
}