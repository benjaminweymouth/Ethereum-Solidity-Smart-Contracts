pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/math/SafeMath.sol";
contract ArcadeToken {

    using SafeMath for uint;
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

    function transfer(address recipient, uint value) public {

        //balances is a data structure
        balances[msg.sender] = balances[msg.sender].sub(value); 
        balances[recipient] = balances[msg.sender].add(value); 


    } 

      function purchase( ) public payable{

        //balances is a data structure
        uint amount = msg.value / exchange_rate; 
        balances[msg.sender] = balances[msg.sender].add(amount);
        owner.transfer(msg.value);


    } 

    //any contract that creates topkens should come with a  MINT function

    function mint(address recipient, uint amount) public{

        require(msg.sender == owner, "You are not the contract ownser so you can't mint tokens!");
        balances[recipient] = balances[recipient].add(amount);
    }

//we want to avoid underflow attacks. use open zeppelin "SafeMath"



}
