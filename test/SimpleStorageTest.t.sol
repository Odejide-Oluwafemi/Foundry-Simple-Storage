// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {SimpleStorage} from "src/SimpleStorage.sol";
import {DeploySimpleStorage} from "script/DeploySimpleStorage.s.sol";

contract SimpleStorageTest is Test{
  SimpleStorage simpleStorageContract;

  function setUp() external {
    simpleStorageContract = new DeploySimpleStorage().run();
    // console.log("Log: ", simpleStorageContract);
  }

  function testAddsDummyNameViaConstructor() public {
    assertEq(simpleStorageContract.getPersonName(0), "Admin");
  }

  function testAddsDummyFavoriteNumberViaConstructor() public {
    assertEq(simpleStorageContract.getPersonFavoriteNumber(0), 7);
  }

  function testAddPersonToListOfPeopleArray() public {
    vm.startBroadcast();
    simpleStorageContract.addPersonToListOfPeopleArray(1, "Dregg");
    vm.stopBroadcast();

    assertEq(simpleStorageContract.getPersonName(1), "Dregg");
    assertEq(simpleStorageContract.getPersonFavoriteNumber(1), 1);
  }
}