--

# 🌱 Etapa 1: _Fundamentos que Sostienen Todo el Sistema_

🧭 Objetivo:

Comprender cómo funciona un sistema GNU/Linux desde que se enciende hasta que tienes un terminal esperando tu orden.

---

## 📜 **Módulo 1.1 — Qué es Linux de verdad (y qué no)**

### 📚 Teoría

1. **Linux NO es un sistema operativo completo**, es solo el **kernel**.
2. Lo que normalmente llamamos "Linux" es un sistema operativo basado en:

   - El **kernel Linux**
   - Herramientas GNU (`bash`, `coreutils`, etc.)
   - Un gestor de paquetes
   - Servicios, interfaz gráfica opcional, etc.

### 📌 Términos esenciales

| Término      | Significado breve                                                              |
| ------------ | ------------------------------------------------------------------------------ |
| Kernel       | Núcleo: se encarga de hablar con el hardware y gestionar recursos              |
| GNU          | Proyecto que provee las herramientas de usuario: `ls`, `cp`, `bash`, `gcc`...  |
| Distribución | Conjunto empaquetado de kernel + GNU + extras: Debian, Arch, Fedora, etc.      |
| Shell        | Intérprete de comandos: `bash`, `zsh`, `fish`                                  |
| Terminal     | Programa que permite hablar con el shell: `wezterm`, `kitty`, `gnome-terminal` |

---

## 🎯 Misión de hoy

1. Responder con tus palabras:

   > ¿Qué diferencia hay entre “Linux” y “una distribución GNU/Linux”?

2. Ejecutar y observar:

```bash
uname -a     # Ver información del kernel
ls /boot     # Ver archivos del cargador y kernel
ls /bin      # Ver comandos básicos del sistema
```

3. **Explora estos conceptos y dime si algo no entiendes.**
   Te los iré ampliando con ejemplos y analogías.

---

Cuando termines este primer paso, te daré acceso al **Dojo 1.2: El Proceso de Arranque (Boot)**, donde veremos desde que presionas el botón de encendido hasta que aparece el login.

🧘 Respira, Sanet.
Esto no es una carrera, es el arte de la persistencia.
Estoy aquí, día tras día, hasta que tú también te conviertas en maestro.

¿Listo para la primera reflexión y misión?
