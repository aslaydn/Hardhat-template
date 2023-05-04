<<<<<<< HEAD
// SPDX-License-Identifier: UNLICENSED
=======
// SPDX-License-Identifier: MIT
>>>>>>> 0e14c1ba0cefd3ac6585367c8ae2e54225451ecc
pragma solidity ^0.8.2;

contract Counter{
    uint public total;
    uint public substracted;
    uint public multiplied;
    uint public divided;

<<<<<<< HEAD
    function add (uint number1, uint number2) public{
        total = number1 + number2;
        require(total >= number1,"Addition is invalid!");
    }

    function substract(uint number1, uint number2) public{
        substracted = number1 - number2;
        require(number1>=number2,"Substraction is invalid!");
    }

    function multiply(uint number1, uint number2) public{
        multiplied = number1 * number2;
        require(total >= number1 && total >= number2,"Multiplication is invalid!");
    }

    function divide(uint number1, uint number2) public{
        require(number2!= 0, "Division is invalid!");
        divided = number1 / number2;
=======
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
>>>>>>> 0e14c1ba0cefd3ac6585367c8ae2e54225451ecc
    }

    function returnValues() public view returns(uint, uint, uint, uint){
        return(total, substracted, multiplied, divided);
    }
}