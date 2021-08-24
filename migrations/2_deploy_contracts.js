const NFTContract = artifacts.require("NFTContract");

module.exports = async function (deployer, network, accounts) {
    await deployer.deploy(NFTContract);
};