const NFTContract = artifacts.require("NFTContract");

contract("NFTContract - Generate NFT and check uri", async ([owner, user1]) => {
    it("URI should match", () =>
        NFTContract.deployed()
            .then(async instance => {
                var itemId = await instance.createCollectible('https://ipfs.io/ipfs/Qmc528zbbiDgWHCxfTCfNq8mNCG7MJJAVthwUvR3nuMJ55?filename=TopTal1.png');
                // var itemUri = await instance.tokenURI(itemId);
                console.log(itemId);
                // console.log(itemUri);
                // assert.equal('https://ipfs.io/ipfs/Qmc528zbbiDgWHCxfTCfNq8mNCG7MJJAVthwUvR3nuMJ55?filename=TopTal1.png', itemUri, "uri not match");

            }));

});