# !/bin/bash
# read
# Autor: Roberto Palacios

option=0
backupName=""
clave=""

echo "Programa utilidades Postgres"
#Acepta el ingreso de informacion de un caracter
read -p "ingresar una opcion: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo Backup: " backupName
echo -e "\n"
echo "Opcion: $option, backupName: $backupName"
read -s -p "Clave: " clave
echo "Clave: $clave"