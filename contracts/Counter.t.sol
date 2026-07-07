// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {Counter} from "./Counter.sol";
import {Test} from "forge-std/Test.sol";

contract CounterTest is Test {
    Counter counter;

    function setUp() public {
        counter = new Counter();
    }

    function test_InitialValue() public view {
        require(counter.getCount() == 0, "Initial value should be 0");
    }

    function testFuzz_Inc(uint8 x) public {
        for (uint8 i = 0; i < x; i++) {
            counter.inc();
        }

        require(
            counter.getCount() == x,
            "Value after calling inc x times should be x"
        );
    }

    function test_IncByZero() public {
        vm.expectRevert();
        counter.incBy(0);
    }

    function test_Decrement() public {
        counter.inc();
        counter.decrement();

        require(counter.getCount() == 0, "Decrement failed");
    }


    function test_Reset() public {
        counter.inc();
        counter.inc();

        counter.reset();

        require(counter.getCount() == 0, "Reset failed");
    }

}