#!/usr/bin/env bash

set -eo pipefail

echo "Buscar usarios que usen bash como SHELL"

echo " INICIO "

grep '/bin/bash$' /etc/passwd | cut -d: -f1
