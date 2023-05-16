#!/bin/bash
# 16_forLoops.sh
# Author: Roberto Palacios

arrayNumbers=(1 2 3 4 5 6)

echo -e "\n*---Iteration list of numbers---*"
for num in ${arrayNumbers[*]}
do
  echo "Number: $num"
done

echo -e "\n*---Iteration list of chain---*"
for name in "Pedro" "Juan" "Maria"
do
  echo "Names: $name"
done

echo -e "\n*---Iteraration on Files---*"
for file in *
do
  echo "File Name: $file"
done

echo -e "\n*---Iteration using a command---*"
for file in $(ls)
do  
  echo "File name: file"
done

echo -e "\n*---Iteration using the Traditional way---*"
for ((i=1; i<10; i++))
do
  echo "Numbers: $i"
done