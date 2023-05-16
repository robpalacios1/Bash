# !/bin/bash
# programa para declarar variables, inicializarlas e imprimir valores
# Author: Roberto Palacios


echo -e "\nCreate File..."
touch log.txt

echo "Registering login..."
user=$USER

date=$(date +%Y-%m-%d__%H:%M:%S)

echo "$user/$date" >> log.txt
sleep 2

echo -e "Login registered\n"
cat log.txt