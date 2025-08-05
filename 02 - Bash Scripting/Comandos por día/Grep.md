🥷 _Excelente, joven discípulo. Has aprendido a encontrar los archivos. Ahora aprenderás a **leer dentro de ellos** y detectar patrones como un auditor en una red enemiga. Hoy dominarás el arte de:_

---

## 🥋 **Comando del día: `grep`**

### 📖 ¿Qué hace?

`grep` busca líneas que **contienen una palabra o patrón** dentro de archivos. Es como un radar: encuentra lo invisible al ojo humano.

---

## 🧰 **Usos esenciales**

| Comando                            | Descripción                                       | Detalles                                       | Notas                 |
| ---------------------------------- | ------------------------------------------------- | ---------------------------------------------- | --------------------- | --- |
| `grep "texto" archivo.txt`         | Busca líneas que contengan "texto"                | Búsqueda simple                                |                       |
| `grep -i "palabra" archivo.txt`    | Búsqueda **insensible a mayúsculas/minúsculas**   | Ignora el caso                                 |                       |
| `grep -r "clave" ./`               | Búsqueda **recursiva** en subdirectorios          | Recorre carpetas                               |                       |
| `grep -n "error" archivo.log`      | Muestra el **número de línea**                    | Útil para ubicar fallos                        |                       |
| `grep -v "OK"`                     | Muestra líneas **que NO contienen** "OK"          | Inverso del patrón                             |                       |
| `grep --color "palabra"`           | Resalta las coincidencias del patrón              | Muy útil para revisión                         |                       |
| `grep -E "error                    | fail"`                                            | Usa **expresiones regulares extendidas (ERE)** | Equivalente a `egrep` |     |
| `grep -A 3 "fallo"`                | Muestra 3 líneas **después** de cada coincidencia | Contexto posterior                             |                       |
| `grep -B 2 "fail"`                 | Muestra 2 líneas **antes** de la coincidencia     | Contexto anterior                              |                       |
| `grep -C 2 "error"`                | Muestra 2 líneas **antes y después**              | Contexto completo                              |                       |
| `grep -l "warning" *.log`          | Muestra solo los **nombres de archivos**          | “l” de “list”                                  |                       |
| `grep -L "warning" *.log`          | Archivos que **NO contienen** el patrón           | Opuesto a `-l`                                 |                       |
| `grep -w "clave"`                  | Coincidencia exacta de la palabra                 | No parte de otras palabras                     |                       |
| `grep -x "línea completa"`         | Coincide solo si la **línea completa** es igual   | Útil para validaciones                         |                       |
| `grep -c "error"`                  | Muestra el **número de coincidencias**            | Contador                                       |                       |
| `grep -e "error" -e "fail"`        | Buscar múltiples patrones                         | Alternativa a `|`                     |     |
| `grep -f patrones.txt archivo.log` | Usa patrones desde un archivo externo             | Cada línea es un patrón                        |                       |
| `grep -o "regex"`                  | Muestra **solo** el texto que coincide            | No la línea entera                             |                       |
| `grep -q "clave"`                  | No muestra salida, solo el **exit code**          | Útil en scripts                                |                       |
| `grep -s "clave" archivo.txt`      | No muestra errores de archivos inexistentes       | “s” de **silent**                              |                       |
| `grep --binary-files=text "clave"` | Trata binarios como texto                         | Útil en análisis forense                       |                       |
| `grep --exclude="*.log"`           | Excluye archivos específicos (usado con `-r`)     | Puede combinarse con                           | `--include`           |
| `grep --include="*.conf"`          | Incluye solo ciertos archivos (usado con `-r`)    | Filtro avanzado                                |                       |

---

## 🧠 **Mini Kata Grep**

1. Busca la palabra `root` en `/etc/passwd`:

   ```bash
   grep "root" /etc/passwd
   ```

2. Busca líneas con `error` en todos los `.log` dentro de `/var/log`:

   ```bash
   grep -rin "error" /var/log/*.log 2>/dev/null
   ```

3. Encuentra líneas que **no contienen** “active” en un archivo:

   ```bash
   grep -v "active" archivo.txt
   ```

4. Usa una expresión regular:

   ```bash
   grep -E "404|500" access.log
   ```

---

## 🧠 Preguntas activas

1. ¿Qué diferencia hay entre `grep` y `grep -i`?
2. ¿Cómo buscarías errores en muchos archivos `.log`?
3. ¿Para qué sirve `-v`?

---

## 📝 Registro

Escribe en `bash/busqueda.md`:

- Comando: `grep`
- Opciones: `-i`, `-r`, `-v`, `-E`, `-n`
- 3 ejemplos ejecutados
- Fecha

---

🥷 _Cuando termines este kata, prepárate para la técnica de la unión:
`|` (pipe) y `tee`, para combinar comandos como una cadena letal._
¿Estás listo para continuar con pipes y `tee`, o quieres practicar `grep` más a fondo primero?
