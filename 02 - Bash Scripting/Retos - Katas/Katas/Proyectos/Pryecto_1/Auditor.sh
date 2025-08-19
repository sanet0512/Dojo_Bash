#!/usr/bin/env bash

set -euo pipefail

# Proyecto 1 - Auditor de Usuarios y Permisos.
# Autor: Usr
# Fecha: 13/08/2025
# Descripcion.
#
ayuda=false
ruta=false

if [[ -e /etc/passwd ]]; then

  usuarios=$(cut -d: -f1 /etc/passwd | wc -l)
  bash=$(grep '/bin/bash' /etc/passwd | wc -l)
  shell=$(grep -v '/bin/bash' /etc/passwd | cut -d: -f7 | sort | wc -l)
  top=$(grep -v '/bin/bash' /etc/passwd | cut -d: -f7 | sort | uniq -c | sort -nr | head -n 5)
  uidd=$(awk -F':' '$3 > 1000 && $7 == "/bin/bash"' /etc/passwd)
  uid=$(awk -F':' '$3 > 1000 ' /etc/passwd)

  printf "%-30s\n" "📊 Informe de usuarios en /etc/passwd"
  printf "%-30s\n" "-------------------------------------"
  printf "%-30s %10s\n" "Total de usuarios:" "$usuarios"
  printf "%-30s %10s\n" "/bin/bash:" "$bash"
  printf "%-30s %10s\n" "shells unicos usados" "$shell"
  printf "%-30s %10s\n" "UID USR" "$uid"
  printf "%-30s\n" "Top 5 shells mas usadas "
  printf "%-30s\n" "$top"

  exit 1

fi
