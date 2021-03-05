// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;



contract MessageStore{
    
    address private owner;
    string private message;
    
    
    
    
    constructor() {
        owner = msg.sender;
    }
    
    
    function setMessage(string memory newMessage) public  {
        message = newMessage;
    }
    
    function getMessage() public view returns (string memory) {
        return message;
    }
}