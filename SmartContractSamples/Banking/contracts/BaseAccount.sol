pragma solidity ^0.4.4;

contract BaseAccount {

  uint public number = 0;
  function BaseAccount() {
    // constructor
  }

enum AcctTypeChoices { current, saving }
enum AuditStatusChoices { goodrecords, warningrecords, badrecords }


 struct Account {
  uint  balance ;
  uint accountNo ;
  AuditStatusChoices auditStatus;
  AcctTypeChoices actType ;
 }

mapping(address => Account[]) public accounts;

 function withdraw(address user, AcctTypeChoices actTpe, uint amt) internal;
   

  function deposit(address user, AcctTypeChoices actType, uint amt) internal {
    Account[]  storage acc = accounts[user];
    for (uint i = 0; i < acc.length; i++) {
       if ( actType == (acc[i].actType)) {
        acc[i].balance = acc[i].balance + amt;      
        accounts[user].push(acc[i]);
      }
  }
  }
 
  function getAccountInfo( address user, AcctTypeChoices actType) returns (Account) {

      Account[]  storage acc = accounts[user];
      for (uint i = 0; i < acc.length; i++) {
       if ( actType == acc[i].actType ) {
            return acc[i];
        }
    }
    
  }

  function createSavingsAccount(address p) public {
    number+=1;
    accounts[p].push(Account(1000, number, AuditStatusChoices.goodrecords, AcctTypeChoices.saving));
  }

  function createCurrentAccount(address p) public {
    number+=1;
    accounts[p].push(Account(0, number, AuditStatusChoices.goodrecords, AcctTypeChoices.current));
  }

}
