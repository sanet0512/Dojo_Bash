# `rmdir`

# `rm`

Excelente, discípulo. Has asimilado el poder de la creación con `mkdir`. Ahora avanzaremos al **arte de la destrucción controlada**.

---

## 🥋 **Comando del día: `rmdir` y `rm`**

### 📖 **¿Qué hacen?**

- `rmdir`: Elimina **solo directorios vacíos**.
- `rm`: Elimina **archivos o carpetas**, con o sin contenido. Es el sable afilado del ninja: eficaz pero peligroso.

---

## 🧰 **Ejemplos útiles**

### `rmdir`

| Comando                   | Qué hace                                             |
| ------------------------- | ---------------------------------------------------- |
| `rmdir carpeta_vacía`     | Elimina solo si está vacía                           |
| `rmdir -p dir1/dir2/dir3` | Elimina dir3, luego dir2, luego dir1 si están vacíos |

### `rm`

| Comando             | Qué hace                                                         |
| ------------------- | ---------------------------------------------------------------- |
| `rm archivo.txt`    | Elimina un archivo                                               |
| `rm -i archivo.txt` | Te pide confirmación                                             |
| `rm -r carpeta/`    | Elimina carpeta y su contenido (recursivo)                       |
| `rm -rf carpeta/`   | **Elimina sin preguntar**, incluso si hay subcarpetas y archivos |

---

## ⚠️ **Errores comunes**

- Usar `rm -rf /` → **Destruye el sistema completo**. Nunca lo ejecutes.
- Olvidar `-i` y borrar archivos sin querer.
- Usar `rmdir` en carpetas con archivos: **falla silenciosamente**.

---

## 🧠 **Preguntas activas**

1. ¿Por qué `rmdir` falla con carpetas que tienen archivos?
2. ¿Qué opción de `rm` usarías si quieres que te pida confirmación antes de borrar?
3. ¿Qué significa `rm -rf carpeta/` y por qué es peligroso?

---

## ⚔️ **Mini Kata Bash**

1. Crea una carpeta llamada `PruebaEliminacion` con `mkdir`.
2. Crea dentro de ella un archivo falso: `touch hola.txt`
3. Intenta eliminarla con `rmdir`. ¿Qué pasa?
4. Elimínala correctamente con `rm`.
5. Ahora, crea una estructura vacía: `mkdir -p temp/a/b/c`
   Usa `rmdir -p` para eliminar toda la cadena.

---

## 📜 **Registro**

Anota en Obsidian:

- Comandos: `rmdir`, `rm`
- Opciones: `-p`, `-r`, `-f`, `-i`
- 3 ejemplos reales
- Fecha: hoy

---

🥷 _Hoy has aprendido que destruir también requiere sabiduría. Un ninja no borra por impulso: evalúa, confirma, y actúa con precisión.
Cuando estés listo, pasamos al arte de la duplicación (`cp`) y la teleportación (`mv`). ¿Deseas continuar o practicar un poco más?_
