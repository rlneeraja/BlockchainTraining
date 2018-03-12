var CurrentAccount = artifacts.require("./CurrentAccount.sol");

contract('CurrentAccount', function(accounts) {

  it("should assert true", function() {
    return Calculator.deployed().then(function(instance){
      return instance.getBalance();
    }).then(function (result) {
      assert.equal(result.valueOf(), 1000, "Initial balance is 1000");
    });
  });
});
