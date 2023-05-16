#!/bin/bash
# 20_menuOpciones.sh
# Author: Roberto Palacios

option=0

while :
do
  #Clean screen
  clear
  #Deploy Menu Options
  echo "-----------------------------------"
  echo "PGUTIL - Utils program for Postgres"
  echo "-----------------------------------"
  echo "         Menu Principal            "
  echo "-----------------------------------"
  echo "1. Install Postgres"
  echo "2. Unistall Postgres"
  echo "3. Make a BackUp"
  echo "4. Restauring a BackUp"
  echo "5. Exit"

  # Read Data from user
  read -n1 -p "Enter a option [1-5]: " option

  #validate the option input
  case $option in
    1)
        echo -e "\nInstall Postgres....."
        sleep 2
        ;;
    2)
        echo -e "\nUninstall Postgres....."
        sleep 2
        ;;
    3) 
        echo -e "\nMake a BackUp....."
        sleep 2
        ;;
    4)
        echo -e "\nRestauring a BackUp....."
        sleep 2
        ;;
    5) echo -e "\nExiting....."
        exit 0
        ;;
  esac
done
