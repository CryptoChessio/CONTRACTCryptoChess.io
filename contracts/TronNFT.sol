// contracts/GameItems.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract Tron is ERC1155 {
      function balanceOf(address _owner, uint256 _tokenId) public view returns (uint256);
  function transfer(address _to, uint256 _tokenId) public returns (bool);
  function approve(address _to, uint256 _tokenId) public returns (bool);
  function transferFrom(address _from, address _to, uint256 _tokenId) public returns (bool);
  function totalSupply() public view returns (uint256);
  function tokenOfOwnerByIndex(address _owner, uint256 _index) public view returns (uint256);
  function tokenByIndex(uint256 _index) public view returns (uint256);
  function ownerOf(uint256 _tokenId) public view returns (address);
  function try_approve(address _to, uint256 _tokenId) public returns (bool);
  function try_transfer(address _to, uint256 _tokenId) public returns (bool);
  function try_transferFrom(address _from, address _to, uint256 _tokenId) public returns (bool);
}