// SPDX-License-Identifier: MIT
pragma solidity=0.8.17;

import './Interface/ITradingPairExchange.sol';

contract  TradingPairExchange is ITradingPairExchange {

    address public factoryAddr;
    address public tokenA;
    address public tokenB;

    constructor(){
        factoryAddr = msg.sender;
    }

    function initialize(address _tokenA, address _tokenB) external {
        require(msg.sender == factoryAddr, "forbidden");
        tokenA = _tokenA;
        tokenB = _tokenB;
    }
}