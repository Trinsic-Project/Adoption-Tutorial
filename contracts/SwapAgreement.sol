pragma solidity ^0.4.17;

contract SwapAgreement {
    address initiator; 
    address respondent;

// Adopting a pet
function finalizeSwap(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 15);

  adopters[petId] = msg.sender;

  return petId;
}

// Retrieving the adopters
function getAdopters() public view returns (address[16]) {
  return adopters;
}
}