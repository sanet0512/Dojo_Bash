# _Resolucion de Kata1.3_

debemos extraer la septima columna del archivo. `/etc/passwd`
y mostrar una sola vez por cada valor diferente.
nos indican las herramientas puede ser `cut` `sort` `uniq`

probemos con uniq y sort ya que piden mostrar una sola vez
por cada valor diferente.

debemos usar cut para solo mostrar la ultima columna o en este caso la 7. seguido de sort que ordenara en orden,
usar uniq que eliminara duplicados, pero
uniq solo elimina duplicados si son consecutivos,
por eso se necesita sort.

entonces:

```bash
#!/usr/bin/env bash

set -euo pipefail

echo "shells  unicos del sistema "

campo_final=$(cut -d: -f7 /etc/passwd | sort -t: -k7 | uniq)

echo -e "Los valores son \n${campo_final}"

```
