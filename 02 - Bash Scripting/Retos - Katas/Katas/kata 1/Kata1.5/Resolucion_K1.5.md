# **🥋 Kata 5 — ¿Qué UID tienen los usuarios humanos?**

En este ejercicio me piden identificar los usuarios humanos del sistema, es decir, mostrar su **nombre de usuario** junto con su **UID** (User ID).
Los UID que corresponden a usuarios humanos suelen comenzar desde el **1000 en adelante** (dependiendo de la distribución de Linux), mientras que los números menores suelen estar reservados para el sistema.

## 📌 ¿Qué campos nos interesan?

El archivo `/etc/passwd` contiene la información de todos los usuarios del sistema, separados por dos puntos `:`. Cada línea tiene varios campos, pero los que necesitamos son:

- **Campo 1** → `Nombre de usuario`
- **Campo 3** → `UID`

Queremos filtrar y mostrar solo las líneas en las que el UID sea mayor o igual a 1000.

---

## 🛠️ Opción 1: Usando `awk`

Primero, una breve explicación:

### ¿Qué es `awk`?

`awk` es una poderosa herramienta de procesamiento de texto orientada a columnas. Nos permite:

- Leer línea por línea
- Dividir el contenido en campos (columnas) con un delimitador personalizado
- Aplicar condiciones
- Formatear la salida

Podemos pensar en `awk` como una mini base de datos que recorre cada línea y ejecuta acciones si se cumple una condición.

### 🔍 ¿Qué hace este script?

```bash
#!/usr/bin/env bash

set -euo pipefail

awk -F: 'BEGIN {
    printf "%-15s %s\n", "Usuario", "UID"
}
$3 >= 1000 {
    printf "%-15s %s\n", $1, $3
}' /etc/passwd
```

- `-F:` le dice a `awk` que use `:` como delimitador de columnas.
- `BEGIN` se ejecuta antes de procesar las líneas. Aquí imprimimos los encabezados.
- `$3 >= 1000` es la condición: si el UID es mayor o igual a 1000, imprimimos el usuario y su UID con formato alineado.

---

## 🛠️ Opción 2: Usando `while` + `IFS` + `read`

Otra forma de hacerlo es con un bucle `while` leyendo línea por línea:

```bash
#!/usr/bin/env bash

set -euo pipefail

printf "%-15s %s\n" "Usuario" "UID"

while IFS=: read -r usuario _ uid _ _ _ _; do
    if [[ "$uid" -ge 1000 ]]; then
        printf "%-15s %s\n" "$usuario" "$uid"
    fi
done < /etc/passwd
```

### ¿Qué pasa aquí?

- `IFS=:` indica que usaremos `:` como separador entre campos.
- `read -r usuario _ uid ...` guarda el nombre y el UID, e ignora los campos que no necesitamos usando `_`.
- La condición `if [[ "$uid" -ge 1000 ]]` filtra los UID humanos.
- `printf` alinea los datos de forma elegante.

---

Ambas opciones son válidas. La de `awk` es más compacta y rápida para este tipo de tareas. La de `while` es más explícita y útil cuando queremos hacer cosas más complejas dentro del bucle.
