pragma solidity ^0.4.4;

contract Transfer{
  // The keyword "public" makes those variables
    // readable from outside.
    address public recipient;
    mapping (address => uint) public balances;

    // Events allow light clients to react on
    // changes efficiently.
    event Sent(address from, address to, uint amount );

    function getCurrentUserBalance() returns(uint) {
      address cUser = msg.sender;
      return balances[cUser];
    }

    function send(address receiver, uint amount) {
        if (msg.sender.balance < amount) 
          return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        return Sent(msg.sender, receiver, amount);
    }

}
