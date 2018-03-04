pragma solidity ^0.4.4;
import "./BaseAccount.sol";

contract CurrentAccount {

  balance = 1000;
  
  function CurrentAccount() {
    // constructor
  }

  function withdraw(uint amt) public {
    balance = balance-amt;
  }
  function deposit(unit amt) public {
    balance = balance+amt;
  }


}
