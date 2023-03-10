//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract example{
    // State variable
    uint256 public a = 10;


    // Below function will cost gas 
    function changeStateVariable() public {
        a = 20;
    }

    function gettingStateVariable(uint256) public view returns (uint256){
        uint256 b = a;
        b = b + 10;
        return b;
    }

    function change() public {
         a = gettingStateVariable(a); 
    }

   // We can't do this in solidity // Doubt is :- Is there any alternate way to do it with saving gas

    // I wanted to pass state variable "a" to gettingStateVariable() function so it will take a's value and process as local variable b, and return it.
    // My assumption was to save gas by this way.
}