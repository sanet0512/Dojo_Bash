# 🧭 Dojo 1.5 — Procesos, Señales y el Latido del Sistema

> “El que domina los procesos, controla la energía del sistema.”

---

## 🧠 ¿Qué es un proceso?

Un **proceso** es un programa en ejecución. Cada vez que ejecutas un comando (como `ls`, `neovim`, `firefox`), el sistema **crea un proceso**.

Los procesos tienen:

- Un **PID** (Process ID)
- Un **PPID** (Parent Process ID)
- Un **estado** (ejecutando, en espera, detenido...)
- Un **usuario** que lo lanzó

---

## 🔧 Comandos esenciales para control de procesos

| Comando                 | Función                                                    |
| ----------------------- | ---------------------------------------------------------- |
| `ps aux`                | Muestra todos los procesos en el sistema                   |
| `top` / `htop`          | Monitorean procesos en tiempo real                         |
| `kill PID`              | Envía una señal para terminar un proceso                   |
| `kill -9 PID`           | Mata un proceso de forma forzada (`SIGKILL`)               |
| `killall nombre`        | Mata todos los procesos con ese nombre                     |
| `&`, `jobs`, `fg`, `bg` | Control de procesos en segundo plano                       |
| `nice`, `renice`        | Prioridad de ejecución de procesos                         |
| `strace`, `lsof`        | Diagnóstico: seguimiento de llamadas al sistema / archivos |

---

## 📜 Tipos de señales útiles (`kill -SIGNAL PID`)

| Señal | Nombre    | Significado                               |
| ----- | --------- | ----------------------------------------- |
| `1`   | `SIGHUP`  | Reinicia el proceso (usado por `systemd`) |
| `2`   | `SIGINT`  | Interrupción (como presionar Ctrl+C)      |
| `9`   | `SIGKILL` | Mata el proceso de forma inmediata        |
| `15`  | `SIGTERM` | Termina el proceso de forma amigable      |
| `18`  | `SIGCONT` | Continúa un proceso detenido              |
| `19`  | `SIGSTOP` | Detiene el proceso (como Ctrl+Z)          |

---

## 🧪 Misión rápida para que practiques luego

1. Abre dos terminales:

   - En una ejecuta: `sleep 1000`
   - En la otra: `ps aux | grep sleep` → encuentra el PID
   - Luego: `kill -9 PID` y observa qué ocurre

2. Lanza un proceso en segundo plano:

```bash
gedit &    # o cualquier app gráfica
jobs       # verás el trabajo en segundo plano
fg         # lo traes al frente
Ctrl+Z     # lo detienes
bg         # lo reanudas en segundo plano
```

3. Observa tu sistema:

```bash
top        # para ver en tiempo real
htop       # si está instalado
```

---
