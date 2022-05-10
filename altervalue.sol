pragma solidity 0.6.0;
contract test

{
    enum user{allowed,notallowed, wait,end,nmm}
    user public u1=user.notallowed;
    uint public lottery =1121;
    function owner() public
    {
        if(u1==user.notallowed)
        {
            lottery=1;
        }
    }
    function change() public
    {
        u1=user.end; 
    }
    function changeval() public
    {
        lottery=666;
    }
    function u1change() public
    {
        u1=user.nmm;
    }
   
}

