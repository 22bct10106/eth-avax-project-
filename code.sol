// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract errorHandeling {
    uint256 public value;

    function setValue(uint256 newValue) external {
        // Use require() to validate a condition and throw an error if not met
        require(newValue > 0, "Value must be greater than 0");

        // Use assert() to check for an internal error condition (not a user error)
        assert(newValue != 43);

        // Use revert() to revert the transaction and throw an error message
        if (newValue == 99) {
            revert("Cannot set value to 99");
        }

        // If all conditions are met, update the value
        value = newValue;
    }
}

