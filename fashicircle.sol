// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.6;


enum amount_unit{kilograms, meterSquare,items}
// The amount of the commodity can be either in Kgs (for unfinished products) or can be in meterSquare(for cloth materials) or in items(for finished products)



struct fashircleTransaction{
    bool Sustain_index;
    uint quantity;
    amount_unit unit;
    string _type;
    address sender;
    address reciever;
}
// this is a structure defined for a regular fashircle transaction 

contract demoTrans{ 

    fashircleTransaction[] public transaction_array;
    // this is an array that will store all the transanctions done by various companies
    
    function sendItem(bool _sustain_index, amount_unit _unit, uint _quantity, address _reciever, string memory _type) public {
        fashircleTransaction memory new_transaction;
        new_transaction._type = _type;
        new_transaction.reciever = _reciever;
        new_transaction.quantity = _quantity;
        new_transaction.unit = _unit;
        new_transaction.sender = msg.sender; 
        new_transaction.Sustain_index=_sustain_index;
        transaction_array.push(new_transaction);
    }
    // This function records the transanction done by the factory/retail store in the form of an array

    function getBlock(uint _index) public view returns(fashircleTransaction memory _output){
        return transaction_array[_index];
    }
    // this function can get the transanction given the index number of the code
 }