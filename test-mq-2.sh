#!/bin/bash

# Verificar si se proporcionó un archivo como argumento
if [ -z "$1" ]; then
  echo "Error: No se proporcionó un archivo para buscar."
  exit 1
fi

archivo="$1"

#Retraso de 15 segundo
echo "esperando 15 segundos..."
sleep 15

# Lógica de prueba simulada
if grep -q "ya" "$archivo" && grep -q "wey" "$archivo"; then
  echo "Se encontraron las palabras 'ya' y 'wey'. FALLO."
  exit 1
else
  echo "No se encontraron las palabras 'ya' y 'wey'. Éxito."
  exit 0
fi
