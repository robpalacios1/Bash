#!/bin/bash
# 21_archivosDirectorios.sh
# Author: Roberto Palacios

echo "Files - Dir"

if [ $1 == "d" ]; then
  mkdir -m 755 $2
  echo "Directory created Succesfully"
  ls -la $2
elif [ $1 == "f" ]; then
  touch $2
  echo "File created Succesfully"
  ls -la $2
else
  echo "The option is not exists: " $1
fi