# 🥋 Kata 7 — Verificar permisos de archivos

## 📖 Introducción

En esta práctica, vamos a crear un script en Bash que verifica qué tipo de permisos tienes sobre un archivo o directorio específico. Estos permisos incluyen lectura (`-r`), escritura (`-w`) y ejecución (`-x`).

## 💡 Explicación sencilla del problema

Queremos que, al darle un archivo o directorio como argumento, el script revise lo siguiente:

- 🟢 **Lectura (`-r`):** Puedes abrir y ver su contenido.
- 🟡 **Escritura (`-w`):** Puedes modificar o añadir contenido.
- 🔵 **Ejecución (`-x`):** Puedes ejecutarlo (en caso de scripts o programas).
- 🔴 **Sin permisos:** No tienes ningún permiso sobre el archivo.

## 📝 Pseudocódigo

```plaintext
1. Comprobar si se proporcionó un argumento.
2. Verificar que el archivo o directorio existe.
3. Determinar qué tipo de elemento es (archivo regular, directorio, otro).
4. Comprobar permisos específicos:
   - Lectura
   - Escritura
   - Ejecución
5. Indicar si no posee ningún permiso.
```

## 💻 Código en Bash comentado

```bash
#!/usr/bin/env bash
# Activamos modo estricto para prevenir errores comunes
set -euo pipefail

# Comprobamos si recibimos un argumento al ejecutar el script
if [ $# -eq 0 ]; then
    echo "🚨 ¡Espera! Olvidaste indicarme qué archivo debo revisar."
    exit 1
fi

argumento="$1" # Almacenamos el primer argumento recibido

# Comprobamos si el archivo o directorio existe
if [ -e "$argumento" ]; then
    echo "✅ El archivo/directorio '$argumento' existe."

    # Verificamos qué tipo de elemento es
    if [ -f "$argumento" ]; then
        echo "📄 '$argumento' es un archivo regular."
    elif [ -d "$argumento" ]; then
        echo "📁 '$argumento' es un directorio."
    else
        echo "🔗 '$argumento' es otro tipo de elemento (enlace, socket, etc.)."
    fi

    permisos=0 # Variable para verificar si hay algún permiso

    # Comprobamos permisos específicos
    if [ -r "$argumento" ]; then
        echo "🟢 Puedes leer '$argumento'."
        permisos=1
    fi

    if [ -w "$argumento" ]; then
        echo "🟡 Puedes escribir/modificar '$argumento'."
        permisos=1
    fi

    if [ -x "$argumento" ]; then
        echo "🔵 Puedes ejecutar '$argumento'."
        permisos=1
    fi

    # Avisamos si no hay permisos
    if [ $permisos -eq 0 ]; then
        echo "🔴 No tienes permisos sobre '$argumento'."
    fi

else
    echo "❌ '$argumento' no existe en tu sistema."
fi
```

## 📚 Explicación detallada y amigable del código

- **`set -euo pipefail`**: Establece un modo estricto en Bash que nos ayuda a prevenir errores inesperados. Se detiene en caso de fallos en comandos, variables sin definir o errores en tuberías.

- **`if [ $# -eq 0 ];`**: Comprueba si has proporcionado un argumento al ejecutar el script. Si no se detecta ninguno, te lo avisa y se detiene.

- **`[ -e "$argumento" ]`**: Verifica la existencia del archivo o directorio indicado para asegurarnos de que no estamos tratando con algo inexistente.

- **`[ -f "$argumento" ]` y `[ -d "$argumento" ]`**: Revisa si el argumento es un archivo o un directorio, respectivamente, permitiendo identificar claramente el tipo de elemento.

- **Comprobaciones de permisos `[ -r "$argumento" ]`, `[ -w "$argumento" ]`, `[ -x "$argumento" ]`**: Revisa individualmente los permisos de lectura, escritura y ejecución que tienes sobre el elemento proporcionado.

- **Variable `permisos`**: Nos sirve para registrar si encontramos al menos un permiso disponible. Si al final permanece en 0, avisamos claramente que no dispones de permisos sobre el elemento indicado.

¡Ahora tienes un script completo, técnico y a la vez amigable para revisar fácilmente los permisos de cualquier archivo o directorio! 🚀
