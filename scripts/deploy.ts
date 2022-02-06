import { ethers } from "hardhat";

async function main(contractName: string, network: string) {
  const SimpleStorage = await ethers.getContractFactory(`${contractName}`);
  const simpleStorage = await SimpleStorage.deploy();

  await simpleStorage.deployed();

  if (network === "rinkeby") {
    console.log(
      `${contractName} contract deployed to, https://rinkeby.etherscan.io/address/${simpleStorage.address}`
    );
  }
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main("SimpleStorage", "rinkeby").catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
