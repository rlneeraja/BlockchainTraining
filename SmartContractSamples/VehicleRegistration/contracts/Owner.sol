pragma solidity ^0.4.4;
import "./Access.sol";
contract Owner is Access {
  function Owner() {
    // constructor
  } 

function getMyRegistration() onlyOwner returns (vehicle) {
  return registeredVehicles[msg.sender];

}

   modifier onlyOwner() { 
    if ( owner == msg.sender ) {
      _;
    }
    else 
      revert();
    
  }

}
