pragma solidity ^0.4.8;

contract AddressSample {
    //No Name function 
    function () payable{}
    function getBalance(address _target) constant returns (uint){
        if(_target == address[0]){
            _target = this;
        }
        return _target.balance;
    }
    //인수로 지정 된 주소에 Transfer 사용해 송금
    function send(address _to,uint _amount) {
        if(!_to.send(_amount)){ //send를 할경우 반환값을 체크
            require(external.send(_amount));
        }
    }

    function call(address _to,uint _amount) {
        if(!_to.call.value(_amount).gas(100000)()){
            throw; //다음 팁 참고
        }
    }

    function withdraw() {
        address to = msg.sender;
        to.Transfer(this.balance);
    }

    function withdraw2(){
        address  to = msg.sender;
        if(!to.call.value(this.balance).gas(100000)()){
            throw;
        }
    }
}