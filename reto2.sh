#!/bin/bash

# Solicitar información personal
read -p "Ingrese su nombre completo: " nombre
read -p "Ingrese su edad: " edad
read -p "Ingrese su dirección: " direccion
read -p "Ingrese su número telefónico: " telefono

# Validar nombre completo
if ! [[ $nombre =~ ^[a-zA-Z]+\s[a-zA-Z]+$ ]]; then
  echo "Error: El nombre ingresado es inválido"
  exit 1
fi

# Validar edad
if ! [[ $edad =~ ^[0-9]+$ ]]; then
  echo "Error: La edad ingresada es inválida"
  exit 1
fi

# Validar dirección
if ! [[ $direccion =~ ^[a-zA-Z0-9\s#-]+$ ]]; then
  echo "Error: La dirección ingresada es inválida"
  exit 1
fi

# Validar número telefónico
if ! [[ $telefono =~ ^[0-9]{10}$ ]]; then
  echo "Error: El número telefónico ingresado es inválido"
  exit 1
fi

# Imprimir información personal
echo "Nombre: $nombre"
echo "Edad: $edad"
echo "Dirección: $direccion"
echo "Número telefónico: $telefono"