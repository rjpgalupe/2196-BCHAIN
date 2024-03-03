// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MidtermArray {
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function remove(uint index) public {
        delete arr[index];
    }

    function getLength() public view returns (uint) {
        return myFixedSizeArr.length;
    }

    // 2 new functions

    function updateElement(uint index, uint newValue) public {
        require(index < arr.length, "Index out of bounds");
        arr[index] = newValue;
    }

    function concatArrays() public view returns (uint[] memory) {
        uint[] memory result = new uint[](arr.length + arr2.length);

        for (uint i = 0; i < arr.length; i++) {
            result[i] = arr[i];
        }

        for (uint j = 0; j < arr2.length; j++) {
            result[arr.length + j] = arr2[j];
        }

        return result;
    }
}