#!/bin/bash
# 15_arreglos
# Author: Roberto Palacios

arrayNumbers=(1, 2, 3, 4, 5, 6)
arrayChain=(Marco, Antonio, Pedro, Susana)
arrayRange=({A..Z} {10..20})

#print all values
echo "Array Numbers: ${arrayNumbers[*]}"
echo "Array Chain: ${arrayChain[*]}"
echo "Array Range: ${arrayRange[*]}"

#print sizes of the arrays
echo "Size Array Numbers: ${#arrayNumbers[*]}"
echo "Size Array Chain: ${#arrayChain[*]}"
echo "Size Array Range: ${#arrayRange[*]}"

#print the position number 3 of the array
echo "Array Numbers: ${arrayNumbers[3]}"
echo "Array Chain: ${arrayChain[3]}"
echo "Array Range: ${arrayRange[3]}"

#Add and remove values in array
arrayNumbers[7]=20
unset arrayNumber[0]
echo "Array Numbers: ${arrayNumbers[*]}"
echo "Array Numbers: ${#arrayNumbers[*]}"