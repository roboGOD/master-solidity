const Counter = artifacts.require("./Counter.sol");
const MyContract = artifacts.require("./MyContract.sol");
const HotelRoom = artifacts.require("./HotelRoom.sol");

module.exports = function(deployer) {
  deployer.deploy(Counter);
  deployer.deploy(MyContract);
  deployer.deploy(HotelRoom);
};
