// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFinalsActivity2 {
    address payable public owner;
    uint256 public immutable creationTime;
    uint256 public INITIAL_ETH_AMOUNT = 2 ether; // Made public
    uint256 public remainingEth;

    event EtherReceived(address indexed sender, uint256 amount);
    event EtherSent(address indexed recipient, uint256 amount);
    event ContractDestroyed(address indexed recipient, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
        creationTime = block.timestamp;
        remainingEth = INITIAL_ETH_AMOUNT;
    }

    receive() external payable {
        remainingEth += msg.value;
        emit EtherReceived(msg.sender, msg.value);
    }

    function sendEther(address payable _recipient, uint256 _amount) external onlyOwner {
        require(_amount <= remainingEth, "Insufficient balance");
        remainingEth -= _amount;
        _recipient.transfer(_amount);
        emit EtherSent(_recipient, _amount);
    }

    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }

    function destroy() external onlyOwner {
        uint256 contractBalance = address(this).balance;
        owner.transfer(contractBalance);
        emit ContractDestroyed(owner, contractBalance);
    }

    function receiveAndEmit() external payable {
        remainingEth += msg.value;
        emit EtherReceived(msg.sender, msg.value);
    }
}
