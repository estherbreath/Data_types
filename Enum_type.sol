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
     // Update status by passing uint into input
      function cancel() public {
        grade = Grade.good;
    }

      function fair() public {
        grade = Grade.fair;
    }

    //return both member and uint
     function getGradeByIndex(uint8 index) public pure returns (string memory, uint8) {
        
        if (index == uint(Grade.excellent)) {
            return ("excellent", uint8(Grade.excellent));
        } else if (index == uint8(Grade.good)) {
            return ("good", uint8(Grade.good));
        } else if (index == uint8(Grade.fair)) {
            return ("fair", uint8(Grade.fair));
        } else if (index == uint8(Grade.fail)) {
            return ("fail", uint8(Grade.fail));
        }
    }
}