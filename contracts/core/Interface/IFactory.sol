// SPDX-License-Identifier: MIT
pragma solidity =0.8.17;

interface IFactory{
    function TradingPair (address tokenA, address tokenB) external view returns (address pair);
    function createTradingPair(address tokenA, address tokenB) external view returns ( address pair);
    function allTradingPairs(uint) external view returns(uint);
}