// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 public favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // People public person = People({favoriteNumber: 2, name: "Atiqur"});

    // An array
    People[] public people;

    // mapping with key => value pair
    mapping(string => uint256) public nameToFavoriteNumber;

    // A method or a function. store is a transaction
    function store(uint256 _favotireNumber) public returns (uint256) {
        favoriteNumber = _favotireNumber;
        return favoriteNumber;
    }

    // view is used for viewing and is not a transaction
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // Keyword memory is used to store a value and is considered as a transaction
    function addPerson(string memory _name, uint256 _favotireNumber) public {
        people.push(People(_favotireNumber, _name));
        nameToFavoriteNumber[_name] = _favotireNumber;
    }
}
