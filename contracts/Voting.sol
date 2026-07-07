// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Voting is Ownable {

    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    Candidate[] public candidates;

    mapping(address => bool) public hasVoted;

    constructor(address initialOwner)
        Ownable(initialOwner)
    {}

    function addCandidate(string memory name)
        public
        onlyOwner
    {
        candidates.push(
            Candidate({
                id: candidates.length,
                name: name,
                voteCount: 0
            })
        );
    }

    function vote(uint256 candidateId)
        public
    {
        require(!hasVoted[msg.sender], "Already voted");

        require(
            candidateId < candidates.length,
            "Invalid candidate"
        );

        hasVoted[msg.sender] = true;

        candidates[candidateId].voteCount++;
    }

    function getCandidate(uint256 candidateId)
        public
        view
        returns(
            uint256,
            string memory,
            uint256
        )
    {
        Candidate memory c = candidates[candidateId];

        return (
            c.id,
            c.name,
            c.voteCount
        );
    }

    function getCandidateCount()
        public
        view
        returns(uint256)
    {
        return candidates.length;
    }
}