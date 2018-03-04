
var Transfer = artifacts.require("./Transfer.sol");

module.exports = function(deployer) {
  deployer.deploy(Transfer);
};


contract('transfer', function(accounts) {
  it("should assert true", function(done) {
    var transfer = transfer.deployed();
    assert.isTrue(true);
    done();
  });
});
