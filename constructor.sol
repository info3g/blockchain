pragma solidity 0.6.0;
struct student
{
    uint rollno;
    string name;

}
contract demo
{
    student public s2;
    constructor(uint _rollno,string memory _name) public
    {
        s2.rollno=_rollno;
        s2.name=_name;

    }
    function change(uint _rollno, string memory _name ) public
    {
        s2.rollno=_rollno;
        s2.name=_name;

    }


}