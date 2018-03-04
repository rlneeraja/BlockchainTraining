var AadharDemo = artifacts.require("./AadharDemo.sol");

module.exports = function(deployer) {
  deployer.deploy(AadharDemo);
};

contract('AadharDemo', function(accounts) {
  it("should register fine", function(done) {
    var aadhar_demo = AadharDemo.deployed().then(function(instance) {
      instance.register("tej", "770", 123);
    }).then( function(result){
      console.log("test complete");
    });
    done();
  });
});
