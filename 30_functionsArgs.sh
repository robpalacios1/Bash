# !/bin/bash
# 30_functionsArgs.sh
# Author: Roberto Palacios

option=0

#function to install postgres
install_postgress () {
  echo "Install Postgress..."
}

#function to uninstall postgres
uninstall_postgress () {
  echo "Uninstall Postgress..."
}

#function to make a backup
make_backup () {
  echo "make Backup..."
  echo "Folder Backup: $1"
}

#function to restauring a backup
restauring_backup () {
  echo "Restauring Backup..."
  echo "Folder Backup: $1"
}


while :
do
  #Clean Screen
  clear
  
  #Deploy the Menu
  echo "________________________________"
  echo "PGUTIL - Utils Postgress Program"
  echo "         MENU PRINCIPAL         "
  echo "________________________________"
  echo "1. Install Postgres"
  echo "2. Uninstall Postgres"
  echo "3. Make Backup"
  echo "4. Restauring Backup"
  echo "5. Exit"

  #read data from user
  read -p "Enter a Option [1-5]: " option

  #Validate the input
  case $option in
    1)
        install_postgress
        sleep 3
        ;;
    2)
        uninstall_postgress
        sleep 3
        ;;
    3)
        read -p "Backup Dir: " dirBackup
        make_backup $dirBackup
        sleep 3
        ;;
    4)
        read -p "Backup Dir copy: " backupDirCopy
        restauring_backup $backupDirCopy
        sleep 3
        ;;
    5)
        echo "Exit"
        exit 0
        ;;
  esac
done