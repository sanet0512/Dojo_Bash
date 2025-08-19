Analizar el archivo `/etc/passwd/`
mostrar a detalle

- lista de Usuarios y contarlos, Usuarios con UID >= 1000
- Shells, total de /bin/bash, o shell unicas.
- Top 5 shell mas Usados (Orden descendente)
- permisos
- Validar rutas

el script debe funcionar con argumento y/o ruta, O directamente buscar el archivo

Opciones

3. **Opciones (flags)**
   - `-h` → mostrar ayuda del script
   - `-p <ruta>` → validar si la ruta existe, es archivo o directorio, y permisos de lectura/escritura
   - `-u` → mostrar solo usuarios con UID ≥ 1000 y shell `/bin/bash`
   - `-s` → mostrar resumen de shells usado

4. **Formato de salida**
   - Encabezados claros
   - Datos alineados (`printf "%-20s %s\n" ...`)
   - Uso de iconos opcionales (📄, 📁, 🟢, 🔴)
   - Separadores visuales (`-----------------`)
