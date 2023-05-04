// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Counter{
    uint public total;
    uint public substracted;
    uint public multiplied;
    uint public divided;

    function add (uint num1, uint num2) public{
        total = num1 + num2;
        require(total >= num1,"Addition is invalid.");
    }

    function substract(uint num1, uint num2) public{
        substracted = num1 - num2;
        require(num1>=num2,"Substraction is invalid!");
    }

    function multiply(uint num1, uint num2) public{
        multiplied = num1 * num2;
        require(total >= num1 && total >= num2,"Multiplication is invalid.");
    }

    function divide(uint num1, uint num2) public{
        require(num2!= 0, "Division is invalid.");
        divided = num1 / num2;
    }

    function returnValues() public view returns(uint, uint, uint, uint){
        return(total, substracted, multiplied, divided);
    }
}