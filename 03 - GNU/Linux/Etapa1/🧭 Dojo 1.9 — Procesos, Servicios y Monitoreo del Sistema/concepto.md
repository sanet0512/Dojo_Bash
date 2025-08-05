# 🧭 **Dojo 1.9 — Procesos, Servicios y Monitoreo del Sistema**

> “Quien conoce la salud de su sistema, puede mantenerlo firme ante cualquier caída.”

---

## 🧠 Objetivos

- Comprender **cómo supervisar y gestionar procesos y servicios**.
- Aprender a detectar cuellos de botella y cuánta RAM/CPU usa cada proceso.
- Monitorear servicios activos, tiempos de actividad y estado general del sistema.
- Usar herramientas CLI eficientes para tu flujo Arch/Linux minimalista.

---

## 1️⃣ Monitoreo de Procesos

### 🔧 Comandos

| Comando        | Qué hace                               |
| -------------- | -------------------------------------- |
| `ps aux`       | Lista todos los procesos               |
| `top`          | Monitoriza procesos en tiempo real     |
| `htop`         | Versión mejorada y colorida de `top`   |
| `pidof nombre` | Muestra PID de un proceso              |
| `kill PID`     | Envía señal de terminación             |
| `kill -9 PID`  | Mata un proceso de inmediato           |
| `pkill nombre` | Mata todos los procesos con ese nombre |
| `pgrep nombre` | Busca PIDs de procesos con ese nombre  |

---

## 2️⃣ Monitoreo de Servicios

**Con `systemd`:**

| Comando                               | Qué hace                             |
| ------------------------------------- | ------------------------------------ |
| `systemctl status`                    | Estado general del sistema           |
| `systemctl status nombre.service`     | Estado de un servicio específico     |
| `systemctl start nombre.service`      | Inicia un servicio                   |
| `systemctl stop nombre.service`       | Detiene un servicio                  |
| `systemctl restart nombre.service`    | Reinicia un servicio                 |
| `systemctl enable nombre.service`     | Habilita en arranque                 |
| `systemctl disable nombre.service`    | Deshabilita en arranque              |
| `systemctl list-units --type=service` | Lista servicios activos              |
| `systemctl list-unit-files`           | Lista todos los servicios instalados |

---

## 3️⃣ Monitoreo de Recursos del Sistema

### 🔧 Herramientas

✅ `free -h` → Ver uso de RAM y swap.
✅ `df -h` → Ver espacio en discos.
✅ `du -sh carpeta` → Ver espacio ocupado por una carpeta.
✅ `iostat` → Monitor de I/O (requiere `sysstat`).
✅ `vmstat` → Monitor de memoria y procesos.
✅ `ncdu` → Ver uso de disco de forma interactiva.
✅ `glances` → Monitor integral (CPU, RAM, I/O, red).

---

## 4️⃣ Logs del sistema

ps aux | less
top
htop

✅ `journalctl -xe` → Ver errores recientes.
✅ `journalctl -b` → Ver logs desde el último arranque.
✅ `dmesg | less` → Ver mensajes del kernel (útil tras conectar hardware).

---

## 🧪 **Misión práctica**

1️⃣ **Supervisa procesos:**

- **Objetivo:** Familiarizarte con los comandos para listar y monitorear procesos en tiempo real.
- **Acciones:**
  - `ps aux | less`: Lista todos los procesos en ejecución con detalles como usuario, PID y uso de recursos.
  - `top`: Muestra una vista dinámica de los procesos activos y su consumo de recursos.
  - `htop`: Versión interactiva y más detallada de `top`, con colores y navegación intuitiva.

```bash
ps aux | less
top
htop
```

2️⃣ **Verifica servicios:**

- **Objetivo:** Aprender a inspeccionar y gestionar servicios del sistema usando `systemd`.
- **Acciones:**
  - `systemctl status`: Muestra el estado general de todos los servicios.
  - `systemctl list-units --type=service`: Lista los servicios activos en el sistema.
  - **Tarea adicional:** Elige un servicio (ej. `NetworkManager` o `sshd`), revisa su estado, reinícialo (`systemctl restart`) y verifica los cambios.

```bash
systemctl status
systemctl list-units --type=service
```

Escoge un servicio (por ejemplo `NetworkManager` o `sshd`), revisa su estado, reinícialo y verifica nuevamente.

3️⃣ **Monitoriza recursos:**

- **Objetivo:** Analizar el uso de recursos del sistema como RAM, espacio en disco y particiones.
- **Acciones:**
  - `free -h`: Muestra el uso de memoria RAM y swap en formato legible.
  - `df -h`: Verifica el espacio disponible en los discos y particiones.
  - `du -sh /var/*`: Calcula el tamaño de archivos y directorios dentro de `/var/` para identificar posibles consumos excesivos.

```bash
free -h
df -h
```

y elige una carpeta grande para inspeccionarla:

```bash
du -sh /var/*
```

4️⃣ **Revisa logs:**

- **Objetivo:** Explorar los registros del sistema para identificar errores o eventos recientes.
- **Acciones:**
  - `journalctl -xe`: Muestra los logs más recientes, enfocándose en errores y advertencias.
  - **Tarea adicional:** Filtra los logs para encontrar mensajes críticos o información relevante sobre el estado del sistema.

```bash
journalctl -xe
```

Busca errores recientes o advertencias.

---

## 🎯 **Tarea del Dojo**

✅ Explica:

- Qué aprendiste de la gestión de procesos.
- Qué servicio reiniciaste y qué observaste.
- Estado actual de RAM, espacio en disco y logs.

✅ Si quieres, instala `glances` o `ncdu`:

```bash
sudo pacman -S glances ncdu
```

y describe qué te pareció.

---
