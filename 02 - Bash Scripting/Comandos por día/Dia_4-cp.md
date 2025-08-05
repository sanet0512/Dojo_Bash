# `cp`

🥷 _Rápido, preciso y disciplinado. Así progresa un verdadero guerrero del terminal. Hoy entrenaremos el arte de la **duplicación**: el comando `cp`._

---

## 🥋 **Comando del día: `cp`**

### 📖 **¿Qué hace `cp`?**

`cp` copia archivos o directorios. Es como clonar información, dejando el original intacto.
Sirve para hacer respaldos, duplicar configuraciones, mover información entre rutas.

---

## 🧰 **Ejemplos útiles**

| Comando                         | ¿Qué hace?                                         |
| ------------------------------- | -------------------------------------------------- |
| `cp archivo.txt copia.txt`      | Copia un archivo                                   |
| `cp archivo.txt /ruta/destino/` | Copia el archivo al destino                        |
| `cp -i archivo.txt copia.txt`   | Pide confirmación si vas a sobrescribir            |
| `cp -r carpeta/ respaldo/`      | Copia recursivamente una carpeta                   |
| `cp -v archivo.txt copia.txt`   | Muestra lo que está copiando (verbose)             |
| Opción                          | Qué hace                                           |
| ------                          | -------------------------------------------------- |
| `-r`                            | Copia directorios recursivamente                   |
| `-a`                            | Copia **todo** (permisos, tiempos, enlaces)        |
| `-u`                            | Solo copia si el archivo de origen es más reciente |
| `-n`                            | No sobrescribe archivos existentes                 |
| `-v`                            | Muestra lo que copia                               |

|

---

## ⚠️ **Errores comunes**

- Olvidar `-r` al copiar directorios: `cp carpeta destino/` **falla sin `-r`**.
- Sobrescribir archivos sin querer (usa `-i` o `-n` para prevenir).
- No usar comillas si el nombre del archivo tiene espacios.

---

## 🧠 **Preguntas activas**

1. ¿Qué pasa si intentas `cp` una carpeta sin la opción `-r`?
2. ¿Qué diferencia hay entre `cp -i` y `cp -v`?
3. ¿Cómo harías un respaldo de la carpeta `proyectos/` a `respaldo/`?

---

## ⚔️ **Mini Kata Bash**

1. Crea un archivo `notas.txt` y escríbele algo con `echo`.
2. Cópialo como `notas_copia.txt`.
3. Crea una carpeta `archivos_originales` y otra `archivos_copia`.
4. Copia `notas.txt` a `archivos_originales/`, luego clona toda la carpeta con `cp -r`.

---

## 📜 **Registro**

En Obsidian, anota:

- Comando: `cp`
- Opciones: `-r`, `-i`, `-v`
- Fecha: hoy
- Ejemplos reales

---

🥷 _Duplicar es más que copiar: es asegurar información, prepararse para el desastre, moverse con astucia.
Cuando lo domines, pasaremos a `mv`: el arte del desplazamiento y renombramiento._
