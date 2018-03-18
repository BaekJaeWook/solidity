pragma solidity ^0.4.8;

contract OreOreCoin {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    mapping (address=>uint256) public balanceOf;  //각 주소의 잔고

    event Transfer(address indexed from, address indexed to, uint256 value);
    function OreOreCoin(uint256 _supply, string _name, string _symbol, uint8 _decimals) {
        balanceOf[msg.sender] = _supply;
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _supply;
    }

    //송금 처리 
    function transfer(address _to, uint256 _value) {
        if(balanceOf[msg.sender] < _value) throw;
        if(balanceOf[_to] + _value < balanceOf[_to]) throw;

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        Transfer(msg.sender, _to, _value);

    }

}