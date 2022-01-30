const Counter = artifacts.require("./Counter.sol");
const MyContract = artifacts.require("./MyContract.sol");
const HotelRoom = artifacts.require("./HotelRoom.sol");
const SmartContractInteractions = artifacts.require("./SmartContractInteractions.sol");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(Counter);
  deployer.deploy(MyContract);
  deployer.deploy(HotelRoom);
  deployer.deploy(SmartContractInteractions, "peanuts");
};
