pragma solidity ^0.5.16;

contract MyContract {
  // State Variables: Stored in blockchain
  uint public myUint = 1;
  int public myInt = 1;
  uint256 public myUint256 = 1; // default size for uint is 256
  uint8 public myUint8 = 1;
  string public myString = "Hello, World!";
  address public myAddress = 0x5A0B54d5Dc17e0aADc38d3d2Db43B0A003E029c4;

  // Custom Type
  struct MyStruct {
    uint myInt;
    string myString;
  }

  MyStruct public myStruct = MyStruct(1, "Hellow!");

  // Local Variables: stored locally inside function
  function getValue() public pure returns(uint) {
    uint value = 1;
    // string memory _myLocalString = "Hello, Function!";
    return value;
  }
}
