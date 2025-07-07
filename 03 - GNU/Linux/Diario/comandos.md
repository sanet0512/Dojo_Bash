| Comando                            | Función                                                     | Contexto de uso                       |                                      |
| ---------------------------------- | ----------------------------------------------------------- | ------------------------------------- | ------------------------------------ |
| `ls -lh /`                         | Lista los contenidos del directorio raíz con tamaño legible | Para ver estructura base del sistema  |                                      |
| `du -sh /*`                        | Muestra el tamaño total de cada carpeta en `/`              | Detectar qué directorios pesan más    |                                      |
| `cat /proc/cpuinfo`                | Muestra información del procesador                          | Saber núcleos, modelo de CPU, etc.    |                                      |
| `grep -c ^processor /proc/cpuinfo` | Cuenta cuántos núcleos detecta el sistema                   | Saber cuántos hilos lógicos hay       |                                      |
| `cat /proc/meminfo`                | Muestra información detallada de la RAM                     | Ver cuánta memoria hay disponible     |                                      |
| `cat /proc/uptime`                 | Muestra el tiempo que el sistema ha estado encendido        | Saber uptime y tiempo de CPU inactivo |                                      |
| `ps aux`                           | Lista todos los procesos del sistema                        | Monitoreo general                     |                                      |
| \`ps aux                           | less\`                                                      | Lo mismo, pero con paginador          | Para poder revisar cómodamente       |
| \`ps aux --sort=-%cpu              | head -n 10\`                                                | Muestra los procesos que más usan CPU | Identificar procesos pesados         |
| \`ps aux --sort=-%mem              | head -n 10\`                                                | Muestra los que más usan RAM          | Detectar consumo excesivo de memoria |
| `kill <PID>`                       | Intenta finalizar un proceso de forma limpia                | Detener programas manualmente         |                                      |
| `kill -9 <PID>`                    | Fuerza la muerte del proceso (SIGKILL)                      | Casos donde `kill` normal no funciona |                                      |
| `pstree`                           | Muestra los procesos en forma de árbol                      | Ver jerarquía entre procesos          |                                      |
