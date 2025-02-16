// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/Counter.sol";

contract DeployMyNFT is Script {
    function run() external {
        vm.startBroadcast();
        new MyNFT("ipfs://QmExampleMetadata/");
        vm.stopBroadcast();
    }
}
