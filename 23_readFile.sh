#!/bin/bash
# 23_readFile.sh
# Author: Roberto Palacios

echo "Read a File"
cat $1
echo -e "\n Save the values in a variable"
valueCat=`cat $1`
echo "$valueCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco al inicio al final se recortan
echo -e "\n Read files line by line using while loop"
while IFS= read line
do
  echo "$line"
done < $1