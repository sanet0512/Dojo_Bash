#!/usr/bin/env bash

set -euo pipefail

echo "Conteo de usuarios"

echo " INICIO "

conteo=$(grep -c '/bin/bash$' /etc/passwd)

echo "el numero de usuarios es : $conteo "
