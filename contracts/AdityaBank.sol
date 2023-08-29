// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdityaBank {
    address private owner;
    mapping(address => uint256) private balances;

    event BalanceDeposited(address indexed account, uint256 amount);
    event BalanceWithdrawn(address indexed account, uint256 amount);
    event BalanceBurned(address indexed account, uint256 amount);

    struct Transaction {
        address account;
        uint256 amount;
        uint256 timestamp;
    }

    Transaction[] private transactionHistory;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function depositBalance() external payable {
        require(msg.value > 0, "Amount must be greater than 0");
        balances[msg.sender] += msg.value;
        emit BalanceDeposited(msg.sender, msg.value);
        transactionHistory.push(Transaction(msg.sender, msg.value, block.timestamp));
    }

    function withdrawBalance(uint256 amount) external {
        require(amount > 0, "Amount must be greater than 0");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit BalanceWithdrawn(msg.sender, amount);
        transactionHistory.push(Transaction(msg.sender, amount, block.timestamp));
    }

    function burnBalance(uint256 amount) external onlyOwner {
        require(amount > 0, "Amount must be greater than 0");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        emit BalanceBurned(msg.sender, amount);
        transactionHistory.push(Transaction(msg.sender, amount, block.timestamp));
    }

    function showBalance() external view returns (uint256) {
        return balances[msg.sender];
    }

    function getContractBalance() external view onlyOwner returns (uint256) {
        return address(this).balance;
    }

    function getTransactionHistory(uint256 index) external view returns (Transaction memory) {
        require(index < transactionHistory.length, "Invalid index");
        return transactionHistory[index];
    }

    function getTransactionCount() external view returns (uint256) {
        return transactionHistory.length;
    }
}
