# 🥋 Kata 3 — ¿Qué shells están en uso?

**Objetivo:**
Mostrar una **lista única** de todos los shells de login que están actualmente en uso por los usuarios del sistema.

**Descripción:**
Ya conoces el archivo `/etc/passwd`. Ahora queremos saber **qué valores distintos** aparecen en el campo final (el login shell).
Es decir, debemos extraer la **séptima columna** del archivo y mostrarla **una sola vez por cada valor diferente**.

**Ejemplo de salida**:

```text
/bin/bash
/sbin/nologin
/bin/false
```

**Buenas prácticas clave**:

- Usa `#!/usr/bin/env bash`
- Activa `set -euo pipefail`
- Cita siempre `"${var}"`
- Usa `cut`, `sort`, `uniq` o similar
- Muestra **solo la lista** sin duplicados ni encabezados

---

### 💡 Sugerencia previa

Antes de escribir código, haz tu pseudocódigo.
Piensa:

1. ¿Cómo extraes el último campo?
2. ¿Cómo eliminas duplicados?
3. ¿Ordenar antes o después?

```

```
