#!/usr/bin/env bash

set -euo pipefail

if [ $# -eq 0 ]; then
  echo "No se proporcionó ningún argumento."
  exit 1
fi

argumento="$1"

if [ -e "$argumento" ]; then
  echo "el '$argumento' existe"
  if [ -f "argumento" ]; then
    echo "el '$argumento' es un archivo 󱁺 "
  elif [ -d "$argumento" ]; then
    echo "el '$argumento' es un directorio 📁 "
  else
    echo "el '$argumento' es otro tipo de elementos 󱪜 󱪜 "
  fi

  permisos=0

  if [ -r "$argumento" ]; then
    echo "el '$argumento' se puede leer 󰑇 "
    permisos=1
  fi
  if [ -w "$argumento" ]; then
    echo "el '$argumento' se puede escribir o modificar 󰼭 "
    permisos=1
  fi
  if [ -x "$argumento" ]; then
    echo "el '$argumento' se puede ejecutar 󰑓"
    permisos=1
  fi
  if [ $permisos -eq 0 ]; then
    echo "el archivo '$argumento' no tiene permisos 🛑 "
  fi
else
  echo "'$argumento' no existe ❌ "
fi
