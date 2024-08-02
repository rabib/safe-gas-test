// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {TokenMover} from "../src/TokenMover.sol";
import {Token} from "../src/Token.sol";

contract SafeTokenMoverTest is Test {
    TokenMover public tokenMover;
    Token public token;

    function setUp() public {
        token = new Token(1000);
        tokenMover = new TokenMover(address(token));
    }

    function test_Move() public {
        token.approve(address(tokenMover), 100);
        tokenMover.move(address(this), address(tokenMover), 100);
    }

}
