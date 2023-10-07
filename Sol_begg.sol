// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Token {

// public variables here
    string public tokname="USHA";
    string public tokabbr="PK";
    uint public totsupply=0;

 // mapping variable here
   mapping(address => uint) public bal;
 

 // mint function
   function mint(address _user, uint _val) public {
      totsupply += _val;
      bal[_user] += _val;
    }

 // burn function
   function burn(address _user, uint _val) public {
     if (bal[_user] >= _val) {
       totsupply -= _val;
     }
   }
}
