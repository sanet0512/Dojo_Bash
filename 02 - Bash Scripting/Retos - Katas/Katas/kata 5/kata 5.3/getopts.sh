#!/usr/bin/env bash

set -euo pipefail

if [[ $# -eq 0 ]]; then

  #entonces pasamos al predeterminado 
fi

user="$1"

if getent passwd -- "$user" > /dev/null 2>$1; then
