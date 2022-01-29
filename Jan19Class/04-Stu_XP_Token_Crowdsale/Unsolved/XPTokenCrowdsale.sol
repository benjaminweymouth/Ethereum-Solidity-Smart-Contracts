pragma solidity ^0.5.0;

import "./XPTokenMintable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";

contract XP_TokenCrowdsale is Crowdsale, MintedCrowdsale {
    constructor(
        uint rate,
        address payable wallet,
        XP_Token token
    )
        Crowdsale(rate, wallet, token)
        public
    {
        // constructor body can stay empty
    }
}

contract XP_TokenCrowdsaleDeployer {
    address public XP_token_address;
    address public XP_crowdsale_address;

    constructor(
        string memory name,
        string memory symbol,
        address payable wallet
    )
        public
    {
        XP_Token token = new XP_Token(name, symbol, 0);
        XP_token_address = address(token);

        XP_TokenCrowdsale XP_crowdsale = new XP_TokenCrowdsale(1, wallet, token);
        XP_crowdsale_address = address(XP_crowdsale);

        token.addMinter(XP_crowdsale_address);
        token.renounceMinter();
    }
}
