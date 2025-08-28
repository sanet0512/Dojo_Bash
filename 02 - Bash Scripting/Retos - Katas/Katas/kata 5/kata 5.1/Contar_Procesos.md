# 🥋 **Kata 11 — Contar procesos por usuario**

## 🎯 Objetivo

Escribir un script que muestre **cuántos procesos está ejecutando cada usuario**
en el sistema.

## 📜 Descripción

- Usar el comando `ps` (o `ps -eo user=` para solo usuarios).
- Contar cuántas veces aparece cada usuario.
- Mostrarlo en formato tabla: **Usuario | Número de procesos**.
- Ordenar de mayor a menor número de procesos.

---

## 💻 Ejemplo de salida

```bash
Usuario        Procesos
root           125
sanet           37
daemon           3
```

---

## ⭐ Buenas prácticas clave

- Shebang y modo estricto:

  ```bash
  #!/usr/bin/env bash
  set -euo pipefail
  ```

- Usar `awk` o `sort | uniq -c` para contar.
- `printf "%-15s %s\n"` para alinear columnas.
- Siempre quoting `"${var}"`.

---

```text
  iniciamos con el shebang
  set de seguridad

  - Buscamos los procesos por usuario
  - Ordenamos los resultado con sort
  - Contamos con uniq -c para contar
  los resultados ordenadas
  - Volvemos a ordenar con sort pero
  de mayor a menor con sort -nr
  - awk

```

```bash
#!/usr/bin/env [[bash.md|bash]]

set -euo pipefail

printf "%-20s %s\n" "Usuarios" "Procesos"

ps -eo user= | sort | uniq -c | sort -nr | awk '{printf "%-20s %s\n", $2, $1[['}'.md|'}']]


```
