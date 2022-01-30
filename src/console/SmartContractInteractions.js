sci = await SmartContractInteractions.deployed();
// accounts[0] is the owner
await sci.getSecret({from: accounts[0]});
