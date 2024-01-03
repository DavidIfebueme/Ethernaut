// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "../src/Level0.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract Level0Solution is Script {
    Level0 public level0 = Level0(0xc96da25643f31a480F5aF32E7ee4a1E675D2dd49);

    function run() external{
        string memory password = level0.password();
        console.log("Password: ", password);
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        level0.authenticate(password);
        vm.stopBroadcast();
    } 
}