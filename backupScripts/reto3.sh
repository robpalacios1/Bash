#!/bin/bash
# reto_3
# Author: Roberto Palacios

numReg='^[1-5]{1}$'

read -p "selecciona un numero del 1 al 5: " num

if [[ $num =~ $numReg ]]; then
  if [ $num -eq 1 ]; then
    echo "elegiste la opcion: $num"
  elif [ $num -eq 2 ]; then
    echo "elegiste la opcion: $num"
  elif [ $num -eq 3 ]; then
    echo "elegiste la opcion: $num"
  elif [ $num -eq 4 ]; then
    echo "elegiste la opcion: $num"
  elif [ $num -eq 5 ]; then
    echo "elegiste la opcion: $num"
fi
  else
    echo "elegiste la opcion: $num, y esta fuera del rango de numeros"
fi