# ETH_AVAX-intermediate-module1
# ErrorHandling Contract

The **ErrorHandling** contract demonstrates different error handling mechanisms in Solidity: `require`, `revert`, and `assert`. These mechanisms help manage errors and exceptions in Ethereum smart contracts.

## Contract Details

- **Solidity Version**: 0.8.26
- **License**: MIT

### State Variables

- `uint public z`: Stores a value initialized to 100.
- `uint public t`: Uninitialized variable.
- `uint public k`: Initialized to 1.

### Functions

#### `checkRequire(uint _a)`

- **Description**: Checks if `_a` is greater than 100 using `require`. If not, it reverts execution with an error message.
- **Effect**: Increments `z` by 1 if `_a` is greater than 100.

#### `checkRevert(uint _c)`

- **Description**: Checks if `_c` is less than 100 using an `if` statement and reverts if true, providing an error message.
- **Effect**: Increments `z` by 1 if `_c` is not less than 100.

#### `checkAssert()`

- **Description**: Asserts that `t` is equal to 0. If not, it will revert the transaction.
- **Effect**: Increments `k` by 1 if `t` equals 0.

### Usage

To interact with this contract:

1. **Deploy the Contract**: Use a Solidity compiler and Ethereum development environment (like Remix or Truffle) to deploy this contract to a blockchain.
   
2. **Interact with Functions**:
   - **`checkRequire(uint _a)`**: Call this function with an integer `_a`. It will increment `z` if `_a` is greater than 100.
   - **`checkRevert(uint _c)`**: Call this function with an integer `_c`. It will increment `z` if `_c` is not less than 100.
   - **`checkAssert()`**: Call this function to assert that `t` is equal to 0. It will increment `k` if the assertion passes.

### Error Handling

- **`require`**: Used to validate inputs or state conditions before executing the function. If the condition is not met, the transaction is reverted.
- **`revert`**: Explicitly revert the transaction with a message. Useful for providing specific error messages.
- **`assert`**: Used to check for internal errors and invariants that should never occur. If the condition evaluates to `false`, the transaction is reverted.

