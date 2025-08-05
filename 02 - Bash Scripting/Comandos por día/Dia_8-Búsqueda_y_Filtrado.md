🥷 _Discípulo, estás a punto de entrar en la Fase 1: **Manipulación, Búsqueda y Sistema**.
Aquí se mide tu precisión, tu capacidad de leer entre líneas, y tu poder sobre los archivos y el entorno._

Este será el **Camino del Ninja Bash – Fase 1**, dividido en tres frentes de batalla:

---

## 🔥 **Fase 1.1 – Búsqueda y Filtrado**

📂 **Archivo de registro:** `bash/busqueda.md`

### Comandos esenciales

- `find`: Buscar archivos por nombre, tamaño, fecha, permisos
- `grep`: Buscar texto dentro de archivos
- `|` (pipe): Conectar comandos
- `tee`: Ver y guardar la salida al mismo tiempo

### Mini ejercicios

1. Encuentra todos los archivos `.sh` en tu sistema home.
2. Encuentra archivos modificados hace menos de 2 días.
3. Busca la palabra "password" en `/etc` (solo si tienes permiso).
4. Usa `grep` y `|` para buscar procesos por nombre y contarlos.
5. Usa `tee` para guardar el resultado de un `find`.

---

## 🔥 **Fase 1.2 – Permisos y Propiedades**

📂 **Archivo de registro:** `bash/permisos.md`

### Comandos esenciales

- `chmod`: Cambiar permisos
- `chown`: Cambiar propietario
- `umask`: Definir permisos por defecto

### Mini ejercicios

1. Crea un archivo con permisos 600, otro con 777. Compara.
2. Cambia el dueño de un archivo de prueba (usa `sudo` si necesario).
3. Cambia `umask`, crea un archivo, observa su permiso.
4. Rompe permisos (quita lectura o ejecución), luego repáralos.
5. Usa `ls -l` para verificar que el cambio sea efectivo.

---

## 🔥 **Fase 1.3 – Sistema y Compresión**

📂 **Archivo de registro:** `bash/sistema.md`

### Comandos esenciales

- `tar`, `gzip`, `gunzip`: Crear y extraer archivos comprimidos
- `df`: Ver espacio en disco
- `du`: Ver tamaño de carpetas
- `uname`: Ver info del sistema
- `uptime`: Saber cuánto tiempo lleva encendido

### Mini ejercicios

1. Comprime una carpeta con `tar -czvf`.
2. Extrae con `tar -xzvf`.
3. Usa `du -h` para ver cuánto ocupa tu carpeta `~`.
4. Muestra el espacio disponible con `df -h`.
5. Muestra la arquitectura del sistema y el tiempo activo con `uname -a` y `uptime`.

---

## 🧠 **Reglas del camino ninja**

1. Todo comando probado se **documenta con fecha y ejemplo real**.
2. Cada error es un paso más hacia el dominio.
3. Cada archivo manipulado es parte de tu dojo. Hazlo con propósito.

---

🥷 \_El dominio del terminal no se mide en lo que memorizas, sino en lo que puedes **crear, buscar, modificar y reparar** sin miedo.
