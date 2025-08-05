#!/usr/bin/env bash

set -euo pipefail

printf "lista : \nuser    UID \n"

cut -d: -f1,3 /etc/passwd | sort
