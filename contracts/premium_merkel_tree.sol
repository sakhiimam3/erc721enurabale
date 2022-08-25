//SPDX-License-Identifier: MIT
pragma solidity >=0.7.3 <=0.8.15;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract  Mymint is  ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter public _tokenIds;
    constructor() ERC721("sakhiNFT","sk"){}

    function mintSingleNFT(string memory uri) public payable {
        uint newTokenID = _tokenIds.current();
        _safeMint(msg.sender, newTokenID);
        _setTokenURI(newTokenID,uri);
        _tokenIds.increment();
    }
}