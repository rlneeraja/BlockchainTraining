var Calculator = artifacts.require("./CurrentAccount.sol");

contract('CurrentAccount', function(accounts) {

  // Expected behavior - result is initialized to 10
  // Test Case#1
  it("should assert true", function() {

    return Calculator.deployed().then(function(instance){

      return instance.getBalance();
    }).then(function (result) {
      assert.equal(result.valueOf(), 1000, "Initial balance is 1000");
    });
  });
});
