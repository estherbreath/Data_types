// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract LoopThrough {
    // address[] students;
    function GoThrough() public {
        // for loop
        for (uint i = 0; i < 10; i++) {
         if(i ==5){
             continue;
         }if(i == 8){
             break;
         }

         //while loop
         uint n = 0;
         while(n < 10) {
             n++;
         }

         //forever loop
        //   while (true) {
        //     i += 1;
        // }

        }
    }
}