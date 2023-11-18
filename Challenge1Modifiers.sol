// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract adminAccessPractice {

  address admin;

  uint balance = 1000;
 
  

  constructor(){
    admin = msg.sender;
  }



  modifier onlyAdmin{

    require(admin == msg.sender, "Only the admin can access this function");
    _;

  }

  function getBalance() public view onlyAdmin returns(uint){

    return balance;

  }
  
}
