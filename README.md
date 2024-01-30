# SuperGame Token (SGT)

## Overview

SuperGame Token (SGT) is an ERC-20 token built on the Ethereum blockchain. It extends the functionalities of the ERC-20 standard with additional features suitable for a gaming ecosystem. The contract is implemented in Solidity and utilizes the OpenZeppelin library for ERC-20 and Ownable functionality.

## Features

- Minting: Only the owner of the contract can mint new tokens.
- Transfers: Users can transfer tokens to other addresses.
- Redemption: Users can redeem tokens by burning them.
- Balance Check: Users can check their token balance.
- Burning: Users can burn their own tokens.

## Contract Details

- **Name:** SuperGame Token
- **Symbol:** SGT
- **Decimals:** Configurable (currently set to 18)
- **Total Supply:** 100 SGT (minted to the contract owner during deployment)

## Getting Started

To use SuperGame Token, you can follow these steps:

1. Deploy the contract on the Ethereum blockchain.
2. Mint tokens to your address as the owner using the `mintTokens` function.
3. Interact with the contract by transferring, redeeming, and burning tokens.

## Functions

- `mintTokens(address to, uint256 amount) external onlyOwner`: Mint new tokens to a specified address.
- `transferTokens(address to, uint256 amount) external`: Transfer tokens to another address.
- `redeemTokens(uint256 amount) external`: Redeem tokens by burning a specified amount.
- `checkBalance(address account) external view returns (uint256)`: Check the balance of a specific address.
- `burnTokens(uint256 amount) external`: Burn tokens from the sender's address.

## Events

- `TokensMinted(address indexed to, uint256 amount)`: Triggered when tokens are minted.
- `TokensBurned(address indexed from, uint256 amount)`: Triggered when tokens are burned.
- `TokensRedeemed(address indexed from, uint256 amount)`: Triggered when tokens are redeemed.


