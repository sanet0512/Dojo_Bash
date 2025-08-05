# `mkdir`

🥷 El conocimiento sin acción es ceniza en el viento. Hoy comenzarás el dominio de los comandos de **manipulación de archivos**: los cinco sellos del ninja del terminal.\*

Vamos uno por uno, en el orden correcto para que entiendas la **creación**, **copia**, **movimiento** y **destrucción**.

---

# 🥋 **Comando del día: `mkdir`**

## 📖 **¿Qué hace `mkdir`?**

`mkdir` crea directorios (carpetas). Es como invocar un espacio vacío en el sistema, listo para ser habitado por archivos u otros directorios.

---

## 🧰 **Ejemplos útiles**

| Comando                     | ¿Qué hace?                                        |
| --------------------------- | ------------------------------------------------- |
| `mkdir nueva_carpeta`       | Crea una carpeta llamada `nueva_carpeta`          |
| `mkdir carpeta1 carpeta2`   | Crea varias carpetas de un golpe                  |
| `mkdir -p padre/hijo/nieto` | Crea carpetas anidadas, incluso si no existen aún |
| `mkdir -v nueva`            | Muestra mensaje al crear (verbose)                |

<<<<<<< HEAD
| Opción                            | Qué hace                                 |
| --------------------------------- | ---------------------------------------- |
| `mkdir -m 700 carpeta`            | Crea con permisos específicos            |
| `mkdir -p carpeta/{uno,dos,tres}` | Crea múltiples subdirectorios con llaves |
| `umask`                           | Controla los permisos base de `mkdir`    |

=======
>>>>>>> 48c17e21a33cf2e535e24bdeb73dc2f1bea3b37a
---

## ⚠️ **Errores comunes**

- **Crear carpeta existente**:
  `mkdir` fallará si ya existe (a menos que uses lógica previa o `-p`).

- **No usar `-p` en estructuras**:
  `mkdir padre/hijo` falla si `padre` no existe. Usa `mkdir -p padre/hijo`.

---

## 🧠 **Preguntas activas**

1. ¿Qué pasará si ejecutas `mkdir documentos` dos veces?
2. ¿Cómo crearías la ruta `proyectos/bash/katas/diarias` sin errores?
3. ¿Qué hace la opción `-v`?

---

## ⚔️ **Mini Kata Bash**

1. Crea una carpeta `Entrenamiento`.
2. Dentro de ella, crea tres subdirectorios: `dia1`, `dia2`, `dia3`.
3. Ahora, crea toda la estructura `Proyectos/2025/Notas/Bash` de un golpe, sin errores.

_Hazlo paso a paso, luego en un solo comando usando `-p`._

---

## 📜 **Registro**

Anota en Obsidian:

- Comando: `mkdir`
- Opciones: `-p`, `-v`
- Fecha: hoy
- 3 ejemplos reales tuyos

---

🥷 \_Cuando domines `mkdir`, te enseñaré su sombra: `rmdir`, y su enemigo implacable: `rm`.
<<<<<<< HEAD
=======
¿Listo para ejecutar tu kata y responder las preguntas activas?
>>>>>>> 48c17e21a33cf2e535e24bdeb73dc2f1bea3b37a

\_
