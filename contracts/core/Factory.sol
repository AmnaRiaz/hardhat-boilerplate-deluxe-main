// SPDX-License-Identifier: MIT
pragma solidity=0.8.17;

import './Interface/IFactory.sol';
import './TradingPairExchange.sol';
import './Interface/ITradingPairExchange.sol';

contract Factory {
    IFactory public abc;
    mapping (address => mapping(address => address)) public TradingPair;

    function createTradingPair( address tokenA,address tokenB) external returns (address pair){

        require (tokenA != tokenB, "same addressess");
        require (tokenA != address(0) && tokenB  != address(0),"zero addressess");
        require (TradingPair[tokenA][tokenB] ==  address(0), "pair exists");

        bytes memory bytecode = type(TradingPairExchange).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(tokenA, tokenB ));

        assembly {
            pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        ITradingPairExchange(pair).initialize(tokenA,tokenB);

        TradingPair[tokenA][tokenB] = pair;
        TradingPair[tokenB][tokenA] = pair;
    }




    

} 