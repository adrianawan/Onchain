// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract Counter {
    uint256 private count;

    event Increment(uint256 by);
    event Decrement(uint256 by);
    event Reset();

    function inc() public {
        count++;
        emit Increment(1);
    }

    function incBy(uint256 by) public {
        require(by > 0, "Increment should be positive");
        count += by;
        emit Increment(by);
    }

    function decrement() public {
        require(count > 0, "Counter is already zero");
        count--;
        emit Decrement(1);
    }

    function reset() public {
        count = 0;
        emit Reset();
    }

    function getCount() public view returns (uint256) {
        return count;
    }
}