# Proceso del script `getopts.sh`

Este script audita usuarios y permisos del sistema. Permite validar rutas y obtener
información relevante del archivo `/etc/passwd`.

## 1. Configuración inicial
- `#!/usr/bin/env bash` define que el script se ejecutará con Bash.
- `set -euo pipefail` provoca que el script termine ante errores, variables no definidas
o errores en tuberías.
- Comentarios iniciales documentan autor, fecha y propósito.

## 2. Función `Validar`
- Recibe una ruta como argumento.
- Verifica que la ruta no esté vacía. Si lo está, muestra un error y devuelve `1`.
- Comprueba si la ruta existe y si es:
  - un archivo (`-f`),
  - un directorio (`-d`),
  - otro tipo de objeto (`-e`).
- Si no existe, informa y devuelve `2`.

## 3. Función `ayuda`
- Imprime la sintaxis y las opciones del script.
- Termina su ejecución con `exit 0`.

## 4. Análisis de opciones con `getopts`
- Se inicializa la variable `banderas` en `0`.
- `while getopts "husp:" opt` recorre las opciones recibidas:
  - `-h`: llama a `ayuda` y muestra un mensaje de ayuda.
  - `-p <ruta>`: ejecuta `Validar` con la ruta indicada y reporta el resultado.
  - `-u`: lista usuarios con UID >= 1000 que usan `/bin/bash`.
  - `-s`: muestra las cinco shells más usadas en el sistema.
  - opción inválida (`?`): notifica un mensaje de error.
- Tras procesar las opciones, `shift "$((OPTIND - 1))"` elimina las banderas de la lista de argumentos.

## 5. Comportamiento por defecto
- Si no se proporcionó ninguna bandera (`banderas` sigue en `0`):
  - Comprueba que exista `/etc/passwd`.
  - Calcula y muestra:
    - Total de usuarios registrados.
    - Cuántos usan `/bin/bash`.
    - Número de shells distintas presentes.
    - Usuarios con UID > 1000.
    - Las cinco shells más utilizadas.
  - Toda la información se presenta con `printf` para mantener un formato alineado.
  - El script finaliza con `exit 1`.

Este flujo permite auditar de manera flexible el estado de usuarios y shells en el sistema.
