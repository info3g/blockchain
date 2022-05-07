pragma solidity 0.6.0;
contract demo
{
    function test() public view returns(uint blocknum,uint timedte,address sender)
    {
        
        return(block.number,block.timestamp,msg.sender);
    }
}

