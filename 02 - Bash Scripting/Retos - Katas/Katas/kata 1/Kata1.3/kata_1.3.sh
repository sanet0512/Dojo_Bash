#!/usr/bin/env bash

set -euo pipefail

echo "SHELL  unicos del sistema "

campo_final=$(cut -d: -f7 /etc/passwd | sort -t: -k7 | uniq)

echo -e "Los valores son \n${campo_final}"
