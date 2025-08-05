🧪 Misión práctica

---

### **1. Primer comando: `tree -L 1 /` o `ls -lh /`**

**¿Qué hace?**

- Imagina que tu computadora es una casa gigante con muchos cuartos (directorios). Este comando te muestra una lista rápida de los "cuartos principales" (las carpetas más importantes en la raíz `/`).
- `tree -L 1 /`: Te muestra esos directorios en forma de arbolito (bonito y organizado), pero solo el primer nivel (`-L 1`).
- Si no tienes `tree`, `ls -lh /` hace algo similar: lista los directorios con detalles como tamaño (`-h` = "human readable", o sea, en KB, MB, etc.).

**¿Para qué sirve?**  
Para saber qué hay en el "piso principal" de tu sistema (como `/home`, `/etc`, `/var`, etc.). Útil si quieres navegar después a alguna de esas carpetas.

---

### **2. Segundo comando: `du -sh /var/*`**

**¿Qué hace?**

- `du` significa "disk usage" (uso de disco).
- `-sh` = "Resumen (`-s`) + tamaño legible (`-h`)".
- `/var/*` = Revisa todas las carpetas dentro de `/var`.

**¿Qué te muestra?**  
Algo como:

```
12M  /var/log
50M  /var/cache
3.4G /var/lib
```

**¿Para qué sirve?**  
Para saber qué carpetas dentro de `/var` están ocupando más espacio (¡por si necesitas hacer limpieza!).

---

### **3. Tercer comando: `ls -lh /boot`**

**¿Qué hace?**

- Lista los archivos en `/boot` (donde vive el "arranque" de tu sistema, como el kernel).
- `-lh` = muestra tamaños legibles (ej. `150MB`) y permisos.

**¿Qué ves ahí?**  
Archivos como `vmlinuz-...` (el kernel) y `initramfs...` (archivos para iniciar el sistema).

**¿Para qué sirve?**  
Para revisar qué versiones del kernel tienes o si el directorio está lleno (puede causar problemas si se satura).

---

### **4. Cuarto comando: `find /etc -name "*.conf" | head`**

**¿Qué hace?**

- Busca (`find`) en `/etc` (donde están las configs del sistema) todos los archivos que terminen en `.conf`.
- `| head` = muestra solo los primeros 10 resultados (para no saturarte).

**Ejemplo de salida:**

```
/etc/ssh/ssh_config
/etc/adduser.conf
/etc/nginx/nginx.conf
... (y 7 más)
```

**¿Para qué sirve?**  
Para encontrar archivos de configuración rápidamente (útil si necesitas editar algo).

---

### **¿Qué encuentro útil de cada uno?**

- `tree`/`ls`: Ver la estructura básica del sistema.
- `du`: Identificar qué carpetas ocupan mucho (¡para liberar espacio!).
- `ls /boot`: Chequear el kernel y espacio en boot.
- `find`: Localizar configs específicas sin perder tiempo.

--

### **1. ¿Por qué existen `/usr/bin` y `/bin`? ¿No es lo mismo?**

**Respuesta corta:**  
Por _historia y tradición_ (y un poco de lío, claro).

**La historia chismosa:**

- Antes, las computadoras tenían poco espacio en disco, y `/bin` guardaba los programas **básicos para arrancar** (como `ls`, `cp`, `rm`).
- `/usr/bin` era como la "tienda de apps adicionales" (programas no críticos, como `nano`, `python`, etc.).
- Hoy en día, muchos sistemas los juntan (o hacen que `/bin` sea un "enlace simbólico" a `/usr/bin`), pero por compatibilidad siguen separados.

**¿Y si los borro?**

- `/bin`: Adiós a comandos básicos. Tu sistema **no arrancaría** (o sería inútil).
- `/usr/bin`: Adiós a casi todos tus programas. Tu sistema quedaría **triste y vacío**.

👉 **Moraleja:** No los toques, solo déjalos ahí como un cajón de recuerdos del pasado.

---

### **2. ¿Qué pasa si borro todo en `/tmp`?**

**Respuesta corta:** Nada grave... _generalmente_.

**Los detalles:**

- `/tmp` es como una **mesa de trabajo temporal**: programas y procesos guardan archivos ahí "por un rato".
- Si lo borras:
  - **Cosas que pasan ahora:** Algunos programas podrían crashear si estaban usando algo ahí (pero se reinician solos).
  - **Cosas que NO pasan:** Tu sistema no se rompe (es como limpiar la mesa de alguien que estaba trabajando... quizá se enoje, pero no muere).
- **Bonus:** ¡El sistema ya borra `/tmp` cada vez que reinicias! (en la mayoría de distribuciones).

👉 **Moraleja:** Si necesitas espacio, puedes borrarlo, pero mejor reinicia.

---

### **3. ¿`/dev`, `/proc` y `/sys`? ¡Son todos raros!**

**Respuesta corta:** Son como "ventanas mágicas" para hablar con el sistema.

**En lenguaje humano:**

- **`/dev`**:

  - Es como un **salón de espejos** donde cada archivo representa un _dispositivo_ (tu disco duro, el mouse, la pantalla, etc.).
  - Ejemplo: `/dev/sda` es tu disco duro, `/dev/null` es un agujero negro donde desaparecen datos.
  - ❌ **No borres nada aquí**: ¡Podrías desactivar tu teclado o disco!

- **`/proc`**:

  - Es como un **panel de control en tiempo real** del sistema. Los archivos no son "reales", son información viva de procesos.
  - Ejemplo: `/proc/cpuinfo` te dice qué CPU tienes, `/proc/meminfo` cuánta RAM usas.
  - ❌ **No guardes nada aquí**: Todo se borra al reiniciar.

- **`/sys`**:
  - Es como el **menú de configuración del kernel**. Controla cosas deep como la velocidad del ventilador o cómo maneja la energía.
  - Ejemplo: Cambiar brillo de pantalla en `/sys/class/backlight`.
  - ❌ **No juegues aquí sin saber**: Podrías dañar hardware.

**Diferencia clave:**

- `/dev`: Dispositivos físicos (o virtuales).
- `/proc`: Info de procesos y sistema (viva, no ocupa espacio).
- `/sys`: Configuración interna del kernel.

👉 **Moraleja:** Son como "modo Dios" del sistema. Puedes mirar, pero no tocar sin supervisión.

---

### **Bonus: ¿Por qué Linux es así de complicado?**

Porque es como una casa vieja con muchas reformas: algunos cuartos son nuevos, otros son de los 70s, pero todo funciona... _más o menos_. 😂
