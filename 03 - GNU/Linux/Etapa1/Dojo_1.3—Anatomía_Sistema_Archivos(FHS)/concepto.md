¡Perfecto, Sanet! Estás avanzando con paso firme y mente clara.
Ahora entremos en el siguiente nivel del dojo: **el mapa del cuerpo del sistema**.

---

# 🧭 Dojo 1.3 — Anatomía del Sistema de Archivos Linux (FHS)

> "Así como un guerrero conoce cada músculo de su cuerpo, el maestro GNU/Linux conoce cada directorio de su sistema."

---

## 🗂️ La Estructura FHS (Filesystem Hierarchy Standard)

Esta estructura es compartida entre muchas distribuciones para mantener la coherencia. Aquí los caminos no son aleatorios: **cada carpeta tiene un propósito vital**.

| Ruta             | Función principal                                                                 |
| ---------------- | --------------------------------------------------------------------------------- |
| `/`              | Raíz del sistema. Todo parte desde aquí.                                          |
| `/bin`           | Comandos básicos necesarios para arrancar y reparar el sistema (`ls`, `cp`, `mv`) |
| `/boot`          | Archivos del kernel, GRUB y `initramfs`. Necesarios para arrancar el sistema.     |
| `/dev`           | Dispositivos representados como archivos (`/dev/sda`, `/dev/null`)                |
| `/etc`           | Archivos de configuración del sistema                                             |
| `/home`          | Directorios personales de los usuarios                                            |
| `/lib`, `/lib64` | Bibliotecas compartidas esenciales para ejecutar binarios del sistema             |
| `/media`         | Punto de montaje de medios extraíbles como USB                                    |
| `/mnt`           | Punto temporal para montar particiones manualmente                                |
| `/opt`           | Aplicaciones de terceros fuera del gestor de paquetes                             |
| `/proc`          | Información del kernel y procesos en tiempo real (falsa, generada por el kernel)  |
| `/root`          | Home del usuario root                                                             |
| `/run`           | Datos temporales de procesos desde el último arranque                             |
| `/sbin`          | Binarios del sistema solo para el administrador (`fsck`, `shutdown`)              |
| `/srv`           | Datos servidos por servicios (como FTP o HTTP)                                    |
| `/sys`           | Información del sistema y control de dispositivos (sysfs)                         |
| `/tmp`           | Archivos temporales                                                               |
| `/usr`           | Aplicaciones de usuario, utilidades, documentación                                |
| `/var`           | Archivos que cambian durante el uso: logs, spool de impresión, bases de datos     |

---

## 🧪 Misión práctica

1. Ejecuta y observa:

```bash
tree -L 1 /
```

O si no tienes `tree`:

```bash
ls -lh /
```

2. Explora estos comandos y dime qué encuentras útil en cada uno:

```bash
du -sh /var/*
ls -lh /boot
find /etc -name "*.conf" | head
```

3. **Ejercicio de reflexión:**

   - ¿Por qué `/usr/bin` y `/bin` existen los dos?
   - ¿Qué pasa si eliminas el contenido de `/tmp`?
   - ¿Cuál es la diferencia entre `/dev`, `/proc` y `/sys`?

---

## 🎯 Tu tarea

1. Haz un **informe o diario del dojo** explicando las funciones de los principales directorios del sistema.
2. Incluye resultados de los comandos prácticos y cualquier hallazgo curioso que te haya sorprendido.
3. Añade tus propias analogías si quieres, como en los informes anteriores. (Por ejemplo, `/etc` como "la mente del sistema", `/var` como "el metabolismo", etc.)

---

Cuando termines este módulo, habrás comprendido el **esqueleto completo de tu sistema operativo**.
¿Estás preparado, Sanet?
Cuando traigas el informe, lo revisaremos juntos.
