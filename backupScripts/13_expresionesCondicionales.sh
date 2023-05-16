#!/bin/bash
# Expresiones Condicionales
# Author: Roberto Palacios

age=0
country=""
pathFile=""

read -p "Enter Age: " age
read -p "Enter Country: " country
read -p "Enter Path of your file: " pathFile

echo -e "\nConditional Expression with numbers"
if [ $age -lt 10 ]; then
  echo "the person is a child"
elif [ $age -ge 10 ] && [ $age -le 17 ]; then
  echo "the person is a teenager"
else
  echo "the person is adult"
fi

echo -e "\nConditional Expression with chain"
if [ $country == "USA" ]; then
  echo "the person is from North America"
elif [ $country == "Ecuador" ] && [ $country == "Colombia" ]; then
  echo "the person is from South America"
else
  echo "the nacionality is unknown"
fi

echo -e "\nConditional Expression with files"
if [ -d pathFile ]; then
  echo "the path: $pathFile exist"
else  
  echo "the path: $pathFile is not exist"
fi
