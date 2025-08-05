# 🧭 **Dojo 1.4 — Usuarios, Grupos y Permisos: El Poder del Sysadmin**

> “Un sistema seguro no se logra con fuerza, sino con control.”

---

## 🧠 Fundamentos: ¿Quién eres en el sistema?

Linux trata a todo como archivos —¡incluso a ti!—
Cuando inicias sesión, **el sistema te identifica por un número**: tu UID (User ID).

### 🔑 Archivos clave

| Archivo       | Función                                 |
| ------------- | --------------------------------------- |
| `/etc/passwd` | Lista todos los usuarios del sistema    |
| `/etc/shadow` | Guarda contraseñas encriptadas          |
| `/etc/group`  | Define grupos y quién pertenece a ellos |

---

## 🔧 Comandos esenciales

| Comando                | Función breve                                  |
| ---------------------- | ---------------------------------------------- |
| `whoami`               | Muestra tu nombre de usuario actual            |
| `id`                   | Muestra tu UID, GID y grupos                   |
| `groups`               | Lista los grupos a los que perteneces          |
| `useradd`, `adduser`   | Crea un nuevo usuario                          |
| `usermod`              | Modifica un usuario (ej. cambiar grupo, shell) |
| `passwd`               | Cambia la contraseña de un usuario             |
| `groupadd`, `groupmod` | Crea o modifica grupos                         |
| `su`, `sudo`           | Cambia de usuario o ejecuta comandos como root |

---

## 📜 Teoría de permisos (`rwx`)

Cada archivo o directorio tiene permisos para 3 entidades:

1. **Usuario propietario**
2. **Grupo**
3. **Otros**

### Ejemplo

```bash
-rw-r--r-- 1 sanet users 1.1K jun 15 10:00 documento.txt
```

Se interpreta como:

| Campo           | Significado           |
| --------------- | --------------------- |
| `-rw-r--r--`    | Tipo y permisos       |
| `1`             | Número de enlaces     |
| `sanet`         | Dueño del archivo     |
| `users`         | Grupo del dueño       |
| `1.1K`          | Tamaño                |
| `jun 15...`     | Fecha de modificación |
| `documento.txt` | Nombre del archivo    |

**Permisos explicados:**

| Letra | Permiso | Acción permitida (archivo / carpeta)          |
| ----- | ------- | --------------------------------------------- |
| `r`   | read    | Leer archivo / listar carpeta                 |
| `w`   | write   | Modificar archivo / agregar-quitar en carpeta |
| `x`   | execute | Ejecutar archivo / acceder a la carpeta       |

---

## 🧪 Misión práctica

### 1. Investiga tu usuario actual

```bash
whoami
id
groups
```

### 2. Crea un nuevo usuario de prueba

```bash
sudo useradd -m alumno
sudo passwd alumno
```

### 3. Cambia a ese usuario y regresa

```bash
su - alumno
exit
```

### 4. Examina permisos de un archivo

```bash
ls -l /etc/passwd
```

### 5. Crea un archivo de prueba y cambia permisos

```bash
touch ejemplo.txt
chmod 744 ejemplo.txt
ls -l ejemplo.txt
```

Prueba también:

```bash
chmod u+x ejemplo.txt
chmod g-w ejemplo.txt
```

---

## 🎯 Tu tarea

1. Explica con tus palabras el concepto de permisos (`rwx`) y cómo se aplican.
2. Ejecuta los comandos y describe tus resultados.
3. ¿Qué pasa si un archivo no tiene permisos `x` para nadie? ¿Y si quitas `w` a un directorio?
4. Incluye analogías si quieres: casa con llaves, club con tarjetas, etc.
5. Si deseas, explora `chown` y `umask` como bonus.

---
