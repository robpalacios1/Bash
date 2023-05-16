#!/bin/bash
# if, else
# Author: Roberto Palacios

edad=0

echo "Ejemplo Sentencia If/Else"
read -p "Indica cual es la edad: " edad
if [ $edad -le 18 ]; then
  echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
  echo "la persona es adulta"
else  
  echo "la persona es adulta mayor"
fi
