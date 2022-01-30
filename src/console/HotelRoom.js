hotelRoom = await HotelRoom.deployed();

await hotelRoom.book({from: accounts[1], value: web3.utils.toWei('2')});
await hotelRoom.checkout();
await hotelRoom.book({from: accounts[2], value: web3.utils.toWei('2')});
await hotelRoom.checkout();
