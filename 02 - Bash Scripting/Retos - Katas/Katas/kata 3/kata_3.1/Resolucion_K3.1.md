# 🥋 Kata 6 — Verificar si un archivo existe

Me estan pidiendo que cree un script que reciba una ruta **/../../**
y verifique si existe y si es un archivo regular.

1. recibir una ruta como argumento ($1)

que son los argumetos :

En Bash, cuando ejecutas un script y le pasas cosas al final, cada palabra que escribes después del nombre del script se guarda como un "ingrediente numerado":

```bash
./mi_script.sh pan queso tomate

```

Esto significa:

- $1 → pan

- $2 → queso

- $3 → tomate

Es como si bash dijera:

“¡Ah! Me diste tres cosas: el primero lo llamo $1, el segundo $2... así puedo usarlos dentro del script sin confundirme.”

2. Verificar si el archivo existe.

suponiendo que con la peticion de arriba nos piden un argumento, podemos decir que este sera una ruta de archivo. puede (`./script.sh /etc/passwd`).

-para verificar que el argumento es valido o el archivo expiste, podemos usar una condicional.

puede ser algo sencillo como :

```bash
#!/bin/bash

if [ -f "$1" ]; then
    echo "✅ El archivo '$1' sí existe."
else
    echo "❌ El archivo '$1' no existe."
fi

```

📌 ¿Qué significa [ -f "$1" ]?

- `-f` ⇒ comprueba si existe y además es un archivo regular (no una carpeta, por ejemplo).

- `"$1"` ⇒ representa el primer argumento que tú pasas al script (la posible ruta).

🧠 Otros test de existencia útiles

| Prueba       | Significado                                 |
| ------------ | ------------------------------------------- |
| `-f archivo` | ¿Existe **y es un archivo regular**?        |
| `-d archivo` | ¿Existe **y es un directorio**?             |
| `-e archivo` | ¿Existe (sea archivo, directorio o enlace)? |

3. Verificar si es un archivo o directorio esto lo haremos con el condicional
4. Imprimir el mensajes correcto

hagamos el script.

```bash

#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ]; then
  echo "❗️Uso: $0 <ruta-del-archivo>"
  exit 1
fi

ruta="$1"

if [ -e "$ruta" ]; then
  echo "✔️ Existe: '$ruta'"

  if [ -f "$ruta" ]; then
    echo "📄 Es un archivo regular."
  elif [ -d "$ruta" ]; then
    echo "📁 Es un directorio."
  else
    echo "📦 Existe, pero no es archivo ni directorio regular."
  fi
else
  echo "❌ No existe: '$ruta'"
fi
```
