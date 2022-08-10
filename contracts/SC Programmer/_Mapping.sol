// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mappings {
    mapping(address => uint256) public balances;

    /// @dev nested mapping is friend
    mapping(address => mapping(address => bool)) public isFriend;

    function examples() external returns (uint256 _bal) {
        // Add to mapping
        balances[msg.sender] = 10;

        // Get
        _bal = balances[msg.sender];

        // Get for non existing record
        uint256 _bal2 = balances[address(0)]; // Returns int's default which is 0

        // Update
        balances[msg.sender] += 23; // 10 + 23 = 33

        // Delete
        delete balances[msg.sender]; // 0

        // Set is friend to this contract
        isFriend[msg.sender][address(this)] = true;
    }
}
