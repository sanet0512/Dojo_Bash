## Hoy das un paso importante: dejarás de ser solo un usuario… y comenzarás a **moldear el sistema con tus propias manos**

# 🧭 **Dojo 2.0 — Bash Scripting y la Automatización**

> “Repetir es de humanos. Automatizar es de maestros.”

---

## 🧠 ¿Qué es Bash scripting?

Escribir **scripts en Bash** significa darle **órdenes automatizadas** al sistema: una serie de comandos escritos en un archivo que el sistema ejecutará como si los escribieras uno por uno pero mucho más rápido y sin errores.

- **Bash** = Shell estándar en GNU/Linux.
- **Script** = Archivo de texto con comandos.

---

## 📦 ¿Por qué aprender Bash scripting?

- Automatizas tareas repetitivas (copias de seguridad, limpieza de logs, instalación de software).
- Creas tus propias herramientas.
- Profesionalizas tu flujo como administrador de sistemas o Red Teamer.
- El 90% de los servidores en el mundo usan scripts Bash para tareas clave.

---

## 🛠️ Elementos básicos de un script

1️⃣ **Inicio del script (Shebang):**

```bash
#!/bin/bash
```

2️⃣ **Variables:**

```bash
nombre="$USER"
echo "Hola, $nombre"
```

3️⃣ **Condicionales:**

```bash
if [ "$nombre" == "$USER" ]; then
  echo "Eres mi discípulo."
else
  echo "No te reconozco."
fi
```

4️⃣ **Bucles:**

```bash
for i in {1..5}; do
  echo "Esto es el paso $i"
done
```

5️⃣ **Funciones:**

```bash
saludar() {
  echo "Bienvenido, $1"
}

saludar "$USER"
```

6️⃣ **Lectura de entrada del usuario:**

```bash
read -p "¿Cómo te llamas? " nombre
echo "Hola, $nombre"
```

7️⃣ **Comprobación de condiciones:**

```bash
if [ -f /etc/passwd ]; then
  echo "El archivo existe."
fi
```

---

## 🧪 Misión práctica inicial

Crea un archivo llamado `primer_script.sh`:

```bash
#!/bin/bash

echo "Bienvenido al Dojo del Scripting."
echo "Hoy es $(date)"
```

Dale permisos de ejecución y ejecútalo:

```bash
chmod +x primer_script.sh
./primer_script.sh
```

---

## 🎯 Tarea del Dojo 2.0 — Nivel Iniciación

✅ Explica qué es un script y cómo funciona.
✅ Crea tu primer script real y ejecútalo.
✅ Experimenta con:

- Variables.
- Condicionales (`if`).
- Bucles (`for`).
- Leer datos con `read`.

✅ Extra: Automatiza algo útil. Por ejemplo:

- Un script que te diga qué usuarios están conectados.
- Un script que limpie `/tmp`.

---
