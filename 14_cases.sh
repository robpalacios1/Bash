#!/bin/bash
# 14_cases.sh
# Author: Roberto Palacios

option=""

echo "Sentence Case Example"
read -p "Enter a option between A - Z: " option
echo -e "\n"

case $option in 
  "A") echo -e "\nOperation Save File";;
  "B") echo "Operation Remove File";;
  [C-E]) echo "The Operation is not implemented";;
  "*") echo "Option is incorrect"
esac