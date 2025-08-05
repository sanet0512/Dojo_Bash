## 🏹 Próximo reto real-world (Nivel 1 → 1.5)

> **Enunciado**
> En un directorio de proyectos (`~/proyectos`), muestra las **5 extensiones de archivo más comunes** (ej. `.py`, `.sh`, `.md`) ordenadas de mayor a menor frecuencia.
> **Restricciones**
>
> - Debe recorrer subdirectorios (`find`, `ls -R`, etc.).
> - Salida: `extensión  cantidad`.
> - Una sola línea de comando (usa pipes si quieres).

Ejemplo de salida:

```
.py  37
.md  15
.sh   9
.yml  8
.txt  4
```

_Usa lo que prefieras (`awk`, `sort`, `uniq -c`, …)._

---

### 📣 ¿Cómo proseguimos?

1. **Resuelve el reto**.
2. Luego comparte otro **#Resumen de progreso** (qué hiciste, dudas).
3. Pasaremos a mini-scripting con funciones y `cron`, o entraremos en tu “Bash-to-Python Week 12”. Tú eliges el foco.

---

🌀 Cuando tengas el comando, vuelve con:

```bash
🖥️  user@dojo:~$ <tu-comando>
...
```

¡Y ahora, regresa al **Maestro del Dojo** con tu nuevo kata! 🥷

Respuesta del aprendis :

🖥️ user@dojo:~$ mkdir -p Proyectos/ $$ cd Proyectos| touch Proyectos/{archivo.md,archivo.py,archivo.sh,archivo.yml,arhivo.txt}
...

Bueno vamos a seguir con el ejercicio!!

En el directorio ~/Proyectos (recorriéndolo con subdirectorios):
muestra las 5 extensiones de archivo más comunes, ordenadas de mayor → menor.
Formato: extensión cantidad
Una sola línea de comando (usa pipes si lo deseas).

```bash

find ~/Proyectos -type f | awk F. '{if (NF>1) print $NF}' | sort | uniq -c | sort -nr

```
