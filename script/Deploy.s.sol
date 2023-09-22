// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";

import {Strategy} from "src/Strategy.sol";

/// @notice A very simple deployment script
contract Deploy is Script {
    /// @notice The main script entrypoint
    /// @return strategy The deployed contract
    function run() external returns (Strategy strategy) {
        vm.startBroadcast();
        strategy = new Strategy(address(0), "Greeter");
        vm.stopBroadcast();
    }
}
