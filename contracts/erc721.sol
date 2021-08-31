// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ERC721Rafa is ERC721 {
    constructor() ERC721("Rafael Fuentes Rangel", "RFR") {
    }
}

contract ERC721Rafa2 is ERC721 {
    constructor() ERC721("Rafael Fuentes Rangel", "RFR") {
        _safeMint(msg.sender, 0);
    }
}

contract ERC721Rafa3 is ERC721 {
    address public admin;

    constructor() ERC721("Rafael Fuentes Rangel", "RFR") {
        admin = msg.sender;
    }

    function mint(address to, uint tokenId) external {
    require(msg.sender == admin, "only admin");
    _safeMint(to, tokenId);
    }
}

contract ERC721Rafa4 is ERC721 {
    constructor() ERC721("Rafael Fuentes Rangel", "RFR") {}

    function faucer(address to, uint tokenId) external {
        _safeMint(to, tokenId);
    }
}
