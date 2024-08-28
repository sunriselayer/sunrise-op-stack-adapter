// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { ISystemConfig } from "src/L1/interfaces/ISystemConfig.sol";

/// @title ISystemConfigInterop
/// @notice Interface for the SystemConfigInterop contract.
interface ISystemConfigInterop is ISystemConfig {
    function addDependency(uint256 _chainId) external;
    function initialize(
        address _owner,
        uint32 _basefeeScalar,
        uint32 _blobbasefeeScalar,
        bytes32 _batcherHash,
        uint64 _gasLimit,
        address _unsafeBlockSigner,
        ResourceConfig memory _config,
        address _batchInbox,
        Addresses memory _addresses,
        address _dependencyManager
    )
        external;
    function removeDependency(uint256 _chainId) external;
}
