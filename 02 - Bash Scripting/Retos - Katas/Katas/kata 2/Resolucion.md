# **Paso a paso archivero del Tiempo**

hay que hacer un script que haga backup de una carpeta y guardar
con fecha y hora.

## Paso a paso para crear el script `archivero.sh`

### 1. **Entender la estructura del script**

El script debe:

- Recibir una carpeta como argumento (por ejemplo, `/ruta/a/carpeta`).
- Verificar que se haya pasado un argumento válido.
- Crear una carpeta `backups/` si no existe.
- Generar un nombre para el archivo comprimido usando el formato `backup_<NOMBRE_CARPETA>_<FECHA>.tar.gz`.
- Comprimir la carpeta usando `tar`.
- Mostrar un mensaje con el nombre del archivo creado.

---

### 2. **Configurar el script y hacerlo ejecutable**

Primero creamos el archivero o script llamado (`archivero.sh`),
y le damos permiso de ejecucion.

```bash

touch archivero.sh
chmod +x archivero.sh

```

dentro del archivo colocamos

```bash
#!/bin/bash
```

para indicar al sistema que el script debe ejecutarse con bash.

### **3. Verifica si se paso un argumento**

El script debe recibir una carpeta como argumento. si no se pasa, debe mostrar un error y salir.
los argumentos se acceden con `$1` (el primer argumento).
Usa una condicional para verificar :

```bash
if [ -z "$1" ]; then
    echo "Error: Debes especificar una carpeta para respaldar."
    exit 1
fi
```

- `[ -z "$1" ]` verifica si `$1` esta vacio (es decir, no se paso ningun argumento).
- `echo` muestra el mensaje de error.
- `exit 1` termina el script con un codigo de error.

### **4. Obtener el nombre de la carpeta**

El argumento `$1` contiene la ruta de la carpeta (por ejemplo, `/ruta/a/mis_docs`). Necesitamos el nombre de la carpeta sin la ruta, que se obtiene con `basename` :

```bash
folder_name=$(basename "$1")
```

- `basename  "$1"` extrae el nombre del directorio (Por ejemplo, `mis_docs`de `/ruta/a/mis_docs` ).
- Guardamos el resultado en la variable `folder_name` para usarlas en el nombre del archivo.

---

### **5. generar la fecha**

El archivo debe tener la fecha y la hora en formato `YYYY-MM-DD_HH-MM-SS`.
Usamos el comando `date` :

```bash
date=$(date '+%Y-%m-%d_%H-%M-%S')
```

- `date '+%Y-%m-%d_%H-%M-%S'` produce algo como `2025-07-24_18-30-45`.
- Guardamos esto en la variable `date`.

---

### **6. creamos la carpeta `backup/` si no existe**

Debemos guardar el archivo comprimido en una carpeta llamada `backups/`.
Usamos `mkdir -p` para crearla, solo si no existe :

```bash
mkdir-p backups
```

- `-p` se asegura que no se produzca un error si la carpeta ya existe.

---

### **7. Crear el nombre del archivo comprimido**

El archivo debe llamarse `Backup_<NOMBRE_CARPETA>_<FECHA.tar.gz>`.
Uasamos las variables `folder_name` y `date`:

```bash
backup_file="backups/backup_${flder_name}_${date}.tar.gz"
```

- Concatenamos las variables para formar: `backups/backup_mis_docs_2025-07-24_18-30-45.tar.gz`

---

### **8. Comprimir la carpeta**

Usamos tar para comprimir la carpeta en un archivo .tar.gz:

```bash
  tar -czf "backup_file" -c "(dirname "$1")" "$folder_name"
```

- `-c` crea un archivo tar.
- `-z` comprime el archivo con gzip (.tar.gz).
- `-f` "$backup_file" especifica el nombre del archivo de salida.
- `- c "$(dirname "$1")"` cambia al directorio padre de la carpeta para evitar incluir la ruta completa en el archivo tar.
- `"$folder_name"` indica la carpeta a comprimir.
  Por ejemplo, si $1 es /ruta/a/mis_docs, dirname "$1" da /ruta/a, y folder_name es mis_docs.

---

### 9. **Mostrar el mensaje de confirmación**

Finalmente, mostramos un mensaje indicando que el backup se creó:

```bash
echo "Backup creado: $backup_file"
```

---

### 10. **El script completo**

Aquí está el script completo combinando todos los pasos:

