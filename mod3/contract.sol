// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract VaxelToken is ERC20, Ownable {
    constructor() ERC20("VaxelToken", "VXL") {}

    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function burn(uint256 amount) external {
        _burn(_msgSender(), amount);
    }
}
