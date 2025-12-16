// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract Cachaca2046 is ERC721Enumerable, Ownable, ReentrancyGuard {

    uint256 public constant MAX_SUPPLY = 100;
    uint256 public price = 0.01 ether;

    string private baseTokenURI;

    // Marca NFTs que já foram resgatadas
    mapping(uint256 => bool) private redeemed;

    constructor(string memory initialBaseURI)
        ERC721("Cachaca 2046", "CACHA")
        Ownable(msg.sender)
    {
        baseTokenURI = initialBaseURI;
    }

    // ------------------------
    // MINT
    // ------------------------
    function mint(uint256 amount) external payable nonReentrant {
        require(amount > 0, "Amount zero");
        require(totalSupply() + amount <= MAX_SUPPLY, "Max supply reached");
        require(msg.value == price * amount, "Incorrect ETH value");

        for (uint256 i = 0; i < amount; i++) {
            uint256 tokenId = totalSupply() + 1;
            _safeMint(msg.sender, tokenId);
        }
    }

    // ------------------------
    // REDEEM (queima)
    // ------------------------
    function redeem(uint256 tokenId) external nonReentrant {
        require(ownerOf(tokenId) == msg.sender, "Not the owner");
        require(!redeemed[tokenId], "Already redeemed");

        redeemed[tokenId] = true;
        _burn(tokenId);
    }

    // ------------------------
    // ADMIN
    // ------------------------
    function setBaseURI(string memory newBaseURI) external onlyOwner {
        baseTokenURI = newBaseURI;
    }

    function withdraw() external onlyOwner nonReentrant {
        payable(owner()).transfer(address(this).balance);
    }

    // ------------------------
    // INTERNAL
    // ------------------------
    function _baseURI() internal view override returns (string memory) {
        return baseTokenURI;
    }
}
