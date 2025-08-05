# **🥋 Kata 5 — ¿Qué UID tienen los usuarios humanos?**

**Objetivo:**
Mostrar solo los usuarios **"reales"** (no del sistema) con su nombre y UID, es decir, aquellos con **UID ≥ 1000**.

**Descripción:**
Del archivo `/etc/passwd`, extraer:

- Nombre de usuario (campo 1)
- UID (campo 3)
- Pero solo si el UID es **mayor o igual a 1000**

Esto permite separar cuentas humanas de las del sistema (`root`, `daemon`, etc.).

---

## 💡 Ejemplo de salida esperada

```text
sanet:1000
hector:1001
usuario3:1002
```

---

## 🔧 Herramientas que puedes usar

- `awk -F:` para filtrar por condición (`$3 >= 1000`)
- O combinación de `cut` y `while IFS=: read` con `if`

---

## 🧠 Buenas prácticas clave

- Usa `#!/usr/bin/env bash`
- Activa `set -euo pipefail`
- Cita variables `"${var}"`
- Si usas `awk`, mantenlo legible
- Si usas `read`, recuerda `IFS=:` y condicional `if`

---

## 🎯 Reto opcional

¿Puedes mostrar el resultado alineado como hicimos en la explicación anterior?

---

Cuando lo tengas, envíame tu código con:

```bash
# tu solución aquí
```
