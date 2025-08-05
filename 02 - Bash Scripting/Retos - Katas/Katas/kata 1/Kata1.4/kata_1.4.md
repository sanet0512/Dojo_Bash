# **🥋 Kata 4 — Extraer el UID de cada usuario**

## **Objetivo:**

Mostrar una lista con los nombres de usuario y su UID (User ID) correspondiente.

**Descripción:**
Del archivo `/etc/passwd`, debes extraer para cada línea:

- El **nombre del usuario** (campo 1)
- El **UID** (campo 3)

Y mostrarlos en formato:

```text
usuario1:1000
usuario2:0
...
```

**Ejemplo de salida**:

```text
root:0
sanet:1000
daemon:1
```

---

## 📚 Ayuda

El archivo `/etc/passwd` tiene este formato por línea:

```text
usuario:x:UID:GID:info:home:shell
```

Así que el campo 1 es el nombre, y el campo 3 es el UID.

---

## 🧠 Buenas prácticas clave

- Usa `#!/usr/bin/env bash`
- Activa `set -euo pipefail`
- Cita variables `"${var}"`
- Usa `cut` o `awk`
- Solo imprime `usuario:UID`, sin cabeceras

---

## 💡 Sugerencia previa

Haz tu pseudocódigo antes de escribir Bash real.

Luego, envíame tu script como siempre:

````bash
```bash
# tu código aquí
```
````
