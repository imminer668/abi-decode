// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
/*
use openzeppelin lib
*/
interface ITokensBank {
    function tokensReceived(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

interface INFTMarket {
    function tokensReceived(
        address buyer,
        uint256 tokenId,
        uint256 price
    ) external  returns (bool) ;
}

contract MyToken is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("LP", "LP")
        Ownable(initialOwner)
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transferWithCallback(address recipient, uint256 amount)
        external
        returns (bool)
    {
       transfer(recipient, amount );

        if (recipient.code.length > 0) {
            bool rv = ITokensBank(recipient).tokensReceived(
                msg.sender,
                recipient,
                amount
            );
            require(rv, "No tokensReceived");
        }

        return true;
    }

    function transferWithCallbackBuyNFT(address recipient,uint256 tokenId, uint256 price)
        external
        returns (bool)
    {
        if (recipient.code.length > 0) {
            bool rv = INFTMarket(recipient).tokensReceived(msg.sender,
                tokenId,
                price
            );
            require(rv, "No tokensReceived");
        }

        return true;
    }

}