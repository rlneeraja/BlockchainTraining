var AutoFareCalculator = artifacts.require("./AutoFareCalculator.sol");

module.exports = function(deployer) {
  deployer.deploy(AutoFareCalculator);
};


contract('AutoFareCalculator', function(accounts) {
  it("should retun 20", function(done) {
    var auto_fare_calculator = AutoFareCalculator.deployed().then( function (inst){
    assert.equal(9, inst.calculateFare());
    }).then( function(){
      console.log("test complete");
    });
    done();
  });
});