```bash
#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Debes especificar una carpeta para respaldar."
    exit 1
fi

folder_name=$(basename "$1")
date=$(date '+%Y-%m-%d_%H-%M-%S')
mkdir -p backups
backup_file="backups/backup_${folder_name}_${date}.tar.gz"
tar -czf "$backup_file" -C "$(dirname "$1")" "$folder_name"
echo "Backup creado: $backup_file"
```

---

### 11. **Probar el script**

Guarda el script, asegúrate de que sea ejecutable (`chmod +x archivero.sh`), y pruébalo:

```bash
./archivero.sh /ruta/a/tu/carpeta
```

Por ejemplo:

```bash
./archivero.sh ~/Documentos
```

Esto debería crear un archivo como `backups/backup_Documentos_2025-07-24_18-30-45.tar.gz` y mostrar un mensaje de confirmación.

---

### Explicación adicional: ¿Qué hace cada comando?

- `basename`: Extrae el nombre del directorio de una ruta.
- `date '+%Y-%m-%d_%H-%M-%S'`:
  - `%Y`: Año con cuatro dígitos (ej. 2025).
  - `%m`: Mes con dos dígitos (ej. 07).
  - `%d`: Día con dos dígitos (ej. 24).
  - `%H`: Hora (00-23).
  - `%M`: Minutos.
  - `%S`: Segundos.
- `mkdir -p`: Crea directorios sin error si ya existen.
- `tar -czf`: Comprime una carpeta en un archivo `.tar.gz`.
- `dirname`: Extrae el directorio padre de una ruta.

---

### 🌟 Bonus: Automatización con `crontab` y tamaño del backup

#### 1. **Automatización con `crontab`**

Para que el script se ejecute cada noche a las 23:00, usamos `crontab`. Abre el editor de crontab:

```bash
crontab -e
```

Añade esta línea para programar la ejecución:

```bash
0 23 * * * /ruta/completa/a/archivero.sh /ruta/a/tu/carpeta
```

- `0 23 * * *`: Significa "a las 23:00 todos los días".
- Reemplaza `/ruta/completa/a/archivero.sh` con la ruta absoluta de tu script (puedes obtenerla con `pwd`).
- Reemplaza `/ruta/a/tu/carpeta` con la carpeta que quieres respaldar.

Por ejemplo:

```bash
0 23 * * * /home/usuario/archivero.sh /home/usuario/Documentos
```

Guarda y cierra el editor. Cron ejecutará el script automáticamente cada noche.

---

#### 2. **Mostrar el tamaño del backup**

Para mostrar el tamaño del archivo comprimido, usa `du -sh` al final del script. Añade esta línea antes del `echo` final:

```bash
du -sh "$backup_file"
```

Por ejemplo, el script con el bonus quedaría así:

```bash
#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Debes especificar una carpeta para respaldar."
    exit 1
fi

folder_name=$(basename "$1")
date=$(date '+%Y-%m-%d_%H-%M-%S')
mkdir -p backups
backup_file="backups/backup_${folder_name}_${date}.tar.gz"
tar -czf "$backup_file" -C "$(dirname "$1")" "$folder_name"
du -sh "$backup_file"
echo "Backup creado: $backup_file"
```

El comando `du -sh` mostrará algo como:

````bash
10M    backups/backup_Documentos_2025-07-24_18 _

---

### 🛠️ Solución de problemas comunes
- **Error: "tar: no such file or directory"**: Asegúrate de que la carpeta exista. Puedes añadir una verificación adicional:

```bash
if [ ! -d "$1" ]; then
    echo "Error: La carpeta $1 no existe."
    exit 1
fi
````

- **Permisos**: Si no tienes permisos para leer la carpeta o escribir en `backups/`, usa `sudo` o cambia los permisos con `chmod` o `chown`.
- **Cron no funciona**: Verifica que el script tiene permisos de ejecución (`chmod +x`) y usa rutas absolutas en `crontab`.

---

### 💡 Ejemplo práctico

Supongamos que quieres respaldar `/home/usuario/mis_fotos`. Ejecutas:

```bash
./archivero.sh /home/usuario/mis_fotos
```

El script:

1. Verifica que se pasó el argumento.
2. Extrae `mis_fotos` con `basename`.
3. Genera la fecha, por ejemplo, `2025-07-24_18-30-45`.
4. Crea la carpeta `backups/`.
5. Crea `backups/backup_mis_fotos_2025-07-24_18-30-45.tar.gz`.
6. (Bonus) Muestra el tamaño, por ejemplo, `15M`.
7. Muestra: `Backup creado: backups/backup_mis_fotos_2025-07-24_18-30-45.tar.gz`.
