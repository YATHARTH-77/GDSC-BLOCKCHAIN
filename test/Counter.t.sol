// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "../src/Counter.sol";  // ✅ Ensure this is correct!

contract CounterTest is Test {
    Counter token;  // ✅ Make sure "Counter" matches the contract name in Counter.sol!

    function setUp() public {
        token = new Counter();
    }

    function testInitialSupply() public {
        assertEq(token.totalSupply(), 1000 * 10**token.decimals());
    }
}
