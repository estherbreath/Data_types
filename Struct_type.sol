// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8.0;

contract Struct_type{

    struct StudentDetails{
        string name;
        string class;
        uint age;
        bool isABoy;


    }

    mapping(address => StudentDetails) public register;

    function getDetails(address _addr, string memory _name, string memory _class, uint _age, bool _isABoy) public {
        StudentDetails storage studentDetails = register[_addr];
        studentDetails.name = _name;
        studentDetails.class = _class;
        studentDetails.age = _age;
        studentDetails.isABoy = _isABoy;

    }
}