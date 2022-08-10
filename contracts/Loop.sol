// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Loop {
    function loop() public pure {
        // For loop
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to the next iteration with Continue
                continue;
            }
            if (i == 5) {
                // Exit the loop with break
                break;
            }
        }

        // While LOOP
        uint256 j;
        while (j < 10) {
            j++;
        }
    }
}
