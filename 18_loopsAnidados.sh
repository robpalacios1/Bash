#!/bin/bash
# 18_loopsAnidados.sh
# Author: Roberto Palacios

echo "loops Anidados"
for file in $(ls)
do  
  for name in {1..4}
  do  
    echo "File Name: $file _ $name"
  done
done