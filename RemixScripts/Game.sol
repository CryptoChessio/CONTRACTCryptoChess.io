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

    function Game(uint _teamCount) {
        teamCount = _teamCount;
    }

    function join(uint _team, uint _userAddress) {
        if (teamCount == 0) {
            throw;
        }
        if (_team > teamCount) {
            throw;
        }
        if (Players[_team].userAddress != 0) {
            throw;
        }
        Players[_team].team = _team;
        Players[_team].userAddress = _userAddress;
    }

    function getTeam(uint _userAddress) constant returns (uint) {
        for (uint i = 0; i < teamCount; i++) {
            if (Players[i].userAddress == _userAddress) {
                return Players[i].team;
            }
        }
        return 0;
    }

    function getUserAddress(uint _team) constant returns (uint) {
        return Players[_team].userAddress;
    }

    function getTeamCount() constant returns (uint) {
        return teamCount;
    }

    function getPlayerCount() constant returns (uint) {
        uint count = 0;
        for (uint i = 0; i < teamCount; i++) {
            if (Players[i].userAddress != 0) {
                count++;
            }
        }
        return count;
    }

    function getPlayer(uint _team) constant returns (uint) {
        return Players[_team].userAddress;
    }
    
    function addPlayer() public{
        Player memory player = Players[teamCount];
        Player.userAddress = msg.sender;
        Player.team = teamCount;
    }

}