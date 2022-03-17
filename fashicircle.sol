// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.6;
// The amount of the commodity can be either in Kgs (for unfinished products) or can be in meterSquare(for cloth materials) or in items(for finished products)


enum amount_unit{kilograms, meterSquare,items}


struct fashircleTransaction{
    bool Sustain_index;
    uint quantity;
    amount_unit unit;
    string _type;
    address sender;
    address reciever;
}

contract demoTrans{ 
    
    function sendItem(bool _sustain_index, amount_unit _unit, uint _quantity, address _reciever, string memory _type) public {
        fashircleTransaction memory new_transanction;
        new_transanction._type = _type;
        new_transanction.reciever = _reciever;
        new_transanction.quantity = _quantity;
        new_transanction.unit = _unit;
        new_transanction.sender = msg.sender; 
    }
}