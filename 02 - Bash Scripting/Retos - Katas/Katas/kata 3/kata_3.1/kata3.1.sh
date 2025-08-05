#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -lt 1 ]; then
  echo "❗️añadir ruta de archivo a comprobar: $0 <ruta-del-archivo>"
  exit 1
fi

ruta="$1"

if [ -e "$ruta" ]; then
  echo "'$ruta' archivo ✅existe "

  if [ -f "$ruta" ]; then
    echo "'$ruta' Es un 󰈔 archivo"
  elif [ -d "$ruta" ]; then
    echo "'$ruta' es un  📁 directorio"
  fi
else
  echo "'$ruta' no existe ❌ "
fi
