// SPDX-License-Identifier: UNLICENSED

//lower version
pragma solidity 0.6.11;

contract Exercise{
    uint8 public num = 250;
//overflow happens as a result ot less byte to higher value
//typecast
 function increase(uint256 _num) public {
    num = num + uint8(_num);
 }
}