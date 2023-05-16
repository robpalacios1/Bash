#!/bin/bash
# 17_WhileLoops.sh
# Author: Roberto Palacios

num=1

while [ $num -le 10 ]
do
  echo "Printing $num times"
  num=$(($num + 1))
done