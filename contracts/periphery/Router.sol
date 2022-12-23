// SPDX-License-Identifier: MIT
pragma solidity =0.8.17;
import './Interface/IRouter.sol';
import '../core/Interface/IFactory.sol';


contract Router is IRouter {


    address public immutable factoryaddr;

    constructor(address _factoryaddr){
        factoryaddr = _factoryaddr;
    }

    function _addLiquidity (
        address tokenA, address tokenB
    ) internal returns ( uint amountA, uint amountB){
        if(IFactory(factoryaddr).TradingPair(tokenA, tokenB) == address(0)){
            IFactory(factoryaddr).createTradingPair(tokenA, tokenB);
        }
    }


    function addLiquidity(
        address tokenA,
        address tokenB
    ) external returns (uint amountA, uint amountB){
        (amountA,amountB) = _addLiquidity(tokenA,tokenB);
    }
}