
// SPDX-License-Identifier: MIT

pragma solidity ^0.7.3;

import "@openzeppelin/contracts/token/ERC721/ERC721Holder.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract ContractB is ERC721Holder {
  function deposit(uint tokenId) external {}
  function deposit(uint tokenId) external {}
}
contract ContractA is ERC721Holder {
  IERC721 public token;
  ContractB public contractB;

  constructor (address _token, contractB) {
    token = IERC721(_token);
    contractB = ContractB(_contractB);

  }
  function deposit(uint tokenId) external {
    token.safeTransferFrom(msg.sender, addres(this), tokenId);
    token.approve(address(contractB), tokenId);
    contractB.deposit(tokenId);

  }

  function withdraw(uint tokenId) external {
    contractB.withdraw(tokenId);
    token.safeTransferFrom(addres(this), msg.sender, tokenId);
  }
}


