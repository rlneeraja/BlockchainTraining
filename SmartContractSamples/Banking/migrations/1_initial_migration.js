var Migrations = artifacts.require("./Migrations.sol");
var BaseAccount = artifacts.require("./BaseAccount.sol");
var CurrentAccount = artifacts.require("./CurrentAccount.sol");
var SavingsAccount = artifacts.require("./SavingsAccount.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(BaseAccount);
  deployer.deploy(CurrentAccount);
  deployer.deploy(SavingsAccount);
};
