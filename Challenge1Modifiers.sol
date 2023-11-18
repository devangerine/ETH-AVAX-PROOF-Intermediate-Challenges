// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract adminAccessPractice {

  address admin;

  uint balance = 1000;
 
  
  //Constructor assigns the address of msg.sender to admin 
  constructor(){
    admin = msg.sender;
  }


  //Creation of onlyAdmin modifier
  modifier onlyAdmin{

    require(admin == msg.sender, "Only the admin can access this function");
    _;

  }

  //Function to get the balance of the admin's account. 
  //The function getBalance() will not return balance if you use a different address from the one initialized in the constructor.
  function getBalance() public view onlyAdmin returns(uint){

    return balance;

  }
  
}
