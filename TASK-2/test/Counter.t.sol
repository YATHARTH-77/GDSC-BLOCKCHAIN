// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "../src/Counter.sol"; 

contract CounterTest is Test {
    Counter token;  

    function setUp() public {
        token = new Counter();
    }

    function testInitialSupply() public {
        assertEq(token.totalSupply(), 1000 * 10**token.decimals());
    }
}
