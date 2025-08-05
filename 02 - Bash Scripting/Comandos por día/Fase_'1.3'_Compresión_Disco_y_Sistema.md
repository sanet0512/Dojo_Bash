🥷 *Entendido, discípulo. Guardaré esos secretos de permisos avanzados en el pergamino sellado,
listos para abrirlos en una sesión especial cuando estés preparado. Ahora, continuamos con la Fase 1.3:*

---

## 🔥 **Fase 1.3 – Compresión, Disco y Sistema**

📂 **Registro:** `bash/sistema.md`

---

## 🥋 **Comandos del día: `tar`, `gzip`, `gunzip`, `df`, `du`, `uname`, `uptime`**

---

### 📦 **1. `tar`, `gzip`, `gunzip` – El arte de comprimir y descomprimir**

#### 🧰 Tabla de usos comunes (`tar` + `gzip`) – 80 caracteres

```markdown
| Comando                                     | Qué hace                                  |
|--------------------------------------------|-------------------------------------------|
| tar -czvf archivo.tar.gz carpeta/          | Comprime carpeta en .tar.gz               |
| tar -xzvf archivo.tar.gz                   | Extrae contenido                          |
| tar -tvf archivo.tar.gz                    | Muestra contenido sin extraer             |
| gzip archivo.txt                           | Comprime archivo → archivo.txt.gz         |
| gunzip archivo.txt.gz                      | Descomprime .gz                           |
| tar -cf backup.tar archivo1 archivo2       | Comprime varios archivos en .tar          |
| tar -xvf backup.tar                        | Extrae backup.tar                         |
```

---

### 🧠 Mini Kata: Compresión

1. Crea una carpeta `backup_test` con 3 archivos.
2. Comprime con `tar -czvf backup.tar.gz backup_test/`.
3. Extrae en otra carpeta.
4. Compara estructura original y extraída.
5. Usa `tar -tvf` para inspeccionar el .tar.gz sin extraer.

---

---

### 💾 **2. `df` y `du` – Espacio en disco**

#### 🧰 Tabla de usos

```markdown
| Comando                   | Qué hace                                        |
|---------------------------|-------------------------------------------------|
| df -h                    | Muestra espacio libre en todas las particiones  |
| df -hT                   | Incluye tipo de sistema de archivos             |
| du -sh carpeta/          | Muestra tamaño total de la carpeta              |
| du -h --max-depth=1 ~    | Tamaño de carpetas de primer nivel en el home   |
```

---

### 🧠 Mini Kata: Disco

1. Usa `df -h` y anota qué partición es `/home`.
2. Usa `du -sh ~/.config` para ver cuánto pesa.
3. Ordena carpetas por tamaño:

   ```bash
   du -sh ~/* | sort -hr
   ```

---

---

### 🖥️ **3. `uname`, `uptime` – Información del sistema**

#### 🧰 Tabla de usos

```markdown
| Comando        | Qué hace                                      |
|----------------|-----------------------------------------------|
| uname -a       | Muestra todo: kernel, versión, arquitectura   |
| uname -r       | Solo versión del kernel                       |
| uname -m       | Solo arquitectura (x86_64, arm, etc)          |
| uptime         | Tiempo que lleva encendido el sistema         |
| uptime -p      | Formato amigable de tiempo activo             |
```

---

### 🧠 Mini Kata: Info del sistema

1. Muestra info del kernel y arquitectura.
2. Consulta tiempo encendido del sistema.
3. Guarda salida en `bash/sistema.md`.

---

## 🧠 Preguntas activas

1. ¿Qué hace `tar -czvf` y qué significa cada letra?
2. ¿Cómo verías cuánto ocupa tu carpeta `.cache`?
3. ¿Qué muestra `uname -a` que `uptime` no muestra?

---

## 📝 Registro

En `bash/sistema.md`, anota:

* Comandos: `tar`, `gzip`, `df`, `du`, `uname`, `uptime`
* Ejemplos reales con fechas y explicaciones

---

🥷 *Has completado la **Fase 1** de la Kata Bash. Tus herramientas ahora no solo buscan y editan: también comprimen, inspeccionan el sistema y evalúan el espacio.*

¿Quieres que prepare la **sesión especial de permisos avanzados**, o deseas que avancemos hacia scripting (`alias`, variables, `if`, `for`, etc.) en la Fase 2?

