pragma solidity ^0.4.4;
import "./BaseAccount.sol";

contract CurrentAccount {

  
  
  function CurrentAccount() {
    // constructor
    balance = 1000;
  }

  function withdraw(uint amtt) public {
    balance = balance-amt;
  }
  function deposit(uint amt) public {
    balance = balance+amt;
  }


}
