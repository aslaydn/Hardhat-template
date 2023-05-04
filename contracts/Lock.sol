<<<<<<< HEAD
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.2;

// Uncomment this line to use console.log
=======
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

>>>>>>> 0e14c1ba0cefd3ac6585367c8ae2e54225451ecc
// import "hardhat/console.sol";

contract Lock {
    uint public unlockTime;
    address payable public owner;

    event Withdrawal(uint amount, uint when);

    constructor(uint _unlockTime) payable {
        require(
            block.timestamp < _unlockTime,
<<<<<<< HEAD
            "Unlock time should be in the future"
=======
            "Unlock time should be in the future."
>>>>>>> 0e14c1ba0cefd3ac6585367c8ae2e54225451ecc
        );

        unlockTime = _unlockTime;
        owner = payable(msg.sender);
    }

    function withdraw() public {
        // Uncomment this line, and the import of "hardhat/console.sol", to print a log in your terminal
        // console.log("Unlock time is %o and block timestamp is %o", unlockTime, block.timestamp);

<<<<<<< HEAD
        require(block.timestamp >= unlockTime, "You can't withdraw yet");
        require(msg.sender == owner, "You aren't the owner");
=======
        require(block.timestamp >= unlockTime, "You can't withdraw yet.");
        require(msg.sender == owner, "You aren't the owner.");
>>>>>>> 0e14c1ba0cefd3ac6585367c8ae2e54225451ecc

        emit Withdrawal(address(this).balance, block.timestamp);

        owner.transfer(address(this).balance);
    }
}