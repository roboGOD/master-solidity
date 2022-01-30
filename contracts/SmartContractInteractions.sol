pragma solidity ^0.5.16;

// Inheritance
// Factories
// Smart contract interactions

// This contract is not deployed and it's inherited
contract Ownable {
  address owner;

  constructor() public {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner, 'must be owner');
    _; // this is important
  }
}

// This smart contract is not deployed and only accessible from SmartContractInteractions
contract SecretVault {
  string secret;

  constructor(string memory _secret) public {
    secret = _secret;
  }

  function getSecret() public view returns(string memory) {
    return secret;
  }
}

// Inheriting Ownable and using the modifier
contract SmartContractInteractions is Ownable {
  address secretVault;

  constructor(string memory _secret) public {
    // Create new smart contract
    SecretVault _secretVault = new SecretVault(_secret);
    // store the address of the smart contract
    secretVault = address(_secretVault);
    super;
  }

  function getSecret() public view onlyOwner returns(string memory) {
    // Get the smart contract from address
    SecretVault _secretVault = SecretVault(secretVault);
    // Return the secret
    return _secretVault.getSecret();
  }
}