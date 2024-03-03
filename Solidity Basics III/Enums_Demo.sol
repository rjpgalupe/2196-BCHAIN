// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function cancel() public {
        status = Status.Canceled;
    }

    function accept() public {
        status = Status.Accepted;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }

    // 2 new status
    // Function to check if the status is Shipped or Canceled
    function isFinalized() public view returns (bool) {
        return status == Status.Shipped || status == Status.Canceled;
    }

    // Function to check if the status is Pending
    function isPending() public view returns (bool) {
        return status == Status.Pending;
    }
}