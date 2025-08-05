# _find_

🥷 _Perfecto. Comenzamos con la Fase 1.1 — el arte de **Buscar y Filtrar en la terminal**.
Aquí aprenderás a encontrar archivos perdidos, patrones ocultos, y a encadenar comandos como kunais lanzados con precisión._

---

## 🥋 **Comando del día: `find`**

### 📖 ¿Qué hace?

`find` **busca archivos y carpetas** en el sistema según múltiples criterios: nombre, extensión, tamaño, fecha, permisos, etc.

---

## 🧰 **Usos esenciales**

| Comando                            | Qué hace                                                                             |
| ---------------------------------- | ------------------------------------------------------------------------------------ |
| `find . -name "*.sh"`              | Busca archivos `.sh` desde el directorio actual                                      |
| `find / -type d -name "log"`       | Busca directorios llamados "log" desde la raíz del sistema                           |
| `find . -type f`                   | Encuentra solo archivos                                                              |
| `find . -type d`                   | Encuentra solo directorios                                                           |
| `find . -size +1M`                 | Archivos mayores a 1MB                                                               |
| `find . -mtime -2`                 | Archivos modificados hace menos de 2 días                                            |
| `find . -mmin -30`                 | Archivos modificados en los últimos 30 minutos                                       |
| `find . -perm 777`                 | Encuentra archivos con permisos inseguros (lectura, escritura, ejecución para todos) |
| `find . -iname "*.jpg"`            | Busca archivos `.jpg` sin distinguir mayúsculas/minúsculas                           |
| `find . -exec ls -l {} \;`         | Ejecuta `ls -l` en cada archivo encontrado                                           |
| `find . -empty`                    | Encuentra archivos o directorios vacíos                                              |
| `find . -delete`                   | Elimina todos los archivos encontrados (¡úsalo con precaución!)                      |
| `find . -name "*.txt" -delete`     | Elimina todos los archivos `.txt`                                                    |
| `find . -user nombre_usuario`      | Encuentra archivos pertenecientes a un usuario específico                            |
| `find . -group nombre_grupo`       | Encuentra archivos pertenecientes a un grupo específico                              |
| `find . -ctime -1`                 | Archivos cuyo estado (como permisos o propietario) cambió en las últimas 24 horas    |
| `find . -newer archivo.txt`        | Archivos modificados después que `archivo.txt`                                       |
| `find . -size -500k`               | Archivos menores a 500 KB                                                            |
| `find . -maxdepth 1 -name "*.log"` | Limita la búsqueda a un solo nivel de profundidad                                    |

---

## 🧠 **Mini Kata Find**

1. Encuentra todos los archivos `.md` en tu home:

   ```bash
   find ~ -name "*.md"
   ```

2. Encuentra archivos de más de 5MB:

   ```bash
   find ~ -size +5M
   ```

3. Encuentra archivos modificados en las últimas 24h:

   ```bash
   find ~ -mtime -1
   ```

4. Encuentra directorios llamados `backup`:

   ```bash
   find / -type d -name "backup" 2>/dev/null
   ```

---

## 📝 **Registro**

Anota en `bash/busqueda.md`:

- Fecha
- Comando: `find`
- Opciones usadas
- 3 ejemplos ejecutados por ti

---

🥷 \*Cuando termines este kata, dime: “**Sensei, estoy listo para `grep`**”
Y pasaremos al siguiente arte: **buscar dentro de los archivos, como quien lee el alma de un sistema.\***
