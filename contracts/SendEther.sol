// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SendEther {
    // 记录合约部署者
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // 允许用户调用这个函数来发送 0.01 seETH 到指定地址
    function sendEther(address payable _to) public payable {
        require(msg.sender == owner, "Only the owner can send ether");
        require(address(this).balance >= 0.01 ether, "Insufficient balance in contract");

        // 发送 0.01 seETH
        _to.transfer(0.01 ether);
    }

    // 接收以太币到合约地址
    receive() external payable {}
}
