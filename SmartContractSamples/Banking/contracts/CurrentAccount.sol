pragma solidity ^0.4.4;
import "./BaseAccount.sol";

contract CurrentAccount is BaseAccount {


function withdraw(address user, AcctTypeChoices actType, uint amt) internal {
    Account[]  storage acc = accounts[user];
    for (uint i = 0; i < acc.length; i++) {
       if ( actType == (acc[i].actType)) {
         if( acc[i].balance > 0 ) {
            acc[i].balance = acc[i].balance - amt;      
            accounts[user].push(acc[i]);
         }
      }
  }
  }

}
