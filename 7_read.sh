# !/bin/bash
# read
# Autor: Roberto Palacios

option=0
backupName=""

echo "Programa utilidades Postgres"
read -p "ingresar una opcion: " option
read -p "Ingresar el nombre del archivo Backup: " backupName
echo "Opcion: $option, backupName: $backupName"