// Get instance of deployed contract
let counter = await Counter.deployed();

// Access using getCount function
let count = (await counter.getCount()).toNumber();
console.log(count);

// Increment the counter
await counter.incrementCount();

// Access using public variable
count = (await counter.count()).toNumber();
console.log(count);

