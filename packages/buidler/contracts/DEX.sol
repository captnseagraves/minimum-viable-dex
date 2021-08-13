pragma solidity ^0.6.6;

import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract DEX {

  using SafeMath for uint256;
  IERC20 token;

  uint256 public totalLiquidity;

  mapping (address => uint256) public liquidity;

  constructor(address token_addr) public {
    token = IERC20(token_addr);
  }

  function init() public payable returns (uint256) {
    require(totLiquidity == 0, "DEX:init - already has liquidity");
    totalLiquidity = address(this).balance;
    liquidity[msg.sender] = totalLiquidity;
    require(token.transferFrom(msg.sender, address(this), tokens));
    return totalLiquidity;
  }

}
