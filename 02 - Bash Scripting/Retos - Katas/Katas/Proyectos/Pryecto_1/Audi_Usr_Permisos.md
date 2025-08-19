# 🏆 **Proyecto 1 — Auditor de Usuarios y Permisos**

**Objetivo:**
Crear un script Bash que analice el archivo `/etc/passwd` y muestre un **informe detallado** de usuarios, shells y permisos, además de validar rutas opcionales.

---

## 📜 Requisitos obligatorios

1. **Argumentos opcionales**
   - Si se ejecuta sin argumentos → analizar `/etc/passwd`
   - Si se pasa un archivo distinto como argumento → analizar ese archivo (debe existir y ser legible)

2. **Información a mostrar**
   - Total de usuarios en el archivo
   - Total de usuarios con `/bin/bash` como shell
   - Lista de shells únicos usados
   - Lista de usuarios con UID ≥ 1000
   - Top 5 shells más usados (orden descendente)

3. **Opciones (flags)**
   - `-h` → mostrar ayuda del script
   - `-p <ruta>` → validar si la ruta existe, es archivo o directorio, y permisos de lectura/escritura
   - `-u` → mostrar solo usuarios con UID ≥ 1000 y shell `/bin/bash`
   - `-s` → mostrar resumen de shells usados

4. **Formato de salida**
   - Encabezados claros
   - Datos alineados (`printf "%-20s %s\n" ...`)
   - Uso de iconos opcionales (📄, 📁, 🟢, 🔴)
   - Separadores visuales (`-----------------`)

---

## 🧠 Conceptos que aplicarás

- `#!/usr/bin/env bash` + `set -euo pipefail`
- Lectura y validación de argumentos (`$#`, `"$@"`, `getopts`)
- Uso de `cut`, `grep`, `sort`, `uniq`, `wc`, `awk`
- Condicionales con `[ ]` y `[[ ]]`
- Bucle `for` y `while IFS= read -r`
- Funciones en Bash para organizar el código

---

## 📊 Ejemplo de ejecución

```bash
$ ./auditor.sh
📊 Informe de usuarios en /etc/passwd
--------------------------------------
Total de usuarios:           42
Usuarios con /bin/bash:      8
Shells únicos:               5
Top 5 shells:
   1. /bin/bash (8)
   2. /usr/sbin/nologin (20)
   3. /bin/false (10)
   ...

Usuarios con UID ≥ 1000:
   sanet       1000
   hector      1001
   ...
```

```bash
$ ./auditor.sh -p /etc
📁 Directorio: /etc
🟢 Se puede leer
🟡 Se puede escribir
```

---

## 🎯 Entregable

- Un único archivo `auditor.sh`
- Comentar cada sección para explicar qué hace
- Incluir al inicio:

  ```bash
  # Proyecto 1 — Auditor de Usuarios y Permisos
  # Autor: sanet
  # Fecha: ...
  # Descripción: ...
  ```

---
