// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssetOwnership {
    mapping(address => address) public assetOwners;

    event AssetRegistered(address indexed assetAddress, address indexed owner);
    
    function registerAsset(address _assetAddress, address _owner) public {
        require(assetOwners[_assetAddress] == address(0), "Asset already registered");
        assetOwners[_assetAddress] = _owner;
        emit AssetRegistered(_assetAddress, _owner);
    }

    function verifyOwnership(address _assetAddress, address _owner) public view returns (bool) {
        return assetOwners[_assetAddress] == _owner;
    }
}
