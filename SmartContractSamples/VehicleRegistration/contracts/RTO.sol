pragma solidity ^0.4.4;
import "./Access.sol";

contract RTO is Access {


  mapping (uint => vehicle )  allVehicles;
 

  function RTO() {
    // constructor
  }

  function registerVehicle(address owner, vehicle v) onlyRTO {
    registeredVehicles[owner] = v;
  }

  function changeOwner(address oldowner,  address newowner, vehicle v) onlyRTO {
    delete registeredVehicles[oldowner];
    registeredVehicles[newowner] = v;
  }

  modifier onlyRTO() { 
    bool isRTO = false;
      for (uint i = 0; i < allRtos.length; i++) {
          if ( allRtos[i] == msg.sender ) {
            isRTO = true;
            break;
          }
      }
      
      if(isRTO) 
          _;
      else
          revert();
   
  }
}
