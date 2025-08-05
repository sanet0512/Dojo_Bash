# \*\*Resolucion de la Kata -1-

hay que escribir un script
donde tendremos que leer un archivo buscar y contar

buscamos el archivo `passwd` principalmente ubicado en `/etc/passwd`

dentro de el vamos a buscar a los usuarios que usen `/bin/bash`.

nos piden solo extraer sus nombres.

##  **script**

```bash
#!/usr/bin/env bash

set -eo pipefail

echo "Buscar usarios que usen bash como SHELL"

echo " INICIO "

grep '/bin/bash$' /etc/passwd | cut -d: -f1

```
