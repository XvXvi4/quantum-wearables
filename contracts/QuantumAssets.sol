// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract QuantumAssets is ERC1155, Ownable {
    string public name = "To Be Determined by Sherman G. Laing";
    string public symbol = "TBD"; // Symbol to be determined

    /**
     * @dev Constructor sets the metadata URI with placeholders for token IDs.
     */
    constructor() ERC1155("https://api.example.com/metadata/{id}.json") {}

    /**
     * @dev Allows the owner to mint new tokens.
     * @param to Address to receive the tokens.
     * @param id Token ID to mint.
     * @param amount Number of tokens to mint.
     * @param data Additional data (optional).
     */
    function mint(address to, uint256 id, uint256 amount, bytes memory data) public onlyOwner {
        _mint(to, id, amount, data);
    }

    /**
     * @dev Allows the owner to update the metadata URI.
     * @param newUri New metadata URI template.
     */
    function setUri(string memory newUri) public onlyOwner {
        _setURI(newUri);
    }

    /**
     * @dev Overrides the default URI to include dynamic token ID replacement.
     * @param _id Token ID.
     * @return string Full URI for the token metadata.
     */
    function uri(uint256 _id) public view override returns (string memory) {
        return string(abi.encodePacked("https://api.example.com/metadata/", Strings.toString(_id), ".json"));
    }
}
