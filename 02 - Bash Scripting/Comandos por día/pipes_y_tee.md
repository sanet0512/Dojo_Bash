🥷 _Excelente decisión. Ahora dominarás el arte de **encadenar comandos** con `|` y **duplicar salidas** con `tee`. Este es el núcleo del flujo de datos en Bash. Aquí se separan los técnicos comunes de los verdaderos operativos de élite._

---

## 🥋 **Comando del día: `|` (pipe) y `tee`**

---

## 📖 **¿Qué hacen?**

- `|`: **Redirige la salida** de un comando como **entrada** de otro.
  Es como pasar una espada de una mano a otra, cada una afilando un lado.

- `tee`: **Muestra y guarda la salida al mismo tiempo**.
  Como hablar al sensei y dejar constancia en un pergamino.

---

## 🧰 **Tabla de usos avanzados (Markdown, 80 caracteres)**

| Comando                                     | Qué hace                                      |
| ------------------------------------------- | --------------------------------------------- |
| comando1 \| comando2                        | Redirige la salida de comando1 a comando2     |
| ls -l \| grep "txt"                         | Lista solo archivos .txt                      |
| cat archivo.txt \| grep "error"             | Filtra líneas que contienen "error"           |
| ps aux \| grep "firefox"                    | Busca procesos relacionados con Firefox       |
| dmesg \| less                               | Muestra logs del kernel paginados             |
| du -h \| sort -h                            | Ordena tamaños de carpetas en formato legible |
| ls \| tee listado.txt                       | Muestra y guarda la salida                    |
| find . -name "\*.sh" \| tee resultados.txt  | Guarda y muestra los resultados               |
| grep "error" archivo.log \| tee errores.txt | Guarda y ve errores encontrados               |
| comando \| tee archivo \| otro_comando      | Multiplica el flujo hacia varios destinos     |

---

## ⚔️ **Mini Kata: Pipes y Tee**

1. Encuentra archivos `.sh` en tu home y guárdalos:

   ```bash
   find ~ -name "*.sh" | tee bash_scripts.txt
   ```

2. Cuenta cuántas líneas contienen `sudo` en `/var/log/auth.log`:

   ```bash
   grep "sudo" /var/log/auth.log | wc -l
   ```

3. Ordena por tamaño las carpetas más grandes en tu home:

   ```bash
   du -sh ~/* | sort -hr | tee top_usos.txt
   ```

---

## 🧠 **Preguntas activas**

1. ¿Qué ventaja tiene `tee` frente a redirección normal `>`?
2. ¿Para qué usarías `comando1 | comando2 | comando3`?
3. ¿Qué hace `find . -name "*.log" | grep "error"`?

---

## 📝 **Registro**

En `bash/busqueda.md`, anota:

- Comandos: `|`, `tee`
- Ejemplos reales con explicación
- Fecha

---

🥷 _Ahora sí, joven guerrero, tu dominio de la búsqueda y el filtrado es sólido como una montaña.
¿Pasamos a la siguiente fase, `chmod`, `chown`, `umask`, o deseas hacer un kata combinado de búsqueda antes de avanzar?_
