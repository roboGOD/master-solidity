// Data Types
let myContract = await MyContract.deployed();
let myLocalVal = (await myContract.getValue()).toNumber();
let myUint = (await myContract.myUint()).toNumber();
let myAddress = (await myContract.myAddress());
let myString = (await myContract.myString());
let myStruct = (await myContract.myStruct());
console.log(myStruct.myInt.toNumber());
console.log(myStruct.myString);

// Arrays
(await myContract.uintArray(0)).toNumber();
await myContract.stringArray(0);
(await myContract.array2D(1, 0)).toNumber();

await myContract.addValue('orange');
let strArrayLen = (await myContract.valueCount()).toNumber();
// read last element of array
await myContract.stringArray(strArrayLen-1);

// Mappings
await myContract.names(101);
await myContract.addBook(101, "12 Rules for Life", "Jordan Peterson");
await myContract.addBook(102, "Atomic Habits", "James Clear");
await myContract.addMyBook(101, "Psychology of Money", "Morgan Housel");
(await myContract.books(101)).title;
(await myContract.myBooks(accounts[0], 101)).title;
