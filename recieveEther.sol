//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract RecieveEther {

    function receiveEther () external payable {
        require(msg.value == 0, 'value must be greater than 0');

    }

    function getBalanceInWei() public view returns (uint) {
        return address(this).balance;
    }

    function convertFromWei(uint weiAmount) internal pure returns (uint) {
        return weiAmount / 1 ether;
    }
    
    function getBalanceInEther() public view returns (uint) {
        return convertFromWei(address(this).balance);
    }

    

    
}