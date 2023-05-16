# !/bin/bash
# 30_functionsArgs.sh
# Author: Roberto Palacios

option=0

#function to install postgres
install_postgress () {
  echo -e "\nVerify Postgres Installation .... "
  verifyInstall=$(which psql)
  if [ $? -eq 0 ]; then
    echo -e "\n Postgres is installed"
  else
    read -s -p "Enter Sudo Password: " password
    read -s -p "Enter the password for Postgres " passwordPostgres
    echo "$password" | sudo -S apt update
    echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
    sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}';"
    echo "$password" | sudo -S systemctl enable postgresql.service
    echo "$password" | sudo -S systemctl start postgresql.service
  fi
  read -n 1 -s -r -p "Press [ENTER] to Continue"
}

#function to uninstall postgres
uninstall_postgress () {
  read -s -p "Enter Sudo Pasword: " password
  echo -e "\n"
  echo "$password" | sudo -S systemctl stop postgresql.service
  echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
  echo "$password" | sudo -S rm -r /etc/postgresql
  echo "$password" | sudo -S rm -r /etc/postgresql-common
  echo "$password" | sudo -S rm -r /var/lib/postgresql
  echo "$password" | sudo -S userdel -r postgres
  echo "$password" | sudo -S groupdel postgresql
  read -n 1 -s -r -p "Press [ENTER] to Continue"
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
        sleep 10
        ;;
    2)
        uninstall_postgress
        sleep 10
        ;;
    3)
        read -p "Backup Dir: " dirBackup
        make_backup $dirBackup
        sleep 10
        ;;
    4)
        read -p "Backup Dir copy: " backupDirCopy
        restauring_backup $backupDirCopy
        sleep 10
        ;;
    5)
        echo "Exit"
        exit 0
        ;;
  esac
done