const Counter = artifacts.require("./Counter.sol");
const MyContract = artifacts.require("./MyContract.sol");

module.exports = function(deployer) {
  deployer.deploy(Counter);
  deployer.deploy(MyContract);
};
