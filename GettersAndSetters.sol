pragma solidity ^0.5.0;

contract LatestTrade {
    string coin = "BTC";
    uint price;
    bool isBuyOrder;

    function updateTrade(string memory newCoin, uint newPrice, bool isBuy) public {
       coin = newCoin;
       price = newPrice;
       isBuyOrder = isBuy; // Is this a buy or a sell order?
   }

   function getInfo() view public returns(string memory, uint, bool) {
    // return user data here
    return(coin, price, isBuyOrder);
    }

    

}