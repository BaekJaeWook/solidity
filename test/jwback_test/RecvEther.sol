pragma solidity ^0.4.8;

contract RecvEther {
    address public sender;
    uint public recvEther;

    //Get Receive
    function () payable {
        sender = msg.sender;
        recvEther += msg.value;
    }    

}