//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTContract is ERC721 {
    uint256 public tokenCounter;
    string private _baseURIExtended;

    constructor() public ERC721("NFTContract", "NFTCR") {
        tokenCounter = 0;
    }

    function _baseURI() internal virtual override view returns (string memory) {
        return _baseURIExtended;
    }

    function _setTokenURI(uint256 tokenId, string memory _tokenURI)
        internal
        virtual
    {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI set of nonexistent token"
        );
        _baseURIExtended = _tokenURI;
    }

    function createCollectible(string memory tokenURI)
        public
        returns (uint256)
    {
        uint256 newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        tokenCounter = tokenCounter + 1;
        return newItemId;
    }
}
