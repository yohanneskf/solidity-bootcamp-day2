// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenRegistry {

    struct Token {
        string name;
        string symbol;
        address owner;
        bool isActive;
    }

    // Mapping: ID => Token
    mapping(uint256 => Token) public tokens;

    // Array of all token IDs
    uint256[] public tokenIds;

    // Counter for token IDs
    uint256 private nextId = 1;

    // 🎯 Event (Bonus)
    event TokenRegistered(uint256 id, string name, string symbol, address owner);

    // Register a new token
    function registerToken(string memory name, string memory symbol) public {

        // Bonus: validation
        require(bytes(name).length > 0, "Name cannot be empty");
        require(bytes(symbol).length > 0, "Symbol cannot be empty");

        uint256 id = nextId;

        tokens[id] = Token({
            name: name,
            symbol: symbol,
            owner: msg.sender,
            isActive: true
        });

        tokenIds.push(id);
        nextId++;

        emit TokenRegistered(id, name, symbol, msg.sender);
    }

    // Deactivate token (only owner)
    function deactivateToken(uint256 id) public {
        require(tokens[id].owner == msg.sender, "Not the owner");
        require(tokens[id].isActive == true, "Already inactive");

        tokens[id].isActive = false;
    }

    // Get token details
    function getToken(uint256 id) public view returns (
        string memory,
        string memory,
        address,
        bool
    ) {
        Token memory t = tokens[id];
        return (t.name, t.symbol, t.owner, t.isActive);
    }

    // Get all token IDs
    function getAllTokenIds() public view returns (uint256[] memory) {
        return tokenIds;
    }
}