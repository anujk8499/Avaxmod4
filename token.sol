
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SupermanToken is ERC20, Ownable {
    mapping(address => bool) private ItemsRedeemed;
    uint public constant redemptionAmount = 1000;

    constructor() ERC20("SupermanToken", "SUP") {
        _mint(msg.sender, redemptionAmount);
    }

    function mint(address account, uint amount) public onlyOwner {
        _mint(account, amount);
    }

    function redeemItem() public {
        require(balanceOf(msg.sender) >= redemptionAmount, "Balance is insufficient");
        require(!ItemsRedeemed[msg.sender], "Item has already been redeemed");

        ItemsRedeemed[msg.sender] = true;
        _burn(msg.sender, redemptionAmount);
    }

    function burn(uint amount) public {
        _burn(msg.sender, amount);
    }
}
