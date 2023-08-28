// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8.0;

contract StructMap{
    struct Person{
        string name;
        address enail;

    }
    mapping(address => Person) public _contactBook;

    function setContact(address _addr, string memory _name, address _email) public {
        Person storage _person = _contactBook[_addr];
        _person.name = _name;
        _person.enail = _email;
    }

    function addContact(address _addr, string memory _name, address _email) public retuns(_contactBook){
        Person storage _person = _contactBook[_addr];
        return (
            _person.name;
             _person.email;
        )

    }
}
