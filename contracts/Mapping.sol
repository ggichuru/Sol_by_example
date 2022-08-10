// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mapping {
    // A mapping from address to uint
    mapping(address => uint256) public myMap;

    /// @dev Mappings always return a value, if the value was not set, it defaults to 0

    function get(address _addr) external view returns (uint256 val) {
        val = myMap[_addr];
    }

    /// @dev update mapping value for an address
    function set(address _addr, uint256 val) external {
        myMap[_addr] = val;
    }

    /// @dev reset mapping to default value
    function remove(address _addr) external {
        delete myMap[_addr];
    }

    /// @dev increment current value by 10
    function increment(address _addr) external {
        myMap[_addr] += 10;
    }
}

contract NestedMapping {
    /// @dev nested mapping from address to another mapping
    mapping(address => mapping(uint256 => bool)) public nested;

    /// @dev get values from a nested mapping :- even when its not initialized
    function get(address _addr, uint256 _i) external view returns (bool val) {
        val = nested[_addr][_i];
    }

    function set(
        address _addr,
        uint256 _i,
        bool _bool
    ) external {
        nested[_addr][_i] = _bool;
    }

    function remove(address _addr, uint256 _i) external {
        delete nested[_addr][_i];
    }
}
