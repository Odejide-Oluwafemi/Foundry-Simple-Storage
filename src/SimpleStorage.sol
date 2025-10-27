// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
  struct Person {
    uint256 favoriteNumber;
    string name;
  }

  Person[] public sListOfPeople;

  // Setters
  function addPersonToListOfPeopleArray(uint256 favoriteNumber, string memory name) public {
    sListOfPeople.push(Person({
      favoriteNumber: favoriteNumber,
      name: name
    }));
  }

  // Getters
}