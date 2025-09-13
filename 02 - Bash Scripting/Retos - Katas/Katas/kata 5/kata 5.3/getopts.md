# 🥋 Kata 13 — Top N procesos por CPU/Mem (con `getopts`)

## 🎯 Objetivo

Escribir un script que muestre el **Top N** de procesos, ordenados por **CPU** o **Memoria**, opcionalmente filtrados por **usuario**.

### 📜 Requisitos

- Opciones con `getopts`:
  - `-u <usuario>` → filtra por usuario (por defecto: usuario actual).
  - `-n <N>` → cuántos mostrar (por defecto: 5).
  - `-c` → ordenar por **%CPU** (por defecto si no se especifica `-m`).
  - `-m` → ordenar por **%MEM**.
  - `-h` → mostrar ayuda y salir con código 0.

- Salida en tabla con columnas: **PID | USER | %CPU | %MEM | CMD**.
- Orden **descendente** por la métrica elegida.
- Códigos de salida:
  - `0` ok
  - `1` uso incorrecto / opción inválida
  - `2` usuario inexistente
  - `3` sin resultados

### 💻 Ejemplos de uso

```bash
# Top 5 global por CPU (por defecto)
./kata13.sh

# Top 10 por Memoria para 'sanet'
./kata13.sh -u sanet -m -n 10

# Ayuda
./kata13.sh -h
```

### 🧩 Pistas (sin darte la solución)

- Base de datos de procesos:

  ```bash
  ps -eo pid,comm,user,%cpu,%mem --no-headers
  ```

- Filtrado por usuario (si se usa `-u`):

  ```bash
  awk -v u="$usuario" '$3==u'
  ```

- Orden numérico descendente por columna (CPU es col 4; MEM es col 5):

  ```bash
  sort -k4,4nr     # CPU
  sort -k5,5nr     # MEM
  ```

- Limitar a N:

  ```bash
  head -n "$N"
  ```

- Formateo de tabla:

  ```bash
  printf "%-8s %-12s %6s %6s %s\n" "PID" "USER" "%CPU" "%MEM" "CMD"
  ```

- Validar usuario:

  ```bash
  getent passwd "$usuario" >/dev/null || exit 2
  ```

### ✅ Buenas prácticas a reforzar (según tus fallos previos)

- Shebang/seguridad:

  ```bash
  #!/usr/bin/env bash
  set -euo pipefail
  ```

- `getopts` + `shift "$((OPTIND-1))"` al final del bucle.
- `printf "%s\n"` y **nada de `\n` dentro del argumento**.
- Variables coherentes (sin typos) y **quoting**: `"${var}"`.
- Para evitar que `set -e` te corte antes de imprimir, si llamas funciones que devuelven error: usa `if funcion; then ... else rc=$?; ... fi`.

### 🧠 Pseudocódigo (hazlo tuyo; ejemplo guía 8 pasos)

1. Habilitar modo estricto y valores por defecto: `N=5`, `modo=cpu`, `usuario=$(whoami)`.
2. Parsear opciones con `getopts` (`-h -u -n -c -m`).
3. Si `-h`: imprimir ayuda y `exit 0`.
4. Validar `-n` sea número >0.
5. Si `-u` se pasó: validar usuario con `getent passwd`.
6. Construir flujo: `ps -eo pid,comm,user,%cpu,%mem --no-headers`.
7. Si hay `-u`, filtrar por usuario con `awk`.
8. Elegir `sort` por columna (CPU=4 o MEM=5), `head -n N`, `printf` columnas; si no hay líneas, mensaje “sin resultados” y `exit 3`.

### 🧪 Criterios de aceptación (pruébalo así)

- `./kata13.sh -h` → muestra ayuda (exit 0).
- `./kata13.sh` → imprime top 5 global por CPU (exit 0).
- `./kata13.sh -m -n 8` → top 8 por memoria (exit 0).
- `./kata13.sh -u noexiste` → “usuario no existe” (exit 2).
- `./kata13.sh -u root -n 3` → tres filas con root (exit 0 o 3 si no hay).
- `./kata13.sh -n foo` → uso incorrecto (exit 1).

---

### Próximo paso

1. Dedica **5–10 min** a investigar `ps`, `sort -k`, y practica tu **pseudocódigo** (escríbelo aquí).
2. Implementa tu script y lo revisamos (no daré solución completa hasta 2 intentos).
