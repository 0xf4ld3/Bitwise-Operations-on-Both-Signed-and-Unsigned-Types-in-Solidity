//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract example{

    //Bitwise AND operator on type  ---->  signed 
    function example1(int8 a, int8 b) external pure returns(int8){
        return a & b;
    }

    //Bitwise AND operator on type  -----> unsigned 
    function example2(uint8 a, uint8 b) external pure returns(uint8){
        return a & b;
    }

    //Bitwise OR operator on type  ---->  signed 
    function example3(int8 x, int8 y) external pure returns(int8){
        return x | y;
    }

    //Bitwise OR operator on type  ---->  unsigned 
    function example4(uint8 a, uint8 b) external pure returns(uint8){
        return a | b;
    }

    /*
     * Bitwise XOR (Exclusive OR) operator on type  ---->  signed 
     *
     * NOTE: Incase both a and b have the same sign (either positive or negative), it will always return a positive value.
     *       Incasee both a and b don't have the same sign (one is positive and the other one negative), it will alwayss return a negative value. 
     */

    function example5(int8 a, int8 b) external pure returns(int8){
        return a ^ b;
    }

    //Bitwise XOR (Exclusive OR) operator on type  ---->  unsigned 
    function example6(uint8 a, uint8 b) external pure returns(uint8){
        return a ^ b;
    }

    /*
     * Bitwise NOT operator on type  ---->  signed
     *
     * Bit operations in the case of signed type, are performed on the one's complement representation BUT the sign is interchanged meaning
     * when you perform a Bitwise NOT to a positive signed type eg ~int8(1) :-
     *  
     *     STEP 1) Do a One's compliment on its binary form   00000001  ----->  11111110
     *     STEP 2) Interchange signs. (positive to negative) ie. give the most significant bit the negative carrier  11111110  --->  (-1)1111110  which is equivalent to -2
     *   
     *     NOTE: Steps 1 and 2 are true while performing a Bitwise NOT to a negatively signed type  
     */

    function example7(int8 a) external pure returns(int8){
        return ~a;
    }

    /*
     * Bitwise NOT operator on type  ---->  unsigned 
     * Bit operations are performed on the ones’s complement representation in the case of unsigned type ie. flip the bits. 
     */

    function example8(uint8 a) external pure returns(uint8){
        return ~a;
    }

    /*
     * Bitwise RIGHT SHIFT operator on type  ---->  signed 
     * NOTE: Trying to shift by a signed type will produce a compilation error hence the right operand (number of bits to be shifted eg uint8 b) MUST always be of unsigned type.
     */                    
    function example9(int8 a, uint8 b) public  pure returns(int8){

        return a >> b; // can change to < return a << b >  for LEFT SHIFT operator
    }

    //Bitwise RIGHT SHIFT operator on type  ---->  unsigned 
    function example10(uint8 a, uint8 b) external pure returns(uint8){

        return a >> b; // can change to < return a << b >  for LEFT SHIFT operator
    }

}
