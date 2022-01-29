let myContract = await MyContract.deployed();
let myLocalVal = (await myContract.getValue()).toNumber();
let myUint = (await myContract.myUint()).toNumber();
let myAddress = (await myContract.myAddress());
let myString = (await myContract.myString());
let myStruct = (await myContract.myStruct());
console.log(myStruct.myInt.toNumber());
console.log(myStruct.myString);
