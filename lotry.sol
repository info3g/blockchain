// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.6.6;
contract lottery
{
    address public manager;
    address payable[] public participant;

    constructor() public
    {
        manager=msg.sender; // assign address to the manager
    }
    receive() external payable // use only once in contract
    {
        require(msg.value==1 ether); //value equal to 1 not lessthan 1 ether(require similar to if statement)
        participant.push(payable(msg.sender)); //address store in the participant
    }
    function get_balance() public view returns(uint)
    {
        require(msg.sender==manager); // address equal to manager,only manager check balance
        return address(this).balance;  // give balance 
    }
    function random() public view returns(uint)
    {
        return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp,participant.length)));
    }
    function selectwinner() public 
    {
        require(msg.sender==manager);
        require(participant.length>=3);
        uint r =random();
        address payable winner;
        uint index = r % participant.length;
        winner=participant[index];
        winner.transfer(get_balance());
        participant=new address payable[](0);
       // return winner;

    }
    
}

