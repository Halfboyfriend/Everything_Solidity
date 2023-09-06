// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ReplaceArray {
    uint[] public arr;

    // Deleting
    function remove(uint _index) public {
        arr[_index] = arr[arr.length - 1]; // swap position
        // Remove the last
        arr.pop();
    }

    function test() public {
        arr = [1,2,3,4,5];
        remove(1);
        // [1,5,3,4]
        assert(arr[0] == 1);
        assert(arr[1] == 5);
        assert(arr[2] == 3);
        assert(arr[3] == 4);
        remove(2);
        // [1,5,4]
        assert(arr.length == 3);
    }
    
}