pragma solidity ^0.5.16;

// Ether - pay smart contracts
// Modifiers
// Visibility
// Events
// Enums
contract HotelRoom {

  enum Statuses { Vacant, Occupied }
  Statuses currentStatus;

  address payable public owner;

  event Occupy(address _occupant, uint _value);

  constructor() public {
    // The user who deploys the smart contract
    owner = msg.sender;

    currentStatus = Statuses.Vacant;
  }

  modifier costs(uint _amount) {
    // Check price: should be true
    require(msg.value >= _amount, "Not enough Ether provided.");
    _;
  }

  modifier onlyWhileVacant {
    // Check status: should be true
    require(currentStatus == Statuses.Vacant, "Currently Occupied.");
    _;
  }

  modifier onlyWhenOccupied {
    // Check status: should be true
    require(currentStatus == Statuses.Occupied, "Already Vacant.");
    _;
  }

  // receive works in version >= 0.6.x 
  // acts as a fallback when just ether is sent to smart contract without any call data
  // receive() external payable onlyWhileVacant costs(2 ether) {
  function book() payable public onlyWhileVacant costs(2 ether) {
    currentStatus = Statuses.Occupied;
    // Send money to owner's account
    owner.transfer(msg.value);

    // Emits event that room is occupied
    // Users can subscribe and listen for this event and do some action
    emit Occupy(msg.sender, msg.value);
  }

  function checkout() public onlyWhenOccupied {
    currentStatus = Statuses.Vacant;
  }
  
}
