pragma solidity >=0.4.22 <0.9.0;

contract money {
    uint totalMoney;
    address chaityAdr;


    //constructor

    function transfer(address person, uint amount) public payable {
        require(person != address(this)); // can't send to self
        require(amount > 0); // can't send 0 or less
        require(totalMoney >= amount); // can't send more than you have
        totalMoney -= amount; // subtract from sender
        person.transfer(amount);  // add to recipient
    }
    // precent function 
    function precent(uint amount) public view returns (uint) {
        return amount * 0.01; //returns 1% of the amount
    }

    // set charityAdr function 
    function setCharityAdr(address newCharityAdr) public {
        require(newCharityAdr != address(this)); // can't send to self
        chaityAdr = newCharityAdr;
    }

    // get charityAdr function
    function getCharityAdr() public view returns (address) {
        return chaityAdr;
    }

    // get total money
    function getTotalMoney() public view returns (uint) {
        return totalMoney;
        return address(this).balance;
    }

    // send 25% of money 
    function sendMoney() public payable {
        uint amount = precent(getTotalMoney()*25);
        address(this).transfer(getCharityAdr(), amount);
    }
}