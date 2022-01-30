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

  // Array
  uint[] public uintArray = [1, 2, 3];
  string[] public stringArray = ["apple"];
  uint[][] public array2D = [ [1, 2, 3], [4, 5, 6]];

  function addValue(string memory _value) public {
    stringArray.push(_value);
  }

  function valueCount() public view returns (uint) {
    return stringArray.length;
  }

  // Mappings: key => value
  mapping(uint => string) public names;

  constructor() public {
    mappingInit();
  } 

  function mappingInit() private {
    names[101] = "roboGOD";
    names[102] = "Jack Napier";
    names[103] = "Arthur Fleck";
  }

  // Mapping of custom data types
  struct Book {
    uint id;
    string title;
    string author;
  }

  mapping(uint => Book) public books;

  function addBook(uint _id, string memory _title, string memory _author) public {
    books[_id] = Book(_id, _title, _author);
  }

  // Nested Mapping
  mapping(address => mapping(uint => Book)) public myBooks;

  // Add book to only my address
  function addMyBook(uint _id, string memory _title, string memory _author) public {
    myBooks[msg.sender][_id] = Book(_id, _title, _author);
  }
}
