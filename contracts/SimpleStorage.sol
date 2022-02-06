// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/** Writing and updating to state variables, you need to send a tx. [reading is free] */

contract SimpleStorage {
    // State variable to store a number
    uint256 public num;

    // You need to send a tx, to write to a state var
    function set(uint256 _num) public {
        num = _num;
    }

    // reading is free
    function get() public view returns (uint256) {
        return num;
    }
}
