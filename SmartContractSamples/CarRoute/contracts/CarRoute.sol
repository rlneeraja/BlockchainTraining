pragma solidity ^0.4.4;


contract CarRoute {

  string[] routes;
  string currentLocation;


  function CarRoute() {
    // constructor
  }

  function dropTo (string location) {
    currentLocation = location;
    routes.push(location);
  }

  function getCurrentLocation() returns (string) {
    return currentLocation;
  }

  
}
