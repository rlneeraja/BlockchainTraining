pragma solidity ^0.4.4;

contract BaseAccount {
  function BaseAccount() {
    // constructor
  }
  uint public balance ;

  function withdraw(uint amt) public {
    balance = balance-amt;
  }
  function deposit(uint amt) public {
    balance = balance+amt;
  }

  function audit() returns (string) {
    return "audit done";
  }

  function getBalance() returns (uint) {
    return balance;
  }

}
