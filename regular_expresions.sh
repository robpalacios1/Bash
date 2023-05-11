#!/bin/bash
# Regular Expresion in bash
# Author Roberto Palacios

idRegex='^[0-9]{10}$'
countryRegex='^EC|COL|US$'
birthdayRegex='^\d{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])'

echo "\n----Regular Expresion----\n"
read -p "Enter a valid ID: " id
read -p "Enter Country Initials [EC, COL, US]: " country
read -p "Enter Birthday in this format [yyyy:MM:dd]: " birthday

# ID Validation
if [[ $id =~ $idRegex ]]; then
  echo "The ID is: $id valid"
else
  echo "The ID is: $id not valid"
fi


# Country Validation
if [[ $country =~ countryRegex ]]; then
  echo "The Country: $country is valid"
else
  echo "The Country: $country is not valid"
fi


#Birthday Validation
if [[ $birthday =~ birthdayRegex ]]; then
  echo "The Birtday: $birthday is valid"
else
  echo "The Birtday: $birthday is not valid"
fi
