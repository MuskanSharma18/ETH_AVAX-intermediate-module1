// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ErrorHandling {
    uint public z = 100;
    uint public t;
    uint public k = 1;

    function checkRequire(uint _a) external {
        require(_a > 100, "a is less than 100");
        z++;
    }

    function checkRevert(uint _c) external {
        if (_c < 100) {
            revert("c is less than 100");
        }
        z++;
    }

    function checkAssert() external {
        assert(t == 0);
        k++;
    }
}
