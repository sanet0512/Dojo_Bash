#!/usr/bin/env bash

set -euo pipefail

# Proyecto 1 - Auditor de Usuarios y Permisos.
# Autor: Usr
# Fecha: 13/08/2025
# Descripcion.
#

Validar() {

  local ruta="$1"

  if [[ -z "$ruta" ]]; then
    echo -e "Error: No se proporcionó ninguna ruta para validar \n"
    return 1
  fi

  if [[ -f "$ruta" ]]; then
    printf "%s\n" "La ruta existe y es un archivo."
  elif [[ -d "$ruta" ]]; then
    printf "%s\n" "La ruta existe y es un directorio."
  elif [[ -e "$ruta" ]]; then
    printf "%s\n" "La ruta existe pero no es archivo ni directorio (p. ej., enlace, FIFO, dispositivo)."
  else
    printf "%s\n" "La ruta no existe o no es válida."
    return 2
  fi
}
ayuda() {

  echo "Uso: $0 [opciones]"
  echo "Opciones:"
  echo "  -h          Mostrar ayuda"
  echo "  -p <ruta>   Validar ruta de archivo/directorio"
  echo "  -u          Usuarios con UID>=1000 y bash"
  echo "  -s          Shells más usadas"
  echo ""
  echo "Ejemplo: $0 -p /etc/passwd"
  exit 0
}
banderas=0
while getopts "husp:" opt; do
  banderas=1
  case $opt in

  h)
    printf "ayuda del script"
    ayuda
    ;;

  p)
    Validar "$OPTARG"
    resultado=$?
    if [[ $resultado -eq 0 ]]; then
      echo "Validación exitosa para: $OPTARG"
    else
      echo "Falló la validación para: $OPTARG"
      exit 1
    fi
    printf "validacion de ruta, $OPTARG"
    ;;
  u)
    printf "%-15s %s\n" "Usuario" "UID"
    awk -F: '($3>=1000)&&($7=="/bin/bash"){printf "%-15s %s\n",$1,$3}' /etc/passwd
    ;;
  s)
    awk -F: '{print $7}' /etc/passwd | sort | uniq -c | sort -nr | head -5
    ;;
  \?) printf "Opcion invalida " ;;
  esac
done

shift "$((OPTIND - 1))"

if [[ $banderas -eq 0 ]]; then

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
    printf "%-30s %10s\n" "shells unicas usados" "$shell"
    printf "%-30s %10s\n" "UID USR" "$uid"
    printf "%-30s\n" "Top 5 shells mas usadas "
    printf "%-30s\n" "$top"

    exit 1

  fi
fi
