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
<img width="291" height="262" alt="image" src="https://github.com/user-attachments/assets/4e3357ee-ad17-4de2-b03c-6e6bdac26d96" />


### registerToken(string name, string symbol)

Registers a new token with a unique ID.
<img width="291" height="386" alt="image" src="https://github.com/user-attachments/assets/bd478da5-6b69-4c39-927c-ec24f8cc8b72" />


### deactivateToken(uint256 id)

Deactivates a token (only owner can call).
<img width="291" height="299" alt="image" src="https://github.com/user-attachments/assets/41580fdf-318d-43bf-8610-366f23675863" />
After calling deactivateToken isActive becomes false
<img width="291" height="299" alt="image" src="https://github.com/user-attachments/assets/25958a92-482c-45d8-beda-142158bee9ef" />



### getToken(uint256 id)

Returns token details.
<img width="291" height="339" alt="image" src="https://github.com/user-attachments/assets/192e0fc3-06a7-4fca-8269-9eea923485e4" />


### getAllTokenIds()

Returns all registered token IDs.
<img width="291" height="299" alt="image" src="https://github.com/user-attachments/assets/8e1ef4f5-86ec-4b5c-866e-fd854463e1c1" />


## Bonus Features

- Event emitted when a token is registered
 <img width="941" height="357" alt="image" src="https://github.com/user-attachments/assets/89e9636c-803f-4a12-aca3-8aea9ff1e405" />

- Validation to prevent empty name or symbol
  Check: Validation Symbol
  <img width="1242" height="357" alt="image" src="https://github.com/user-attachments/assets/01f30722-6148-4fcf-b1c0-f418b5143c87" />
  Check: Validation Empty Name
  <img width="1242" height="357" alt="image" src="https://github.com/user-attachments/assets/32c0b4e5-8d82-4902-8170-a724dac440fc" />



## Usage

- Deploy using Remix
- Register tokens
- Retrieve and manage them
