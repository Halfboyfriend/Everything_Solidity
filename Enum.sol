// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

// ENUM => ENUMERABLE/ ENUMERATIONS

contract Enum {
    // enum rep shipping status
    enum shipingStatus {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    shipingStatus public status;
    // we also have indexing system in Enum
    // There for Pending - 0
    // Shipped - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4

    function get() public view  returns (shipingStatus){
        return status;
    }

    function set(shipingStatus _status) public {
        status = _status;
    }
    function cancle() public {
        status = shipingStatus.Canceled;
    }
    function reset() public {
        delete status;
    }
}
