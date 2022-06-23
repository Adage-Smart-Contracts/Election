// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Election {
    string public candidate;

    // Model a Candidate
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    //Store Candidate

    //Fetch a candidate
    mapping(uint256 => Candidate) public candidates;

    //Store Candidates Count
    uint256 public candidatesCount;

    // Constructor
    constructor() public {
        addCandidates("Candidate-1");
        addCandidates("Candidate-2");
    }

    function addCandidates(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}
