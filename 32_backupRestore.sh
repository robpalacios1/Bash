# !/bin/bash
# 32_backupRestore.sh
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
    read -s -p "Enter the password for Postgres: " passwordPostgres
    echo "$password" | sudo -S apt update
    echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
    sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}';"
    echo "$password" | sudo -S systemctl enable postgresql.service
    echo "$password" | sudo -S systemctl start postgresql.service
  fi
  read -n 1 -s -r -p "Press [ENTER] to Continue..."
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
  read -n 1 -s -r -p "Press [ENTER] to Continue..."
}

#function to make a backup
make_backup () {
  echo "Listing DataBase"
  sudo -u postgres psql -c "\l"
  read -p "Choose a DATABASE to make backup: " dbBackup
  echo -e "\n"
  if [ -d "$1" ]; then
    echo "Establish directory permission"
    echo "$password" | sudo -S chmod 755 $1
    echo "making backup"
    sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/dbBackup$currentDate.bak"
    echo "Backup done satifactory:$1/dbBackup$currentDate.bak"
  else
    echo "The directory $1 not exist"
  fi
  read -n 1 -s -r -p "Press [ENTER] to Continue..."
}

#function to restauring a backup
restauring_backup () {
  echo "Listing backups"
  ls -1 $1/*bak
  read -p "Choose the backup to restauring: " backupRestauring
  echo -e "\n"
  read -e "Enter the DATABASE name target: " dbTarget 
  #verify if database exist
  verifyDb=$(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $dbTarget)
  if [ $? -eq  0 ]; then
    echo "Restauring DATABASE TARGET: " $dbTarget
  else
    sudo -u postgres psql -c "Create DataBase $dbTarget"
  fi

  if [ -f "$1/backupRestauring" ]; then
    echo "Restauring backup..."
    sudo -u postgres pg_restore -Fc -d $dbtarget "$1/$backupRestauring"
    echo "Listing the database"
    sudo -u postgres psql -c "\l"
    else
        echo "El respaldo $backupRestauring no existe"
    fi    
    read -n 1 -s -r -p "Press [ENTER] to Continue..."
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