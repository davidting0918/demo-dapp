const { ethers } = require('hardhat');

async function main() {
    // get the contract 
    const SendEther = await ethers.getContractFactory("SendEther");

    // deploy the contract
    const sendEther = await SendEther.deploy();

    // wait for the contract to be deployed
    await sendEther.deployed()

    console.log("SendEther deployed to:", sendEther.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });