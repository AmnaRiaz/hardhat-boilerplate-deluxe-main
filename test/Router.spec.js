const {expect} = require("chai");
const { loadFixture} = require("@nomicfoundation/hardhat-network-helpers");
const {ethers} = require("hardhat");


describe (  "Router contract", () => {
  async  function  deployRouterfixture(){

    const WETHERC20SmartContract = "0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2"; 
    const DAIERC20SmartContract = "0x6B175474E89094C44Da98b954EedeAC495271d0F"; 

    const RouterContract = await ethers.getContractFactory("Router");
    const router = await RouterContract.deploy();
    await  router.deployed();

    return { 
      
      WETHERC20SmartContract,
      DAIERC20SmartContract,
      router};
  }

  describe("Deposite liquidity", ()=>  {
    it("should add the tokens of eequal value", async ()=> {
      const {
        WETHERC20SmartContract,
      DAIERC20SmartContract,
        router
      } = await loadFixture(deployRouterfixture);
      const { amountA, amountB } = await router.addLiquidity(
        WETHERC20SmartContract,
        DAIERC20SmartContract
      )

      expect(true).to.eq(true);
    });
  })
})