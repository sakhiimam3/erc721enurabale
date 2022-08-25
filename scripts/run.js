const { utils } = require("ethers");

async function main() {
 
  const [owner] = await hre.ethers.getSigners();
  const contractFactory = await hre.ethers.getContractFactory("Mymint");

  const contract = await contractFactory.deploy();
  await contract.deployed();
  console.log("Contract deployed to:", contract.address);
  txn = await contract.mintSingleNFT("https://ipfs.io/ipfs/QmZjBnuaEmSjqG2DQivPAH5uyyA7Y93y2cDhqSjRs5rz4B");
  await txn.wait();
  console.log(txn)
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
