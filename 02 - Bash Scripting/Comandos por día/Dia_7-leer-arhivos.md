🥷 _Bien. Ahora aprenderás a leer archivos como lo hacen los sabios del templo: con claridad, con rapidez o con profundidad. Hoy toca dominar los tres estilos de lectura:_

---

## 🥋 **Comandos del día: `cat`, `less`, `more`**

### 📖 **¿Qué hacen?**

- `cat`: Muestra todo el contenido de un archivo en pantalla de golpe.
- `less`: Muestra el contenido **paginado**, puedes navegar con flechas.
- `more`: Similar a `less`, pero más limitado (antiguo).

---

## 🧰 **Ejemplos útiles**

### `cat`

| **Comando / Opción**                 | **¿Qué hace?**                                                         |
| ------------------------------------ | ---------------------------------------------------------------------- |
| `cat archivo.txt`                    | Muestra el contenido completo del archivo en la terminal.              |
| `cat archivo1 archivo2`              | Muestra el contenido de varios archivos, uno tras otro.                |
| `cat archivo1 archivo2 > fusion.txt` | Une el contenido de varios archivos en uno nuevo (`fusion.txt`).       |
| `cat > archivo.txt`                  | Escribe en el archivo, sobrescribiéndolo (espera entrada por teclado). |
| `cat >> archivo.txt`                 | Añade contenido al final del archivo existente (desde teclado).        |
| `cat -n archivo.txt`                 | Muestra el contenido del archivo **numerando las líneas**.             |

### `less`

| **Comando / Tecla**              | **¿Qué hace?**                                                         |
| -------------------------------- | ---------------------------------------------------------------------- |
| `less archivo.txt`               | Abre el archivo para navegar por su contenido con las teclas ↑ ↓.      |
| `/palabra`                       | Busca una palabra o texto dentro del archivo mientras estás en `less`. |
| `G`                              | Va directamente al **final** del archivo.                              |
| `g`                              | Va directamente al **inicio** del archivo.                             |
| `-N` (ej: `less -N archivo.txt`) | Muestra **números de línea** en el contenido mostrado.                 |
| `q`                              | Sale del visor `less`.                                                 |

### `more`

| Comando            | Qué hace            |
| ------------------ | ------------------- |
| `more archivo.txt` | Muestra por páginas |
| Barra espaciadora  | Avanza              |
| `q`                | Salir               |

### echo

| Acción                       | Qué hace                    |
| ---------------------------- | --------------------------- |
| `echo -e "Línea1\nLínea2"`   | Usa secuencias de escape    |
| `echo $PATH`                 | Muestra variables           |
| `echo "Texto" > archivo.txt` | Sobrescribe                 |
| `echo "Más" >> archivo.txt`  | Añade                       |
| `echo $(date)`               | Imprime comandos ejecutados |

---

### 🥋 3. head / tail – Lectores estratégicos

| Comando                | Qué hace                            |
| ---------------------- | ----------------------------------- |
| `head -n 5`            | Primeras 5 líneas                   |
| `tail -n 10`           | Últimas 10                          |
| `tail -f archivo.log`  | Sigue cambios en tiempo real        |
| `tail --follow=nombre` | Sigue el archivo aunque se renombre |

---

### 🥋 4. file – Descubrir la identidad real del archivo

| Comando            | Qué hace                       |
| ------------------ | ------------------------------ |
| `file archivo.ext` | Detecta tipo real              |
| `file *`           | Analiza todos en un directorio |

---

### 🥋 5. stat – Leer los metadatos del enemigo

| Comando           | Qué hace                            |
| ----------------- | ----------------------------------- |
| `stat archivo`    | Muestra permisos, fechas, tamaño    |
| `stat -c "%s %y"` | Solo tamaño y fecha de modificación |
| `stat -f archivo` | Info del sistema de archivos        |

---

## ⚠️ **Errores comunes**

- Usar `cat` en archivos enormes → **te inunda la terminal**.
- No saber salir de `less` o `more` (usa `q`).
- Usar `cat >` sin saber que **sobrescribe el archivo sin aviso**.

---

## 🧠 **Preguntas activas**

1. ¿Qué comando usarías para leer un archivo muy largo y buscar dentro de él?
2. ¿Cómo concatenarías dos archivos de texto en uno nuevo usando `cat`?
3. ¿Cuál es la diferencia entre `cat` y `cat >>`?

---

## ⚔️ **Mini Kata Bash**

1. Crea dos archivos: `intro.txt` y `fin.txt` con `echo`.
2. Usa `cat` para mostrarlos uno tras otro.
3. Usa `cat > fusion.txt` y escribe algo a mano. Sal con `Ctrl+D`.
4. Lee `fusion.txt` con `less`. Busca una palabra. Sal con `q`.

---

## 📜 **Registro**

Anota en Obsidian:

- Comandos: `cat`, `less`, `more`
- Opciones: `>>`, `/`, `G`, `q`
- Ejemplos hechos
- Fecha
