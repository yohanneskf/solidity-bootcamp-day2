# TokenRegistry Smart Contract

## Description

This contract allows users to register and manage tokens. Each token has a name, symbol, owner, and active status.

## Structure

### Token Struct

- name: Token name
- symbol: Token symbol
- owner: Creator of the token
- isActive: Status of the token

## Functions

### registerToken(string name, string symbol)

Registers a new token with a unique ID.

### deactivateToken(uint256 id)

Deactivates a token (only owner can call).

### getToken(uint256 id)

Returns token details.

### getAllTokenIds()

Returns all registered token IDs.

## Bonus Features

- Event emitted when a token is registered
- Validation to prevent empty name or symbol

## Usage

- Deploy using Remix
- Register tokens
- Retrieve and manage them
