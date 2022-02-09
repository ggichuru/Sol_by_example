import { ethers } from "hardhat";

async function main(contractName: string, network: string) {
  const MagicMoneyFlat = await ethers.getContractFactory(
    `MagicInternetMoneyV1`
  );
  const magicMoneyFlat = await MagicMoneyFlat.deploy();

  const WETH = "0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2";

  const BentoBoxV1 = await ethers.getContractFactory(`BentoBoxV1`);
  const bentoBoxV1 = await BentoBoxV1.deploy(WETH);

  await magicMoneyFlat.deployed();
  await bentoBoxV1.deployed();

  if (network === "rinkeby") {
    console.log(
      `MagicInternetMoneyV1 contract deployed to, https://rinkeby.etherscan.io/address/${magicMoneyFlat.address}`
    );
    console.log(
      `\n BentoBoxV1 contract deployed to, https://rinkeby.etherscan.io/address/${bentoBoxV1.address}`
    );
  }
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main("MagicInternetMoneyV1", "rinkeby").catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
