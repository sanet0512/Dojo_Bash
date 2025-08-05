# _Sistema de archivos Katas_

## 🤔 3. Preguntas activas

- ### ¿Por qué crees que `/proc` y `/dev` casi no ocupan espacio real?

  tanto `/proc` como `/dev` son directorios con información dinámica, no estática. no almacenan datos en el disco como lo haría una carpeta común, sino que son generados en tiempo real por el kernel según lo que necesites consultar o interactuar.

#### `/proc`: información del sistema y del hardware

este directorio es como un "panel de control" del sistema operativo. contiene archivos y subdirectorios que representan información sobre el estado del sistema, el hardware y los procesos en ejecución. algunos ejemplos de lo que podés encontrar ahí:

- **`/proc/cpuinfo`**: información sobre el procesador.
- **`/proc/meminfo`**: detalles sobre el uso de memoria.
- **`/proc/<pid>`**: subdirectorios para cada proceso en ejecución, donde `<pid>` es el id del proceso. ahí podés ver cosas como los archivos abiertos por ese proceso o su estado.

todo esto es generado dinámicamente por el kernel. no hay datos almacenados en disco, solo información que el sistema te muestra en tiempo real.

#### `/dev`: interfaz para dispositivos

este directorio es más como un "puente" entre el sistema operativo y los dispositivos de hardware. los archivos que ves ahí son nodos de dispositivo, que sirven para interactuar con hardware o recursos del sistema. algunos ejemplos:

- **`/dev/sda`**: representa un disco duro.
- **`/dev/tty`**: terminales virtuales.
- **`/dev/null`**: un "agujero negro" para descartar datos.
- **`/dev/random`**: genera números aleatorios.

estos archivos no contienen datos en sí mismos, sino que son puntos de acceso para interactuar con el hardware o con recursos del sistema.

#### analogía para diferenciar

podés pensar en `/proc` como un tablero de información que te muestra el estado del sistema y el hardware, mientras que `/dev` es como un conjunto de enchufes que te permiten conectar y usar dispositivos.

#### conclusión

sí, ambos son dinámicos y no ocupan espacio real en el disco. `/proc` es más para consultar información del sistema y del hardware, mientras que `/dev` es para interactuar con dispositivos conectados o recursos del sistema. si querés profundizar, podés explorar estos directorios y leer algunos de los archivos con comandos como `cat` o `less`. por ejemplo:

```bash
cat /proc/cpuinfo
ls -l /dev
```

dale, animate a explorar y contame qué descubrís.

- ### ¿Qué pasaría si borraras `/etc`?

¿Qué pasaría si la borras?
Al borrar /etc, el sistema perdería su capacidad para:

Iniciar correctamente: No sabría qué servicios cargar, qué usuarios permitir, o cómo configurar la red.
Ejecutar programas: Muchos programas dependen de sus archivos de configuración en /etc para funcionar.
Gestionar usuarios: Las bases de datos de usuarios y grupos desaparecerían, impidiendo el inicio de sesión.
Conectarse a la red: Se perderían todas las configuraciones de red.
En resumen, el sistema se volvería inestable, no podría arrancar o funcionar de forma esperada, y en la mayoría de los casos, simplemente dejaría de responder o se bloquearía por completo.

¿Hay alguna forma de recuperarse?
La recuperación es extremadamente difícil sin una copia de seguridad. Si no tienes un backup de /etc, la opción más realista sería una reinstalación completa del sistema operativo. Algunos usuarios avanzados podrían intentar arrancar desde un Live USB/CD y reconstruir manualmente algunos archivos críticos, pero sería un proceso tedioso y solo funcionaría para una funcionalidad muy básica, sin recuperar las configuraciones de los programas que hayas instalado o personalizado.

Por eso, es fundamental tener mucho cuidado al manipular archivos en el directorio /etc y siempre tener copias de seguridad de tus configuraciones importantes.

### ¿Por qué `/home` está separado de `/usr`?

En Linux (y en Unix en general), el sistema de archivos está diseñado con una estructura jerárquica y modular. La separación entre directorios como `/home` y `/usr` tiene razones históricas, técnicas y prácticas. Aquí te explico por qué están separados:

#### 🔹 `/home`: Directorio de usuarios

