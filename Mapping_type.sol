// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping_type{
    // mapping(address => uint) public register;

    // function getAddress(address _addr) public view returns(uint){
    //     return register[_addr];
    // }
    // function setRegister(address _addr, uint _i) public {
    //     register[_addr] = _i;
    // }
    // function deleteRegister(address _addr) public {
    //     delete register[_addr];
    // }


//Nested mapping
// mapping(address => mapping(uint => bool)) public nested;

// function getNested(address _addr1, uint _i) public view returns(bool) {
//     return nested[_addr1] [_i];
// }
// function setNested(address _addr1, uint _i, bool _boo) public {
//     nested[_addr1] [_i] = _boo;
// }
// function deleteNested(address _addr1, uint _i) public {
//     delete nested[_addr1] [_i];
// }

  mapping(address => mapping(string => bool)) public contactBook;

  function getMapping(address _addr, string memory _s) public view returns(bool) {
    return contactBook[_addr] [_s];
  }
  function setContactBook(address _addr, string memory _s, bool _boo) public {
    contactBook[_addr] [_s] = _boo;
  }
  function deleteContactBook(address _addr, string memory _s) public {
    delete contactBook[_addr] [_s];
  }

} 