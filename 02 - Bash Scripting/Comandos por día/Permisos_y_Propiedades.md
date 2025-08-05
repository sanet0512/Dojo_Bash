🥷 *Sabia observación, discípulo. El tema de **permisos y propiedades** no es solo una tabla de comandos. 
es una doctrina completa: seguridad, control, auditoría. Si no lo dominas, tu sistema es una casa sin puertas.*

Vamos a expandir esta Fase 1.2 con más profundidad práctica y contexto real.

---
## 🧠 **Entendimiento profundo de permisos (`ls -l`)**

Ejemplo:

```
-rwxr-xr-- 1 usuario grupo 1234 may 15 10:20 script.sh
```

Se descompone así:

| Campo | Significado                            |
| ----- | -------------------------------------- |
| `-`   | Tipo de archivo (`-` archivo, `d` dir) |
| `rwx` | Dueño: leer, escribir, ejecutar        |
| `r-x` | Grupo: leer, ejecutar                  |
| `r--` | Otros: solo lectura                    |

---

### 🛡️ Permisos octales:

| Octal | Binario | Permisos |
| ----- | ------- | -------- |
| `7`   | 111     | rwx      |
| `6`   | 110     | rw-      |
| `5`   | 101     | r-x      |
| `4`   | 100     | r--      |
| `0`   | 000     | ---      |

---

## 🧰 **Combinaciones reales con `chmod`**

```bash
chmod 755 script.sh     # Típico para scripts ejecutables
chmod 644 archivo.txt   # Lectura/escritura dueño, lectura para otros
chmod 700 carpeta/      # Solo tú puedes accederla
chmod a-w archivo       # Quita escritura a todos
chmod +x *.sh           # Da ejecución a todos los .sh del directorio
```

---

## 🧰 **Escenarios avanzados con `chown`**

```bash
chown root archivo      # Cede propiedad a root
chown sanet:admin file  # Cambia dueño y grupo
chown -R sanet proyectos/  # Todo el árbol de archivos
```

**Requiere privilegios (`sudo`)**

---

## 🧠 `umask`: ¿por qué importa?

`umask` **resta permisos** a la creación por defecto (como 666 para archivos, 777 para carpetas).

| umask | Permisos archivo | Permisos carpeta |
| ----- | ---------------- | ---------------- |
| 022   | 644              | 755              |
| 027   | 640              | 750              |
| 077   | 600              | 700              |

---

## ⚔️ **Katas realistas de permisos**

1. Simula un archivo de configuración privado:

   ```bash
   touch config.env
   chmod 600 config.env
   ```

2. Crea una carpeta pública, pero no editable:

   ```bash
   mkdir docs
   chmod 755 docs
   ```

3. Simula un error de permisos y repáralo:

   ```bash
   chmod 000 archivo
   ls -l archivo
   chmod 644 archivo
   ```

4. Prueba cambiar `umask` y observa:

   ```bash
   umask 0077
   touch privado.txt
   ls -l privado.txt
   ```

---

### 📘 Añade también al registro:

* Ejemplo de `ls -l` explicado
* Umask antes y después
* Cómo rompiste permisos y los arreglaste



