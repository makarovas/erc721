
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ERC721OpenZeppelin1 is ERC721 {
  constructor() ERC721('Token name', 'Token symbol') {

  }
}


contract ERC721OpenZeppelin2 is ERC721 {
  constructor() ERC721('Token name', 'Token symbol') {
    _safeMint(msg.sender, 0);
    _safeMint(msg.sender, 1);

  }
}



contract ERC721OpenZeppelin3 is ERC721 {
  address   public admin;
  constructor() ERC721('Token name', 'Token symbol') {
    admin = msg.sender;

  }
  function mint(address to, uint tokenId) external   {

    require(msg.sender == admin, 'only admin');
    _safeMint(to,tokenId);
  }
}

contract ERC721OpenZeppelin4 is ERC721 {
  constructor() ERC721('Token name', 'Token symbol') {
  }
  function faucet(address to, uint tokenId) external   {
    _safeMint(to,tokenId);
  }
}