// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AtlasVault {

    uint256 public totalStaked;

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    function stake() external {
        totalStaked += 1;
        emit Deposited(msg.sender, 1);
    }

    function unstake() external {
        require(totalStaked > 0, "Nothing staked");
        totalStaked -= 1;
        emit Withdrawn(msg.sender, 1);
    }

    function getTotalStaked() external view returns (uint256) {
        return totalStaked;
    }
}
