pragma solidity ^0.4.4;

contract Access {
  address owner  = msg.sender;
  address rtoAdmin =  msg.sender;
  address[] allRtos ;
  address[] allOwners ;

   mapping (address => vehicle ) registeredVehicles;
  //mapping (uint => address) ownerMap;


/*
  struct RTO {
    uint id;
    string name;
    address addr;
  }
mapping (address =>  RTO) as rtoProfileMap
  struct owner {
    uint id;
    string name;
    address addr;
  }
  mapping (address =>  owner) as ownerProfileMap
*/
  struct vehicle {
    uint256 vin;
    string name;
    string model;
    uint8 year;
  }
  

  function Ownership() {
    rtoAdmin =  msg.sender;
  }

  function addRTO(uint id, address rtoaddr) onlyRTOAdmin internal {
     allRtos.push(rtoaddr);
  }

 

   modifier onlyRTOAdmin() { 
    /*for (uint i = 0; i < rtoMap.length; i++) {
          require(namesInUse[i] != username);
      }
      */
      if(rtoAdmin == msg.sender) 
          _;
      else
          revert();
   
  }

  modifier bothRtoAndOwner(){
    _;
  }

  function changeOwner() internal ;
 
  function registerVehicle() internal;

  

}
