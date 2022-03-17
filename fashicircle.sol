// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.6;

enum amount_unit{kilograms, meterSquare,items}
// The amount of the commodity can be either in Kgs (for unfinished products) or can be in meterSquare(for cloth materials) or in items(for finished products)

struct amount{
    uint quantity;
    amount_unit unit;
}

struct fashircleTransaction{
    bool Sustain_index;
    amount commodity;
    string _type;
    address sender;
    address reciever;
}

contract demoTrans{ 
    
    function sendItem(bool _sustain_index, ) {
        
    }
}