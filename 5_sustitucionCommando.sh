# !/bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y alamcenar en una variable para su posterior utilizacion
# Autor: Roberto Palacios

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicacion actual es la siguiente: $ubicacionActual"
echo "Informacion del Kernel: $(uname -a)"