// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Destructuring {

    function multiOutput() public pure returns (uint, bool) {
    return (2, true);
    }

    function namedOutput() public pure returns (uint a, bool b) {
        return (1, true);
    }

    function varAssigned() public pure returns (uint a, bool b) {
        a = 1;
        b = true;
    }

    function destructAssigned() public {
        (uint a, bool b) = multiOutput();
        (, b) =multiOutput();
        // Log the values of a and b
        emit LogValues(a, b);
    }

    // 3 New Functions

    struct CombinedData {
        uint id;
        string name;
        bool status;
    }

    function combineData() public pure returns (CombinedData memory) {
        (uint id, string memory name) = getPersonData();
        bool status = isPersonActive();

        return CombinedData(id, name, status);
    }

    function getPersonData() public pure returns (uint, string memory) {
        return (731, "RJ");
    }

    function isPersonActive() public pure returns (bool) {
        return true;
    }

    // Define an event to log the values
    event LogValues(uint a, bool _b);
}
