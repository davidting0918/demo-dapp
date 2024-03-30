// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SendEther {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function sendEther(address payable _to) public payable {
        require(msg.sender == owner, "Only the owner can send ether");
        require(address(this).balance >= 0.01 ether, "Insufficient balance in contract");

        _to.transfer(0.01 ether);
    }

    receive() external payable {}
}
