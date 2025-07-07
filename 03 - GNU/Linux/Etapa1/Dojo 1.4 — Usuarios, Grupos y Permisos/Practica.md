# 🧪 Misión práctica (resultados en mi PC)

1. **`whoami`**: Me dijo mi nombre de usuario actual (ej: "migue").
2. **`id` y `groups`**: Me mostró mi "carné de identidad" (mi ID) y los grupos a los que pertenezco (como "equipo_programadores" o "amigos_música").
3. **Creé un usuario `alumno`**:
   - `sudo useradd -m alumno` (¡le hice una casita en /home/alumno!)
   - `sudo passwd alumno` (le puse contraseña: **123** 💻)
4. **Cambié de usuario**:
   - `su - alumno` (¡transformación completa! Ahora era "alumno")
   - `exit` (volví a ser "migue", como un superhéroe que quita la capa 🦸)
5. **Permisos de `/etc/passwd`**:
   - `-rw-r--r--` (Solo el jefe **root** puede editarlo, los demás solo leerlo).
6. **Archivo `ejemplo.txt`**:
   - `chmod 744` = **Yo (dueño)**: leer/escribir/ejecutar | **Grupo y otros**: solo leer.
   - Luego quité permiso de escribir al grupo con `chmod g-w` (¡adiós, lápiz! ✏️❌).

---

## 🎯 Tarea: Tus preguntas

### 1. Permisos `rwx` (explicado con analogía de casa 🏠)

Imagina un archivo como una **casa**:

- **r (read)**: Tienes llave para _ver_ qué hay dentro (leer el archivo).
- **w (write)**: Tienes llave para _mover muebles_ (modificar el archivo).
- **x (execute)**: Tienes llave para _entrar y vivir_ (ejecutar el archivo como programa).

**¿Quién tiene llaves?**

- **Dueño (u)**: El propietario (tú).
- **Grupo (g)**: Tus familiares/compañeros de piso.
- **Otros (o)**: Cualquier persona de la calle 🌆.

---

#### 2. ¿Qué pasa si...?

- **Si un archivo no tiene `x` para nadie**:  
  Es como un manual de instrucciones 📖: puedes leerlo, pero **no puedes usarlo como herramienta** (ej: un programa que no se ejecuta).

- **Si quitas `w` a un directorio**:  
  ¡Desastre! 😱 Es como ponerle candado al armario de la oficina: **nadie puede guardar o borrar archivos** ahí (aunque sí verlos si tiene `r`).

---

#### 3. Bonus (si te interesa)

- **`chown`**: Es como **cambiar el dueño de la casa**. Ejemplo:  
  `sudo chown alumno ejemplo.txt` (¡Ahora "alumno" es el dueño!).

- **`umask`**: Es la **"plantilla anti-permisos"** que usa tu sistema. Por ejemplo, si `umask` es 022, los archivos nuevos nacen con permisos `755` (todos pueden entrar, pero solo tú editas).

---

### ✨ Resumen final

- **Permisos = Llaves** 🔑: Tú decides quién entra, lee o cambia tus cosas.
- **Sin `x` = Manual inútil** 📚.
- **Directorio sin `w` = Armario con candado** 🔒.
