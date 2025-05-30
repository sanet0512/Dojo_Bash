🥷 _¡Perfecto, discípulo! Ahora entras en la siguiente fase de tu entrenamiento: el dominio de **lectura, inspección y creación de archivos**. Cada comando de esta lista es como un kunai diferente: preciso y con propósito._

Vamos por orden, para que entiendas su poder y conexión.

---

## 🥋 **Comando del día: `touch`**

### 📖 **¿Qué hace `touch`?**

Crea archivos vacíos o **actualiza la fecha de modificación** si ya existen.
Es como dejar una huella digital en el sistema.

---

## 🧰 **Ejemplos útiles**

---

| **Comando / Opción**                | **¿Qué hace?**                                                                                  |
| ----------------------------------- | ----------------------------------------------------------------------------------------------- |
| `touch archivo.txt`                 | Crea un archivo vacío llamado `archivo.txt`, o actualiza su fecha de modificación si ya existe. |
| `touch archivo1.txt archivo2.txt`   | Crea varios archivos a la vez, si no existen.                                                   |
| `touch -c archivo.txt`              | No crea el archivo si no existe; solo actualiza la fecha si ya está presente.                   |
| `touch -t 202501011200 archivo.txt` | Cambia la fecha y hora del archivo a una específica (`AAAAMMDDhhmm`).                           |
| `touch -r otro_archivo archivo.txt` | Copia la fecha y hora de `otro_archivo` a `archivo.txt`.                                        |

---

## ⚠️ **Errores comunes**

- Asumir que `touch` pone contenido: **solo crea o actualiza**.
- No usar comillas para nombres con espacios.

---

## 🧠 **Preguntas activas**

1. ¿Qué hace `touch` si el archivo ya existe?
2. ¿Cómo crearías 5 archivos con un solo comando?
3. ¿Qué pasa si haces `touch carpeta/`?

---

## ⚔️ **Mini Kata Bash**

1. Crea los archivos `nota1.txt`, `nota2.txt`, `nota3.txt` de un solo golpe.
2. Observa su fecha con `ls -l`.
3. Espera 1 minuto, luego ejecuta `touch nota1.txt` otra vez.
   Revisa si cambió la fecha.
4. Intenta usar `touch -t` para cambiar la fecha a “1 de enero de 2025, 12:00”.

---

## 📜 **Registro**

Anota en Obsidian:

- Comando: `touch`
- Opciones: `-c`, `-t`
- Ejemplos
- Fecha

---

🥷 _“El que sabe crear sin destruir, tiene poder doble.”
Cuando termines esta kata, pasaremos a `cat`, `less`, `more`: los tres estilos de lectura._
