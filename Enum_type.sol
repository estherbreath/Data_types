// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Enum_web3{
    enum Grade{
        excellent,
        good,
        fair,
        fail
    }
    Grade public grade;

    function getGrade() public view returns(Grade) {
        return grade;
    }
    function setEnum(Grade _grade) public {
        grade = _grade;
    }
    function setGood() public {
        grade = Grade.good;
    }
     function setExcellent() public {
        grade = Grade.excellent;
    }
}