
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    // Status public status;

    mapping (uint => string) statusData;


    constructor(){
        //to get the members of the enum
        string[5] memory track = ["Pending","Shipped","Accepted","Rejected","Canceled"];
        for(uint i; i <= uint(Status.Canceled); i++){
            statusData[i] = track[i];
        }
    }
    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status, string memory) {
        return (status, statusData[uint(status)]);
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}