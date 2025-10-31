// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
  struct Person {
    uint256 favoriteNumber;
    string name;
  }

  Person[] public sListOfPeople;

  constructor() {
    addPersonToListOfPeopleArray(7, "Admin");
  }

  // Setters
  function addPersonToListOfPeopleArray(uint256 favoriteNumber, string memory name) public {
    sListOfPeople.push(Person({
      favoriteNumber: favoriteNumber,
      name: name
    }));
  }

  // Getters
  function getPersonFavoriteNumber(uint256 index) public view returns (uint256)
  {
    return sListOfPeople[index].favoriteNumber;
  }

  function getPersonName(uint256 index) public view returns (string memory)
  {
    return sListOfPeople[index].name;
  }
}