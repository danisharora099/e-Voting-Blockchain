pragma solidity ^0.5.8;

contract Election {
    //model a candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    //store candidates
    
    //fetch candidates
    mapping (uint => Candidate) public candidates;

    //store candidates count
    uint public candidatesCount;

    function addCandidate (string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate (candidatesCount, _name, 0);
    }

    constructor () public {
        addCandidate ('Rajja');
        addCandidate ('Dani');
    }
}