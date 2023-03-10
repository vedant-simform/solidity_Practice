//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;


contract basicOperations{
    uint256 var1;
    address public owner = msg.sender;

    // CONSTRUCTOR FUNCTION
    constructor (uint256 val){
        var1 = val;
    }
    // GETTER FUNCTION
    function getter() public view returns (uint256){
        return var1;
    }
    // SETTER FUNCTION
    function setter() public {
        var1++;
    }

    // MEMORY VS STORAGE
    function strVal(string memory inp) public pure returns(string memory){
        string memory insideStr = inp;
        return insideStr;
    }
    // STRUCT
    struct Student{
        uint256 roll;
        string name;
    }
    Student public s1;
    function setStudent() public{
        s1.roll = 10;
        s1.name = "Hello";
    }

    // ENUM
    enum data{allow,not_allow,wait}
    data public my_value = data.not_allow;

    // MAPPING
    mapping (address => string) public mapVar;

    function mapdata(address adr , string memory str) public {
        mapVar[adr]= str;
    }

    // VISIBILITY 
    function f1() public pure returns(uint256){
        return 1;
    }
    function f2() private pure returns(uint256){
        return 2;
    }
    function f3() internal pure returns(uint256){
        return 3;
    }
    function f4() external pure returns(uint256){
        return 4;
    }
    
}

//INHERITANCE

contract second is basicOperations(500){
    // inherited function
    uint256 public secondVar = f1();

    // Payable
    address payable public myContract = payable(msg.sender);

    function getETH() payable public{

    }

    function chechBalance() public view returns (uint256){
        return address(this).balance;
    }

}

