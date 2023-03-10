//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract major{
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    function funding() public payable {

    }
    function check() public view returns(uint256,address){
        return (address(this).balance,address(this));
    }
    function transferETH() payable public {
        owner.transfer(address(this).balance);      // First transferring eth to contract then give it to owner
        // (owner).transfer(msg.value);
        // <address payable> transfer <uint256 amount>
    }
}

//Library

library test{
    function add() public pure returns(uint256){
        return 10+20;
    }
}

contract minor{
    function getVal() public pure returns(uint256){
        return test.add();
    }
}

// Virtual & Overriding

contract base {
    function add() virtual public pure returns(uint256){
        return 50;
    }
}

contract child is base{
    function add() override public pure returns(uint256){
        return 49;
    }
}

// Abstract Contract

abstract contract abs{
    function add() virtual public pure returns(uint256);
}

contract absChild is abs{
    function add() override public pure returns(uint256){
        return 89;
    }
}


// Interface

interface intBase{
    function add() external pure returns(uint256);
}

contract intChild is intBase {
     function add() override public pure returns(uint256){
         return 80;
     }
}

// Modifiers

contract modifiers{
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    modifier valid(){
        require(msg.sender == owner,"only owner can call this function");
        _;
    }
    function check() public view valid returns(string memory){
        return "Hello Owner";
    }
}

contract manage{
    event getETH(address _to, uint256 value);
    function checkEvent() payable public {
        emit getETH(msg.sender,msg.value);
    }
}