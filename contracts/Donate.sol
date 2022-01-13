pragma solidity ^0.8.0;

contract Donate {
    uint totalDonated;
    address[] donors;
    address payable owner;

    constructor(){
        owner = payable(msg.sender);
    }

    function getTotalDonated() public view returns (uint){
        return totalDonated;
    }

    function donate(uint amount) public payable{
        (bool success,) = owner.call{value: msg.value}("");
        require(success, "Failed to send money");
    }
}