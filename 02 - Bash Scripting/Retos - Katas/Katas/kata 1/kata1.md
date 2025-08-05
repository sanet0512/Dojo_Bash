# 🥋 **Kata 1 — Usuarios con `/bin/bash`**

**Objetivo:**
Filtrar y mostrar solo los usuarios cuyo _shell de login_ sea `/bin/bash`.

**Descripción:**
Debes leer el archivo `/etc/passwd`, detectar las líneas que terminan con `/bin/bash`, y extraer el nombre del usuario (es decir, el primer campo antes de los dos puntos).

**Ejemplo de salida**:

```text
root
sanet
hector
```

**Buenas prácticas clave**:

- Usa `#!/usr/bin/env bash`
- Activa `set -euo pipefail`
- Cita todas las variables `"$var"`
- Sin usar `awk` todavía (opcional), céntrate en `cut`, `grep`, `IFS`, `read`, etc.

---

### 💡 Sugerencia de estudio antes de resolver

> Investiga por tu cuenta cómo está estructurado el archivo `/etc/passwd`
> y haz un **pseudocódigo** antes de escribir el script.

Cuando lo tengas, envíamelo dentro de un bloque como este:

````bash
```bash
# tu código aquí
```
````
