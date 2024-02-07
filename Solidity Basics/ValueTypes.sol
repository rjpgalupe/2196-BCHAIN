// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ValueTypes {
    bool public b = true;
    bool public a;
    uint public u = 123;

    int public i = -123;

    int public minInt = type(int).min;

    address public addr = 0xa83114A443dA1CecEFC50368531cACE9F37fCCcb;
}