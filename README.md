
# Smart Contract Managment
This repository contains a Solidity smart contract called BankATM which provides basic banking functionalities like deposit, withdraw, and getting the account balance. The contract also includes a frontend implementation to interact with the contract on the Ethereum blockchain.






## Contract Functionality


BankATM Smart Contract
This repository contains a Solidity smart contract called BankATM which provides basic banking functionalities like deposit, withdraw, and getting the account balance. The contract also includes a frontend implementation to interact with the contract on the Ethereum blockchain.

Smart Contract Details
The BankATM contract has the following functions:

1. deposit(uint256 _amount): Allows the owner to deposit Ether into the account.
2. withdraw(uint256 _withdrawAmount): Allows the owner to withdraw Ether from the account.
3. getBalance(): Returns the current account balance.
4. getOwner(): Returns the address of the account owner.
## DEPLOYMENT
Create a hardhat project and write the contract in it and then run your blockchain connect and deoloy it with goerli testnet
now write the code for frontend and connect backend with frontend with help of the artifacts abi
Now run the fronted and check all the functionality 

Note: Every DEPLOYMENT you have a new contract address change it in the contract adress column in fronted
## Install
hardhat installation

1. npm install --save-dev hardhat

2. npx hardhat 

3. Create a javascript project 

4. write the contract 

5. Run the blockchain

6. Deploy the contract 
   npx hardhat run scripts/deploy.js --network goerli 

7. Make a frontend page and implement all the function in the code 

8. Now entere your contract address
   
9. enter you abi 
10. run your project
11. Test the project by connecting your wallet
12. Make sure you have the testnet amount present in wallet whatever the network you are deploying




## Author
Kuldeep Yadav