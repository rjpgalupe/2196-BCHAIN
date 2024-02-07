// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract GlobalVariables {
    function globalVars() external view returns (address, address, uint, uint, uint, bytes memory) {
        address sender = msg.sender;
        address minerAddress = block.coinbase;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        uint gaslimit = block.gaslimit;
        bytes memory calldataBytes = msg.data;

        return (sender, minerAddress, timestamp, blockNum, gaslimit, calldataBytes);
    }
}

// msg.sender represents the external actor interacting with the contract.
// block.coinbase represents the beneficiary address where the mining rewards are sent.
// block.timestamp provides a way to timestamp transactions or events in the blockchain.
// block.number represents the position of the block in the blockchain.
// block.gaslimit represents the maximum amount of as that can be cosumred by all transactions in the block.
// msg.data contains the complete calldata of the transaction, including the function signature and any input data.