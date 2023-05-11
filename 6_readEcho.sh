# !/bin/bash
# echo, read and $REPLY
# Autor: Roberto Palacios

option=0
backupName=""

echo "Programa utilidades Postgres"
echo -n "ingresar una opcion: "
read
option=$REPLY
echo -n "Ingresar el nombre del archivo Backup: "
read
backupName=$REPLY
echo "Opcion: $option, backupName: $backupName"