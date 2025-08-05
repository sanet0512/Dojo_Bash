# `mv`

🥷 _Muy bien, discípulo. Has aprendido a duplicar como un clonador experto. Ahora aprenderás a moverte con sigilo, como un verdadero shinobi del terminal. Hoy te presento:_

---

## 🥋 **Comando del día: `mv`**

### 📖 **¿Qué hace `mv`?**

El comando `mv` **mueve archivos o directorios** de un lugar a otro, o **los renombra**.
Es el arte de desaparecer de un sitio y aparecer en otro... o cambiar de identidad.

---

## 🧰 **Ejemplos útiles**

---

| **Comando / Opción**              | **¿Qué hace?**                                                                         |
| --------------------------------- | -------------------------------------------------------------------------------------- |
| `mv archivo.txt nuevo_nombre.txt` | **Renombra** el archivo `archivo.txt` como `nuevo_nombre.txt`.                         |
| `mv archivo.txt carpeta/`         | **Mueve** el archivo `archivo.txt` a la carpeta indicada.                              |
| `mv carpeta1/ carpeta2/`          | **Mueve** toda la carpeta `carpeta1/` dentro de `carpeta2/`.                           |
| `mv -i archivo.txt destino/`      | Mueve el archivo, pero **pide confirmación** si va a sobrescribir uno ya existente.    |
| `mv -v archivo.txt destino/`      | **Muestra en pantalla** el archivo que está moviendo (modo **verbose**).               |
| `mv -n archivo.txt destino/`      | **No sobrescribe** archivos ya existentes en el destino.                               |
| `mv -u archivo.txt destino/`      | Solo mueve el archivo si el de origen **es más reciente** que el existente en destino. |
| `mv -v`                           | **Muestra** los movimientos realizados (modo detallado / verbose).                     |

## t⚠️ **Errores comunes**

- Renombrar sin querer: si escribes `mv archivo.txt otro.txt`, no se mueve: **se renombra**.
- Sobrescribir sin aviso: si el archivo ya existe, lo reemplaza sin preguntar (usa `-i` para prevenirlo).
- No usar comillas para rutas con espacios: `mv "archivo viejo.txt" nuevo/`

---

## 🧠 **Preguntas activas**

1. ¿Qué diferencia hay entre `mv archivo.txt carpeta/` y `mv archivo.txt nuevo.txt`?
2. ¿Qué pasa si haces `mv archivo.txt destino/` y ya hay un archivo con el mismo nombre?
3. ¿Cómo moverías la carpeta `fotos/` a `~/Imágenes/` con confirmación?

---

## ⚔️ **Mini Kata Bash**

1. Crea un archivo `reporte.txt` y una carpeta `Documentos`.
2. Mueve `reporte.txt` a `Documentos/`.
3. Luego renombra el archivo como `informe_final.txt`.
4. Crea una carpeta `A` con un archivo dentro. Muévela a `B/`, que no existe aún.

_¿Qué ocurrió? Aprende del comportamiento de `mv`._

---

## 📜 **Registro**

Anota en Obsidian:

- Comando: `mv`
- Opciones: `-i`, `-v`
- Ejemplos que hiciste
- Fecha: hoy

---

🥷 _Mover y renombrar: técnicas esenciales del ninja del archivo. Saber cuándo ocultarse, cuándo avanzar, cuándo dejar atrás... eso es `mv`._

¿Estás listo para ejecutar la mini kata y responder las preguntas?
