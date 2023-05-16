#!/bin/bash
# reto4.sh
# Author: Roberto Palacios

option=0

while :
do

  echo "-----------------------------------"
  echo "PGUTIL - /\/\/\/\/\/\/\/\ - Process"
  echo "-----------------------------------"
  echo "         Menu Principal            "
  echo "-----------------------------------"
  echo "1. Actual Proccess"
  echo "2. Memory Available"
  echo "3. Hard Disk Free"
  echo "4. Net Information"
  echo "5. Environment Variables Settings"
  echo "6. Program Info"
  echo "7. BackUp Info"
  echo "8. Exit"

  # Enter a option
  read -n1 -p "Enter a Option [1-8]: " option

  case $option in
    1) 
        echo -e "\n Actual Process....."
        htop
        sleep 5
        ;;

    2)
        echo -e "\n Memory Available....."
        free | grep Mem | awk '{print $3/$2 * 100.0}'
        sleep 5
        ;;

    3) 
        echo -e "\n Hard disk free....."
        df -h
        sleep 5
        ;;

    4)
        echo -e "\n Net Information....."
        ifconfig
        sleep 5
        ;;

    5)
        echo -e "\n Environment Variables Settings....."
        printenv | less
        sleep 5
        ;;

    6)
        echo -e "\n Program Info....."
        bash -x reto4.sh
        sleep 5
        ;;

    7) 
        echo -e "\n BackUp Info....."
        tar -czvf  filesBackup.tar.gz *  
        sleep 5
        ;;

    8)
        echo -e "\nExiting....." 
        exit 0
        ;;
  esac
done