- Contiene **los archivos personales de los usuarios**: documentos, configuraciones, descargas, etc.
- Ejemplos: `/home/alice`, `/home/bob`.
- Cada usuario tiene su propio subdirectorio aquí.
- Se puede montar en **una partición separada**, lo que permite:

  - Conservar datos personales al reinstalar el sistema operativo.
  - Aislar el espacio del usuario de los archivos del sistema.

    - Facilitar respaldos y migraciones.

    ***

    ### 🔹 `/usr`: Archivos de programas del sistema

    - Contiene archivos **compartidos por todos los usuarios**, como programas, bibliotecas y documentación.
    - Ejemplos: `/usr/bin`, `/usr/lib`, `/usr/share`.
    - Se puede montar como **solo lectura** para proteger el sistema.
    - Originalmente, `/usr` era la abreviatura de "user system resources", no "home de los usuarios".

    ***

    ### 🧠 ¿Por qué están separados?

    1. **Modularidad y mantenimiento**:

       - Puedes montar `/home` en un disco distinto sin tocar el sistema.

         - Puedes montar `/usr` como solo lectura (útil en servidores).

         2. **Reinstalaciones más fáciles**:

            - Puedes reinstalar el sistema sin borrar `/home`, manteniendo archivos y configuraciones de usuario.

            3. **Seguridad y organización**:

               - Separar los archivos del sistema de los del usuario mejora el control de permisos y la seguridad.

               4. **Entornos multiusuario**:

                  - En sistemas con muchos usuarios, como servidores o universidades, esto facilita la gestión.

---

## 🥷 4. Reto ninja

Investiga y responde en tu cuaderno Obsidian:

### _¿Qué diferencia hay entre `/bin`, `/usr/bin` y `/usr/local/bin`?_

### 📂 ¿Qué onda con `/bin`, `/usr/bin` y `/usr/local/bin`?

## Estos tres directorios guardan **programas** (comandos que puedes usar en la terminal), pero cada uno tiene su propio "rol en la familia". Imaginá que son como tres cajones distintos donde guardás tus herramientas según quién las necesita y cuándo

### 🛠️ `/bin`: lo esencial para sobrevivir

- Es como una **caja de herramientas de emergencia**.
- Guarda los comandos más básicos del sistema que **tienen que estar sí o sí** disponibles incluso si todo lo demás falla.
- Ejemplos: `ls`, `cp`, `mv`, `cat`, `bash`.

🧠 **¿Por qué importa?** Porque `/bin` es necesario para arrancar el sistema. Sin esto, tu compu ni siquiera podría arrancar bien.

---

### 🔧 `/usr/bin`: la caja de herramientas completa

- Acá van la mayoría de los programas que instalás con el sistema.
- Es como el **taller bien equipado** del sistema.
- Ejemplos: `python`, `gcc`, `git`, `nano`, etc.

🧠 **Dato curioso**: Antes, `/usr` significaba “user system resources”, pero no tiene nada que ver con los usuarios como personas, sino con **archivos que usan todos**.

---

### 🛠️ `/usr/local/bin`: tus herramientas personalizadas

- Este es tu **rincón personal del taller**.
- Aquí van los programas que **instalás tú a mano**, sin usar el gestor de paquetes del sistema (como apt o yum).
- Ejemplos: algún script que escribiste, una app que compilaste tú mismo, etc.

🧠 ¿Por qué existe? Para que tus cosas no se mezclen con las del sistema. Así no se pisan los archivos ni se rompe nada.

---

### 🧩 En resumen (modo chill)

- **`/bin`** → Cosas básicas que necesita el sistema para funcionar.
- **`/usr/bin`** → La mayoría de los programas que vienen con el sistema.
- **`/usr/local/bin`** → Tus cosas personales o programas instalados “a mano”.

---

Si tenés dudas sobre dónde poner algo que instalaste tú, `/usr/local/bin` es el lugar correcto 😉

> ¿Por qué existen tres lugares para binarios?

---

## 📓 5. Registro

Anota en Obsidian con la fecha de hoy:

- Tema: Árbol del sistema de archivos
- Comandos usados: `ls -lh /`, `du -sh /*`
- Notas clave: función de cada directorio
- Preguntas respondidas
