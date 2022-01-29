pragma solidity ^0.5.16;

contract Counter {
  // Unsigned integer
  // count is state variable. It'll be stored in blockchain.
  uint public count;

  constructor() public {
    count = 0;
  }

  // 'view' means count is read only
  // We'll use pubilc in front of variable to access it directly instead of through a function
  // function getCount() public view returns(uint) {
  //   return count;
  // }

  function incrementCount() public {
    count ++;
  }
}
