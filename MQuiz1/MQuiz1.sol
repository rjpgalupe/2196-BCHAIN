// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract MQuizContract {
    address public owner;
    uint public empAge;
    uint public hoursWorked;
    uint public hourlyRate;
    uint public totalSalary;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    modifier empRate(uint _rate) {
        require(_rate > 0, "Hourly rate must be greater than zero");
        _;
    }

    modifier empHoursWorked(uint _hours) {
        require(_hours > 0, "Hours worked must be greater than zero");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setAge(uint _age) public onlyOwner {
        empAge = _age;
    }

    function setHrsWrk(uint _hours) public  onlyOwner empHoursWorked(_hours) {
        hoursWorked = _hours;
    }

    function setRate(uint _rate) public  onlyOwner empRate(_rate) {
        hourlyRate = _rate;
    }

    function calulateTotSal() public onlyOwner {
        require(hourlyRate > 0 && hoursWorked > 0, "Hourly rate and hours worked must be greater than zero");
        totalSalary = hourlyRate * hoursWorked; 
    }
}