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
if grep -q "ya valiste" "$archivo"; then
  echo "Se encontró la palabra 'ya valiste'. FALLO."
  exit 1
elif grep -q "ya wey" "$archivo"; then
  echo "Se encontró la palabra 'ya wey'. Éxito."
  exit 0
else
  echo "No se encontraron las palabras clave. FALLO."
  exit 1
fi
