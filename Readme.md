# Basic Solidity Error Handling Demo

A simple demonstration of basic Solidity error handling for beginners. This project shows how to use `require()`, `assert()`, and `revert()` statements in Solidity smart contracts.

## Features

- Basic error handling with require(), assert(), and revert()
- Simple balance management
- Basic age validation
- Simple pause functionality
- Owner-based control

## Contract Functions

- `validateAge(uint256 age)`: Checks if age is valid (18 or older)
- `checkBalance()`: Simple balance check using assert
- `updateBalance(uint256 newBalance)`: Updates contract balance (owner only)
- `togglePause()`: Simple pause function (owner only)

## Getting Started with Remix

1. Go to [Remix IDE](https://remix.ethereum.org/)

2. Create a new file by clicking the "+" icon in the left sidebar. Name it `SmartContractDemo.sol`

3. Copy and paste the contract code into the file

4. Click on the "Solidity Compiler" tab in the left sidebar
   - Select compiler version 0.8.20
   - Click "Compile SmartContractDemo.sol"

5. Click on the "Deploy & Run Transactions" tab
   - Select "SmartContractDemo" from the contract dropdown
   - Click "Deploy"

6. Test the functions:
   - Try `validateAge` with different numbers
   - Use `updateBalance` to change the balance
   - Check the balance with `checkBalance`
   - Toggle the pause state with `togglePause`

## Basic Error Handling Examples

1. Using require():
```solidity
require(age >= 18, "Must be 18 or older");
```

2. Using assert():
```solidity
assert(balance >= 0);
```

3. Using revert():
```solidity
if (condition) {
    revert("Error message");
}
```

## License

This project is licensed under the MIT License.