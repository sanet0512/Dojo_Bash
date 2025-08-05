# 🧭 Dojo 1.6 — systemd: El Maestro de Ceremonias del Sistema

> “Quien controla _systemd_, domina el pulso del sistema desde su primer aliento.”

---

## 🧠 ¿Qué es `systemd`?

Es el **init system moderno** usado por la mayoría de distribuciones actuales (Arch, Fedora, Debian, Ubuntu...).

### Funciones principales

- Iniciar y detener servicios
- Manejar logs
- Montar unidades (discos)
- Administrar procesos y sesiones
- Ejecutar tareas programadas

---

## 🏗️ Conceptos clave

| Concepto    | Descripción                                                            |
| ----------- | ---------------------------------------------------------------------- |
| **Unit**    | Un archivo `.service`, `.socket`, `.target`, etc.                      |
| **Service** | Una unidad que arranca, detiene o reinicia un servicio                 |
| **Target**  | Un conjunto de unidades (como `multi-user.target`, `graphical.target`) |
| **Timer**   | Sustituto moderno de `cron`                                            |
| **Journal** | Sistema de logs binarios accesible con `journalctl`                    |

---

## 🔧 Comandos esenciales con `systemctl`

| Comando                               | Descripción                                    |
| ------------------------------------- | ---------------------------------------------- |
| `systemctl status`                    | Muestra el estado general del sistema          |
| `systemctl status nginx`              | Estado de un servicio específico               |
| `systemctl start nombre.service`      | Inicia un servicio                             |
| `systemctl stop nombre.service`       | Detiene un servicio                            |
| `systemctl restart nombre.service`    | Reinicia un servicio                           |
| `systemctl enable nombre.service`     | Activa el servicio para el arranque automático |
| `systemctl disable nombre.service`    | Desactiva el arranque automático               |
| `systemctl list-units --type=service` | Lista servicios activos                        |
| `systemctl list-unit-files`           | Lista todos los servicios disponibles          |

---

## 🔍 Comandos útiles con `journalctl`

| Comando                           | Resultado                      |
| --------------------------------- | ------------------------------ |
| `journalctl`                      | Muestra todos los logs         |
| `journalctl -b`                   | Logs del último arranque       |
| `journalctl -u nombre.service`    | Logs de un servicio específico |
| `journalctl --since "1 hour ago"` | Logs recientes                 |
| `journalctl -xe`                  | Modo detallado para errores    |

---

## 🧪 Misión práctica

1. Revisa el estado del sistema:

   ```bash
   systemctl status
   ```

2. Explora los servicios activos:

   ```bash
   systemctl list-units --type=service
   ```

3. Detén y reinicia un servicio:

   ```bash
   sudo systemctl restart NetworkManager
   ```

4. Visualiza los logs del arranque:

   ```bash
   journalctl -b | head
   ```

5. Investiga los errores:

   ```bash
   journalctl -xe
   ```

---

## 🎯 Tu próxima misión (cuando tengas tiempo de escribir)

1. Explica qué es `systemd` y cuál es su rol.
2. Compara `systemd` con el sistema init tradicional (si quieres profundizar).
3. Ejecuta algunos comandos clave y describe los resultados.
4. ¿Qué servicio es el que más tarda en tu arranque?
5. ¿Has encontrado algún fallo interesante en los logs?

---

Cuando termines esta lección, estarás listo para comenzar el **camino del scripting y la automatización**...
donde tu teclado se convertirá en katana 🗡️
