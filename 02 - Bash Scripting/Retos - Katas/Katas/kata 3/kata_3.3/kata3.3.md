# 🥋 Kata 8 — Leer un archivo línea por línea

**Objetivo:**
Crear un script que **lea un archivo texto línea por línea**, y para cada línea:

- Imprima su número de línea
- Imprima el contenido de esa línea

---

### 📜 Requisitos

Tu script debe:

1. Recibir como argumento la **ruta de un archivo de texto**
2. Comprobar que **existe y se puede leer**
3. Recorrer el archivo línea a línea
4. Mostrar cada línea precedida por su número, como en:

```text
1: Esta es la primera línea
2: Otra línea más
3: Y así sucesivamente...
```

---

### 🛠️ Herramientas sugeridas

- Bucle `while IFS= read -r linea`
- Comando `cat`, redirección `<`, o incluso `mapfile`
- Variable contador: `n=1; ((n++))`

---

### 🧠 Buenas prácticas

- `#!/usr/bin/env bash`
- `set -euo pipefail`
- Comprobar existencia (`-e`) y lectura (`-r`)
- Citar siempre `"${var}"`
- Evitar `cat archivo | while read` → usar redirección mejor (`< "$archivo"`)

---

### 💡 Pseudocódigo sugerido

```plaintext
1. Verificar que se pasó un argumento
2. Comprobar que el archivo existe y se puede leer
3. Inicializar contador
4. Leer línea a línea
    4.1 Imprimir número y contenido
    4.2 Incrementar contador
```

---

Cuando estés listo, sanet, envía tu código así:

````bash
```bash
# tu código aquí
```
````

¡Adelante! Hoy leerás los archivos como si fueran pergaminos sagrados del sistema.
