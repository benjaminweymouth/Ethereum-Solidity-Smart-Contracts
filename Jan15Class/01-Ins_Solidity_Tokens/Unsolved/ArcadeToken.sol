pragma solidity ^0.5.0;



contract ArcadeToken {

    address payable owner = msg.sender; 
    // here we name the token
    string public symbol = "ARCD";

    //token must have an exchange rate 
    // 1 token costs 100 wei 

    uint8 exchange_rate = 100; 

    // Mappings in Solidity are similar to the concept of hash map in Java or dictionary in C and Python
    mapping (address => uint) balances; 

    // function for balances

    function balance () public view returns (uint) {

        return balances[msg.sender];


    } 


}
