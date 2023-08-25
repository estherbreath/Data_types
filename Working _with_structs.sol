// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Schools{
    struct School{
        string name;
        SchoolType schoolType;//enum data type
        Department dept; //struct data type
    }
    enum SchoolType{
        Federal,
        State,
        Private
    }

    struct Department{
        string nameD;
        uint matric;
        mapping(uint => LecturerDetails) lecturers;
    }

    struct LecturerDetails{
        string nameL;
        string subject;

    }

    mapping(uint => School) _school;// mapping(address => School) _school
    uint schoolCount = 1;

      function setSchool(string memory _nameS, SchoolType _type, string memory _nameD, uint _matric, string memory _nameL, string memory _subject) external {
        //valid input
        School storage newSchool = _school[schoolCount];
        newSchool.name = _nameS;
        newSchool.schoolType = _type;
        newSchool.dept.nameD = _nameD;
        newSchool.dept.matric = _matric;
        newSchool.dept.lecturers[1].nameL=_nameL;
        newSchool.dept.lecturers[1].subject =_subject;
        schoolCount++;
    }
    //countNumber: when the school was store on the blockchain
    // passed by the user

    function returnSchool(uint id, uint coontNumber) external view returns (string memory _subject){
        School storage newSchool =  _school[coontNumber];

        _subject = newSchool.dept.lecturers[id].subject;
    }

} 