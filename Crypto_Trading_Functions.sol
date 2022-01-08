pragma solidity >=0.5.0 < 0.8.0;
//#Background

//* Say that you’re a famous crypto trader who wants to publish your latest buy order, including the price that you paid.
//* A buy order refers to the action of buying a certain amount of financial assets. In this case, we’re referring to buying cryptocurrencies.
//* Explain that to prove that you made a cryptocurrency purchase at the execution price, you want to build a smart contract that publishes your latest trade to the blockchain. The execution price is the price at which the trade was executed.
//* Identify that defining a function it is needed to enable a smart contract to interact with the blockchain or even with other smart contracts. The function captures the business rules that we want to implement. As we did in Python, we can define functions in Solidity—but with some nuances, as we’ll learn next.
//1. Ensure that the pragma verison for the solidity compiler is verision 5.
//2. Name the smart contract named `LatestTrade`.
//3. Add the following data to the contract coin type as a `string` called "BTC", a number refered to as `uint` called `price`, 
//and an identifier as a `bool` for boolean to ensure it is a buy order call it `isBuyOrder`.
//4. Add  a `function` named `updateTrade`. This function will update the trading price of our last buy or sell operation.

 

contract LatestTrade{

   string coin = "ETH"; 
   uint price;
   bool isBuyOrder;

//string memory means that The second is “memory”, this is used to hold temporary values. It is erased between (external) function calls and is cheaper to use.
// wheras other types of variables will persist. 

// stating as public as accesss modifier. maybe it will be called by another contract 

     function updateTrade(string memory newCoin, uint newPrice, bool isBuy) public {
         //update the trading price of our last buy or sell operation
         // setting coin equal to something 
         coin = newCoin;
         price = newPrice;
         isBuyOrder = isBuy;
        
    }

        function getLatestTrade() view public returns (string memory, uint, bool){

          return(coin, price, isBuyOrder);
        
    }
}


