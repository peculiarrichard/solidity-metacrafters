//SPDX-Licencense-Identifier: MIT
pragma solidity ^0.6.0;

contract MyContract {
    string public myString;
    int public myInt;
    address public myAddress;
    bool public myBool;

    function setString (string memory _myString) public {
        myString = _myString;
    }


    function setInt (int _myInt) public{
        myInt = _myInt;
    }

    function setAddress () public {
        myAddress = msg.sender;
    }

    function setBool () public {
        myBool = true;
    }

    function getString () public view returns (string memory) {
        return myString;
    }

    function getInt() public view returns (int) {
    return myInt;
}

    function getAddress() public view returns (address) {
    return myAddress;
}

    function getBool() public view returns (bool) {
    return myBool;
}

}