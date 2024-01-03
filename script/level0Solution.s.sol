// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "../src/level0.sol";
import "forge-std/console.sol";
import "forge-std/Script.sol";

contract level0Solution is Script{
    Level0 public level0 = Level0(0xc96da25643f31a480F5aF32E7ee4a1E675D2dd49);

    function run() external{
        string memory password = level0.password();
        console.log(password);
        vm.startBroadcast(vm.envUint("PRIVATE_ADDRESS"));
        level0.authenticate(password);
        vm.stopBroadcast();
    }
}