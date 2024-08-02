// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract SafeTokenMover {

    using SafeERC20 for IERC20;

    address public immutable token;

    constructor(address _token) {
        token = _token;
    }

    function move(address from, address to, uint256 amount) public {
        IERC20(token).safeTransferFrom(from, to, amount);
    }

}