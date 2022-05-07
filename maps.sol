pragma solidity 0.6.0;
contract mapdemo
{
    mapping(uint=>string) public rollno;
    mapping(uint=>string) public ids;
    mapping(string=>string)public nme;
    
   

    function setter(uint key, string memory values) public
    {
        rollno[key]=values;
    }
    function set(uint keyss,string memory value) public
    {
        ids[keyss]=value;
    }
    function test(string memory nae,string memory val)public
    {
        nme[nae]=val;

    }
    function test() public view returns(uint no,uint time,address addr)
    {
        return(block.number,block.timestamp,msg.sender);
    }
    
    
}
