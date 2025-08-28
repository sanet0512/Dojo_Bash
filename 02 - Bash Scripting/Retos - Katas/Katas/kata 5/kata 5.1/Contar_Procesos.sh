#!/usr/bin/env bash

set -euo pipefail

printf "%-20s %s\n" "Usarios" "Procesor"
ps -eo user= | sort | uniq -c | sort -nr | awk '{printf"%-20s %s\n", $2, $1'}
