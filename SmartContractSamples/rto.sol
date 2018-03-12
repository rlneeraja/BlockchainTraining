pragma solidity ^0.4.4;

contract register {

struct ownerDetails {
 string ownerName;
 string ownerType;
 address ownerAddress;
 string ownerzip;
}

struct vehicleDetails {
 string vehicleName;
 string ownerType;
 string vehicleRegNo;
}


mapping ( ownerDetails => vehicleDetails[]) ownerVehicles;


  function rto() {
    // constructor
  }


}
