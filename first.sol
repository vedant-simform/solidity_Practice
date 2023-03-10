// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "hardhat/console.sol";
contract first{
    uint256 public variable = 10;
    bytes32 public variable2 = "Hello";
    address public variable3 = msg.sender;
    uint[] public arr = [1,2,3,5];
    string[] public arr2 = ["Hello","There"];

    function checkEven(uint256 variable4) public view  {
        if(variable4 % 2 == 0){
           console.log("Hi");
        }
        else{
            console.log("Hi");
        }
    }
}


