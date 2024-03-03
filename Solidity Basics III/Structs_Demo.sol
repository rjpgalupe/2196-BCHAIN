// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract someCars{
    struct Car{
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;
    
    function someApplications() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lambo = Car({year: 1980, model:"Lamborghini", owner:msg.sender});
        Car memory tesla;

        tesla.model = "Tesla";
        tesla.year = 1983;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        // Added to use getOwnerCarCount function to work
        // Populate carsByOwner mapping
        for (uint i = 0; i < cars.length; i++) {
            carsByOwner[msg.sender].push(cars[i]);
        }

        cars.push(Car('Ferrari', 2020, msg.sender));

        Car storage _car = cars[0];
        _car.year = 1980;
        delete _car.owner;

        delete cars[1];
    }

    // 2 more functions

    function getCarCount() external view returns (uint) {
        return cars.length;
    }

    function getOwnerCarCount(address owner) external view returns (uint) {
        return carsByOwner[owner].length;
    }
}

