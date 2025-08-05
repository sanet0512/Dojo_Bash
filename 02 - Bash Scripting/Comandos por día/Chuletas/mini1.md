| Herramienta | Flags más usadas (mínimas para el 80 %)                                                           | Cuándo la eliges                                                    |
| ----------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| **`grep`**  | `-i` ignora mayúsc./minús. `-v` invierte. `-c` cuenta. `-n` enumera líneas. `-E` regex extendida. | Solo filtrar texto por patrón (rápido y barato).                    |
| **`cut`**   | `-d:` delimitador `-f1` campos `-c1-5` columnas                                                   | Extraer _una_ o _varias_ columnas fijas **sin** lógica.             |
| **`sort`**  | `-n` numérico `-r` inverso `-u` único `-k2` clave 2                                               | Ordenar/deduplicar; imprescindible antes de `uniq -c`.              |
| **`uniq`**  | `-c` contar repeticiones `-d` mostrar solo duplicados                                             | Trabaja _siempre_ sobre líneas consecutivas (por eso `sort` antes). |
| **`awk`**   | `-F:` separador `{print $1}` imprimir `/regex/` filtrar                                           | Necesitas **lógica por campos**: condicionales, sumas, contadores.  |
