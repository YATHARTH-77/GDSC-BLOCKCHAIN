// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/Counter.sol";

contract DeployMyToken is Script {
    function run() external {
        vm.startBroadcast(); // Uses the private key from Foundry

        uint256 initialSupply = 1000000; // 1 million tokens
        Counter token = new Counter();

        console.log("MyToken deployed at:", address(token));

        vm.stopBroadcast();
    }
}
