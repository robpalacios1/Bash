# !/bin/bash
# 29_packageSSH.sh
# Author: Roberto Palacios

echo "zip all scripts from Bash_scripting folder and transfers by the net to another machine using rsync command"

host=""
user=""

read -p "Enter the Host: " host 
read -p "Enter the user: " user

echo -e "\nAt this time it will proceed to zip the folder and transfer according to input data"
rsync -avz $(pwd) $user@$host:/home/robpalacios