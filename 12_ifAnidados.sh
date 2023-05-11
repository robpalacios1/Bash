#!/bin/bash
# 12_ifAnidados.sh
# Author: Roberto Palacios

nota=0
continua=""

echo "Ejemplo Sentencia if-else"
read -n1 -p "Indique cual es su nota (1-10): " nota
echo -e "\n"
if [ $nota -ge 7 ]; then
  echo "El alumno aprueba la materia con una calificacion de: $nota"
  read -p "va a seguir estudiando con nosotros? (s/n)" continua
  if [ $continua == "s" ]; then
    echo "Bienvenido al siguiente nivel de estudio"
  else
    echo "Gracias por estudiar con nosotros"
  fi
else
  echo "el alumno no aprobo la materia porque saco una calificacion menor a: $nota"
fi
