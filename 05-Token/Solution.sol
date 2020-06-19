//Requirement
    //hack the basic token contract

//Solution
    //I invoked transfer function to transfer 1000000 tokens to the instance address
    //Though the total supply is not up to that but since the type used is an unsigned integer
    // the leftover will always be positive and hence meet the condition for token transfer
    // and therefore possible to transfer more than the total supply.