pragma solidity ^0.5.0;

contract BankAccount {

    function withdraw(uint amount, address payable recipient) public{

        return recipient.transfer(amount);


    }

    function deposit() public payable{


    }
 // simplifies the process for getting / recieving ether. call deposit or this 
 // fallback or anonymous
 // when you run functions on ethereum netork you gotta pay GAS
 //so any APP uses GAS to run. each computation has different gas cost 
 // 
    function () external payable{


    }
}
