# **🥋 Kata 2 — ¿Cuántos usuarios usan `/bin/bash`?**

**Objetivo:**
Contar cuántos usuarios tienen configurado `/bin/bash` como shell de login.

**Descripción:**
Basado en el kata anterior, ahora queremos **el número total de usuarios** que usan `/bin/bash` como su _login shell_. El resultado debe ser **un solo número**.

**Ejemplo de salida**:

```text
5
```

**Buenas prácticas clave**:

- Mismos requisitos que en Kata 1:
  `#!/usr/bin/env bash`
  `set -euo pipefail`
  Variables siempre con comillas `"${var}"`
- Usa `wc -l` para contar líneas correctamente.
- Ojo con espacios extra o salida que no sea un número.

---

### 💡 Sugerencia previa

Antes de escribir código, escribe tu **pseudocódigo**:

- ¿Qué comando usarás para filtrar?
- ¿Qué comando para contar?
- ¿Necesitas guardar en una variable?

Y si quieres ir más allá:
¿cómo lo harías con `awk` o `getent` en vez de `/etc/passwd`?

---

Cuando lo tengas listo, envíalo como bloque:

````bash
```bash
# tu código aquí
```
````

Estoy preparado para corregirlo. ¡Adelante, sanet!
