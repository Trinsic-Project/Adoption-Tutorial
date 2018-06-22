pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SwapAgreement.sol";

contract TestSwapAgreement {
  SwapAgreement swapAgreement = SwapAgreement(DeployedAddresses.SwapAgreement());

// Testing the initatedSwap() function
function testUserCanInitiateSwap() public {
  uint256 returnedId = swapAgreement.initiatedSwap();

  uint expected = 0;

  Assert.equal(returnedId, expected, "Swap ID should be set to 0");
}

// Testing the finalizeSwap() function 
function testUserCanFinalizeSwap() public {
  bytes32 returnedInitiatorSkill = swapAgreement.finalizeSwap(0);
  bytes32 expected = "Skateboarding";

  Assert.equal(returnedInitiatorSkill, expected, "Initiator skill should be set to skateboarding");
}

//Testing retrieval of a single pet's owner
// function testGetAdopterAddressByPetId() public {
//   // Expected owner is this contract
//   address expected = this;

//   address adopter = adoption.adopters(8);

//   Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded.");
// }

// // Testing retrieval of all pet owners
// function testGetAdopterAddressByPetIdInArray() public {
//   // Expected owner is this contract
//   address expected = this;

//   // Store adopters in memory rather than contract's storage
//   address[16] memory adopters = adoption.getAdopters();

//   Assert.equal(adopters[8], expected, "Owner of pet ID 8 should be recorded.");
// }

}
