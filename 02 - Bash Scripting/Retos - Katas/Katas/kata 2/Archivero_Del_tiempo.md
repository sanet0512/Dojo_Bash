# 🥋 KATA BASH Nº2 – “Archivero del Tiempo”

**Contexto**:
Te asignan la tarea de crear una herramienta para hacer backups de una carpeta y guardarlos con fecha y hora. Esto simula un entorno real de administración y también prácticas de evasión y persistencia (Red Team).

---

## 🎯 Objetivo

1. Crear un **script Bash llamado `archivero.sh`** que:
   - [[Reciba.md|Reciba]] como argumento una carpeta a respaldar.
   - Cree un archivo `.tar.gz` con el contenido de esa carpeta.
   - El archivo debe llamarse:
     `backup_<NOMBRE_DE_LA_CARPETA>_<FECHA>.tar.gz`,
     usando este formato de fecha: `YYYY-MM-DD_HH-MM-SS`
   - El archivo debe guardarse en una carpeta `backups/` en el mismo directorio donde se ejecuta el script.
   - Mostrar un mensaje como:
     `"Backup creado: backups/backup_mis_docs_2025-07-23_19-20-01.tar.gz"`

---

### 📜 Reglas

- No uses funciones ni `getopts` aún.
- Usa `tar`, `date`, `mkdir`, `basename`, `echo`.
- Usa condicionales para verificar si se pasó argumento.
- Crea la carpeta `backups/` solo si no existe.
- El script debe ser ejecutable con `bash archivero.sh /ruta/a/carpeta`.

---

### 💡 Pistas técnicas

- `basename /ruta/a/dir` → te da el nombre del directorio.
- `date '+%Y-%m-%d_%H-%M-%S'` → te da la fecha formateada.
- `mkdir -p backups` → crea la carpeta solo si no existe.
- `tar -czf` → comprime en `.tar.gz`.

---

### 🌟 BONUS (opcional)

- Integra con `crontab` para que se ejecute automáticamente cada noche a las 23:00.
- Usa `du -sh` al final para mostrar el tamaño del backup.

---
