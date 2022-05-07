pragma solidity 0.6.0;
contract demo
{
    address payable user=payable(0x17F6AD8Ef982297579C203069C1DbfFE4348c372);
    function payether() public payable
    {

    }
    function get_balance() public view returns(uint)
    {
        return address(this).balance;
    }
    function contract_to_adder() public
    {
        user.transfer(1 ether);


    }
}