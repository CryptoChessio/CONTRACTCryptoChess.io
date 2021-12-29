// contracts/GameItems.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Game{
    struct Player {
        uint team;
        uint userAddress;
    }

    uint teamCount;
    Player[] Players;

    mapping(address => uint) public user;

    function addPlayer() public{
        Player memory player = Players[teamCount];
        Player.userAddress = msg.sender;
        Player.team = teamCount;
        incTeamCount();
    }

    function incTeamCount() public{
        if(teamCount = 1)
            teamCount = 0;
        if(teamCount < 1)
            teamCount +=1;
    }
}