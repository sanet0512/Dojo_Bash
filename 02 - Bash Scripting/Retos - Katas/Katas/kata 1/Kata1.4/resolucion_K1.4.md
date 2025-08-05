# **🥋 Kata 4 — Extraer el UID de cada usuario**

Nos piden una lista con los nombres de usuario y su (UID) del archivo `/etc/passwd`.

los pasos serian :

abrir el archivo leer, buscar, y clasificar y ordenar

que quiero decir con esto
vamos a crear un script
donde donde usaremos cut para separar por columnas y que nos muestre lo que queremos ver o necesitamos.

```bash
#!/usr/bin/env bash

set -euo pipefail

printf "lista : \nuser    UID \n"

cut -d: -f1,3 /etc/passwd | sort

```
