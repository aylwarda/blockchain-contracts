pragma solidity ^0.5.0;

contract AssociateProfitSplitter {

    address payable public employee_one;
    address payable public employee_two;
    address payable public employee_three;
    
    address payable owner;

    constructor(address payable _one, address payable _two, address payable _three) public {
        owner = msg.sender;
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }
    
    // Create modifier to ensure certain functions are only executed by the owner!
    modifier onlyOwner {
        require(msg.sender == owner, "Denied; you are not the Contract Owner!");
        _;
    }
    
    function balance() public view returns(uint) {
        /* Note: this function should always return 0.
           If not, `deposit` will not be handling remainders correctly, as the
           `deposit` function is less of a "deposit" and more of a "distribution"! */
        return address(this).balance;
    }
    
    function deposit() public payable onlyOwner {
        // Determine 1/3 of the value being deposited
        uint amount = msg.value / 3;
        
        // Transferring the amount to each employee
        employee_one.transfer(amount);
        employee_two.transfer(amount);
        employee_three.transfer(amount);
        
        // Taking care of the remainder by sending back to HR (`msg.sender`)
        msg.sender.transfer(msg.value - amount * 3);
    }
    
    function() external payable {
        // This is a fallback function. It enforces the calling of `deposit`
        // as a safety net, considering we do not have a `withdraw` function.
        deposit();
    }
}
