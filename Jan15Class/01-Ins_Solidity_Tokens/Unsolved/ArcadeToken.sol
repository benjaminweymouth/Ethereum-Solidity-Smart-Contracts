pragma solidity ^0.5.0;



contract ArcadeToken {

    address payable owner = msg.sender; 
    // here we name the token
    string public symbol = "ARCD";

    //token must have an exchange rate 
    // 1 token costs 100 wei 

    uint exchange_rate = 100; 
    

}
