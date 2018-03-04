pragma solidity ^0.4.4;


contract AdharDemo {

struct Details {
    string name;
    string mobileNo;
    uint aadharNo;
}
mapping(uint=>Details) aadharDetails;


  function AdharDemo() {
    // constructor
  }

  function register (string name, string mobile, uint aadharNumber) {
    aadharDetails[aadharNumber] = Details(name, mobile, aadharNumber);
  }


 function getDetails(uint aadharNumber) returns string {
     Details d = aadharDetails[aadharNumber];
     return d.name;
 }
 
}
