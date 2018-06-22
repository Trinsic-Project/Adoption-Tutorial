var SwapAgreement = artifacts.require("SwapAgreement");

module.exports = function(deployer) {
  deployer.deploy(SwapAgreement);
};