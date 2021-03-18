// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;

import "./Ownable.sol";



contract MessageStore is Ownable{
    
    string private message;
    
    constructor(){
        
    }
    
    function setMessage(string memory newMessage) public payable isOwner {
        require(msg.value == 3 ether);
        message = newMessage;
    }
    
    function getMessage() public view returns (string memory) {
        return message;
    }
    
    function getBalance() public view returns (uint){
        return address(this).balance;
    }
    
    
    function getBalanceInEther() public view returns(uint){
        return getBalance() /1e18;
    }
    
}