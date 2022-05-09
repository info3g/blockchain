pragma solidity 0.6.0;
contract enumdemo
{
    enum users{allowed,notallowed,lase,end}
    users public u1= users.end;
    uint public lodge=400;
    function check() public
    {
        if(u1==users.end)
        {
            lodge=88;
        }
    }
    function changeu1() public
    {
        u1=users.notallowed;
    }
}