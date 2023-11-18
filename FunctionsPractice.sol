// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;


/*
For this challenge, write a smart contract that uses view, pure, and payable functions. 
Ensure that the functions are accessible within the contract and derived contracts as well.
*/



contract FunctionsPractice {

  address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }
 

  function getBalance() internal view returns(uint){

    return address(this).balance;

  }

  function computeSum(uint i, uint j) internal pure returns(uint){

    return i + j;

  }

  function deposit() external payable{
        //some code for depositing to a user's wallet
  }
  
}
