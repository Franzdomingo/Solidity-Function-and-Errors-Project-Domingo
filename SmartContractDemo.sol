// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Simple Smart Contract Demo by Franz Domingo
/// @notice Shows basic usage of require(), assert(), and revert()
contract SmartContractDemo {
    // Basic state variables
    uint256 public balance;
    address public owner;
    bool public paused;

    // Basic event
    event BalanceUpdated(uint256 newBalance);

    constructor() {
        balance = 0;
        owner = msg.sender;
    }

    // Basic require() example
    function validateAge(uint256 age) public pure returns (string memory) {
        require(age > 0, "Age must be greater than 0");
        require(age >= 18, "Must be 18 or older");
        return "Age is valid";
    }

    // Basic assert() example
    function checkBalance() public view returns (uint256) {
        assert(balance >= 0);
        return balance;
    }

    // Basic revert() example
    function updateBalance(uint256 amount) public {
        if (msg.sender != owner) {
            revert("Only owner can update balance");
        }
        balance += amount;
        emit BalanceUpdated(balance);
    }

    // Simple pause function
    function togglePause() public {
        require(msg.sender == owner, "Only owner can pause");
        paused = !paused;
    }
} 