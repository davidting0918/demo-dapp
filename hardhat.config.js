require("@nomiclabs/hardhat-waffle");
require("dotenv").config();

const SEPOLIA_PRIVATE_KEY = process.env.SEPOLIA_PRIVATE_KEY;

module.exports = {
  solidity: "0.8.24",
  networks: {
    sepolia: {
      url: "https://eth-sepolia.g.alchemy.com/v2/7j_tKt6YQ9AwXucyitxfpfvuClsy5Y4o",
      accounts: [`0x${SEPOLIA_PRIVATE_KEY}`]
    }
  }
};
