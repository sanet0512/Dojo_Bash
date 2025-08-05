# _Resolucion De la Kata 1.2_

a diferencia de mostrar los usuarios que usen `/bin/bash`

ahora vamos a contarlos

```text

la estructura seria la misma buscamos el archivo `/etc/passwd`
leemos y buscamos a todos los usuarios que usen `/bin/bash`
pero ahora, tambien los vamos a contar

```

```bash
#!/usr/bin/env bash

set -euo pipefail

echo "Conteo de usuarios"

echo " INICIO "

conteo=$(grep -c '/bin/bash$' /etc/passwd )

echo "el numero de usuarios es : $conteo "
```
