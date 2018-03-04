pragma solidity ^0.4.4;
import "./BaseFareCalculator.sol";

contract AutoFareCalculator is BaseFareCalculator {
  function AutoFareCalculator() {
    // constructor
  }

function calculateFare ( string source, string destination ) returns (uint256) {
  return 20;
}

}
