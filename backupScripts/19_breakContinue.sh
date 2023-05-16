#!/bin/bash
# 18_loopsAnidados.sh
# Author: Roberto Palacios

echo "Sentencias breack and continue"

for file in $(ls)
do
  for name in {1..4}
  do
    if [ $file == "10_download.sh" ]; then
      break;
    elif [[ $file == 4* ]]; then
      continue;
    else
      echo "File Name: $file _ $name"
    fi
  done
done
