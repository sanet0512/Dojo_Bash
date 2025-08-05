# 🥋 Kata 7 — Verificar permisos de lectura y escritura

**Objetivo:**
Crear un script que reciba la ruta de un archivo y verifique si:

- 🟢 Se puede leer (`-r`)
- 🟡 Se puede escribir (`-w`)
- 🔴 No tiene permisos suficientes

---

## 📜 Requisitos del script

Tu script debe:

1. Recibir una **ruta de archivo como argumento** (`$1`)
2. Verificar si el archivo **existe**
3. Comprobar si:
   - Se puede **leer**
   - Se puede **escribir**
   - Ambas
   - Ninguna

4. Imprimir un mensaje claro para cada caso

---

### 🔍 Ejemplos de uso

```bash
$ ./kata7.sh /etc/passwd
✔️ Se puede leer el archivo '/etc/passwd'.

$ ./kata7.sh archivo_solo_escritura.txt
✏️ Se puede escribir en el archivo 'archivo_solo_escritura.txt'.

$ ./kata7.sh archivo_sin_permisos.txt
❌ No tienes permisos de lectura ni escritura sobre 'archivo_sin_permisos.txt'.
```

---

### 🛠️ Herramientas clave

- `-e` → existe
- `-r` → ¿tiene permiso de lectura?
- `-w` → ¿tiene permiso de escritura?

Puedes usar:

```bash
if [ -r "$archivo" ]; then ...
```

Y encadenar condiciones con `if`, `elif`, `else`.

---

### 🧠 Buenas prácticas

- `#!/usr/bin/env bash`
- `set -euo pipefail`
- Cita siempre `"${var}"`
- Usa `"$#"` para verificar si se pasó argumento

---

Cuando lo tengas listo, envíame tu solución como siempre:

````bash
```bash
# tu código aquí
```
````

¡Adelante, sanet!
Hoy aprenderás a **leer los permisos como un ninja lee el viento.**
