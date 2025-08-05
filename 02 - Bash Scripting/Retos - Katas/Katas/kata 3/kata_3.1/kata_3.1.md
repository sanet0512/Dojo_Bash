# 🥋 Kata 6 — Verificar si un archivo existe

**Objetivo:**
Crear un script que reciba una **ruta de archivo** y verifique si **existe** y si **es un archivo regular**.

---

### 📜 Requisitos

Tu script debe:

1. Recibir una **ruta como argumento** (`$1`)
2. Verificar si el archivo **existe**
3. Verificar si **es un archivo regular** (no directorio, enlace, etc.)
4. Imprimir mensajes apropiados:
   - ✅ "El archivo existe y es regular"
   - ❌ "El archivo no existe"
   - ⚠️ "Existe, pero no es un archivo regular"

---

### 🧪 Ejemplo de uso

```bash
$ ./kata6.sh /etc/passwd
El archivo existe y es regular

$ ./kata6.sh /etc
Existe, pero no es un archivo regular

$ ./kata6.sh /no/existe
El archivo no existe
```

---

### 🔧 Pistas técnicas

- Usa `-e` para comprobar existencia:

  ```bash
  if [[ -e "$archivo" ]]; then
  ```

- Usa `-f` para archivo regular:

  ```bash
  if [[ -f "$archivo" ]]; then
  ```

- Usa `"$1"` para capturar el argumento (no olvides las comillas)

---

### 🧠 Buenas prácticas clave

- `#!/usr/bin/env bash`
- `set -euo pipefail`
- Verifica que el argumento exista (`$# -lt 1`)
- Usa condicionales con `[[ ... ]]`
- Cita todas las variables `"${var}"`

---

Cuando estés listo, envíame tu script como siempre:

````bash
```bash
# tu código aquí
```
````
