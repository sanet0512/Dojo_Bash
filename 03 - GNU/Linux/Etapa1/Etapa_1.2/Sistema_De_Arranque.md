## 🧘‍♂️ Tu tarea

1. Explica con tus palabras el proceso de arranque desde BIOS/UEFI hasta el shell.
2. Ejecuta los comandos anteriores y dime qué observaste.
3. ¿Tu sistema usa systemd? ¿Tienes GRUB? ¿Cuánto tarda tu arranque?
4. Puedes escribirlo como diario del dojo o informe, como tú prefieras.

---

## **1. El Despertar (BIOS/UEFI)**

Cuando presionas el botón de encender, lo primero que se activa es el **BIOS o UEFI** (un programa guardado en un chip de la placa madre). Su trabajo es:

- **Revisar que todo el hardware esté bien** (RAM, disco duro, teclado, etc.).
- **Buscar un sistema operativo para arrancar**, mirando en el disco duro, USB o red.

  > _Piensa en esto como un guardia que revisa la fábrica antes de abrirla._

---

## **2. El Guía (Bootloader - GRUB, Windows Boot Manager)**

El BIOS/UEFI encuentra un **bootloader** (como GRUB en Linux o el de Windows). Este programa pequeño tiene un menú que te pregunta:

- _¿Qué sistema operativo quieres iniciar?_ (Linux, Windows, etc.).
- Una vez elegido, **carga el núcleo del sistema (kernel)** en la memoria RAM.

  > _Es como un recepcionista que te pregunta a qué oficina quieres ir y te lleva ahí._

---

## **3. El Cerebro (Kernel - Linux, Windows NT)**

El **kernel** es el jefe de todo. Pero al principio no sabe cómo manejar el disco duro u otros componentes, así que usa un **initramfs** (un "kit de emergencia" con controladores temporales). Su misión:

- **Montar el sistema de archivos principal** (donde están tus programas y archivos).
- **Pasar el control al sistema de inicio (init system)**.

  > _Es como un ingeniero que prepara las máquinas antes de que los trabajadores entren._

---

## **4. El Jefe de Operaciones (Init System - systemd, init)**

El **init system** (como `systemd` en Linux moderno) se encarga de:

- **Encender todos los servicios necesarios** (red, sonido, impresoras, etc.).
- **Gestionar programas que corren en segundo plano**.
- Finalmente, **lanzar el login** (para que puedas ingresar).

  > _Es como el gerente que asegura que todo esté listo antes de abrir las puertas._

---

## **5. ¡Bienvenido! (Login + Shell)**

Aparece la **pantalla de login** (o la terminal directamente). Cuando pones tu usuario y contraseña:

- El sistema **verifica que seas tú**.
- Te asigna un **shell** (bash, zsh, PowerShell), que es donde escribes comandos.

  > _¡Listo! Ahora puedes usar tu PC como siempre._

---

### **Resumen en 1 Minuto:**

1. **BIOS/UEFI** → Revisa el hardware y busca qué arrancar.
2. **Bootloader** → Te deja elegir el sistema operativo.
3. **Kernel** → Toma el control y prepara todo.
4. **Init System** → Enciende los servicios necesarios.
5. **Shell** → ¡Listo para usar!

**¿Ves? Es como una cadena de mandos, donde cada uno le pasa el control al siguiente hasta que todo está listo.**

¿Quieres que profundicemos en algo? ¡Dime! 🚀

2. Ejecuta los comandos anteriores y dime qué observaste.

```bash

  ls /sys/firmware/efi/
    ~  ✔ ▓▒░ ls /sys/firmware/efi
 efivars        fw_platform_size
 esrt           fw_vendor
 runtime-map    runtime
 config_table   systab

```

```bash
    ~  ✔ ▓▒░ sudo journalctl -b | head -n 50

[sudo] contraseña para sanet:
Lo siento, pruebe otra vez.
[sudo] contraseña para sanet:
jun 15 13:35:31 archlinux kernel: Linux version 6.15.2-arch1-1 (linux@archlinux) (gcc (GCC) 15.1.1 20250425, GNU ld (GNU Binutils) 2.44.0) #1 SMP PREEMPT_DYNAMIC Tue, 10 Jun 2025 21:32:33 +0000
jun 15 13:35:31 archlinux kernel: Command line: BOOT_IMAGE=/boot/vmlinuz-linux root=UUID=abc321bc-cffc-475b-9a77-0dc317176fc9 rw zswap.enabled=0 rootfstype=ext4 nvidia_drm.modeset=1 loglevel=3 quiet
jun 15 13:35:31 archlinux kernel: BIOS-provided physical RAM map:
jun 15 13:35:31 archlinux kernel: BIOS-e820: [mem 0x0000000000000000-0x0000000000057fff] usable
jun 15 13:35:31 archlinux kernel: BIOS-e820: [mem 0x0000000000058000-0x0000000000058fff] reserved

```

```bash

    ~  took  9s  ✔ PIPE|0 ▓▒░ systemd-analyze
systemd-analyze blame

Startup finished in 5.700s (firmware) + 7.435s (loader) + 6.944s (kernel) + 22.290s (userspace) = 42.370s
graphical.target reached after 21.523s in userspace.
13.448s systemd-journal-flush.service
 9.718s dev-sda7.device
 3.317s man-db.service
 2.822s upower.service
 2.295s systemd-resolved.service
 1.999s cups.service
 1.795s systemd-fsck@dev-disk-by\x2duuid-8a>
 1.399s systemd-networkd.service
 1.231s systemd-zram-setup@zram0.service
 1.126s ldconfig.service
 1.095s systemd-tmpfiles-setup-dev-early.se>
  987ms systemd-udevd.service
  803ms user@1000.service
  717ms systemd-sysusers.service
  702ms iwd.service
  523ms polkit.service
  511ms systemd-udev-trigger.service
  502ms systemd-backlight@backlight:intel_b>
  496ms systemd-modules-load.service
  464ms systemd-vconsole-setup.service
  452ms systemd-journal-catalog-update.serv>
  418ms home.mount
  393ms systemd-rfkill.service
  359ms bluetooth.service
  347ms dbus-broker.service
  334ms systemd-random-seed.service
  314ms systemd-tmpfiles-setup.service
  312ms systemd-journald.service
  248ms boot-efi.mount
  234ms systemd-timesyncd.service
  221ms power-profiles-daemon.service
  208ms dev-zram0.swap
  201ms systemd-tmpfiles-clean.service
  192ms systemd-networkd-persistent-storage>
  174ms systemd-sysctl.service
  171ms systemd-logind.service
  144ms systemd-update-utmp.service
lines 1-37...skipping...
13.448s systemd-journal-flush.service
 9.718s dev-sda7.device
 3.317s man-db.service
 2.822s upower.service
 2.295s systemd-resolved.service
 1.999s cups.service
 1.795s systemd-fsck@dev-disk-by\x2duuid-8a6fdc46\x2df57c\x2d4a49\x2dbe69\x2dbfa8e26d4231.service
 1.399s systemd-networkd.service
 1.231s systemd-zram-setup@zram0.service
 1.126s ldconfig.service
 1.095s systemd-tmpfiles-setup-dev-early.service
  987ms systemd-udevd.service
  803ms user@1000.service
  717ms systemd-sysusers.service
  702ms iwd.service
  523ms polkit.service
  511ms systemd-udev-trigger.service
  502ms systemd-backlight@backlight:intel_backlight.service
  496ms systemd-modules-load.service
  464ms systemd-vconsole-setup.service
  452ms systemd-journal-catalog-update.service
  418ms home.mount
  393ms systemd-rfkill.service
  359ms bluetooth.service
  347ms dbus-broker.service
  334ms systemd-random-seed.service
  314ms systemd-tmpfiles-setup.service
  312ms systemd-journald.service
  248ms boot-efi.mount
  234ms systemd-timesyncd.service
  221ms power-profiles-daemon.service
  208ms dev-zram0.swap
  201ms systemd-tmpfiles-clean.service
  192ms systemd-networkd-persistent-storage.service
  174ms systemd-sysctl.service
  171ms systemd-logind.service
  144ms systemd-update-utmp.service
  135ms dev-hugepages.mount
  134ms dev-mqueue.mount
  134ms systemd-udev-load-credentials.service
  132ms sys-kernel-debug.mount
  131ms sys-kernel-tracing.mount
  127ms kmod-static-nodes.service
  124ms modprobe@configfs.service
  120ms modprobe@drm.service
  119ms systemd-userdbd.service
  118ms modprobe@fuse.service
   85ms systemd-remount-fs.service
   70ms systemd-hostnamed.service
   60ms systemd-tmpfiles-setup-dev.service
   48ms systemd-network-generator.service
   43ms user-runtime-dir@1000.service
   39ms systemd-update-done.service
   35ms rtkit-daemon.service
   30ms systemd-user-sessions.service
   19ms sys-fs-fuse-connections.mount
   18ms sys-kernel-config.mount
   16ms tmp.mount
   15ms modprobe@dm_mod.service
   14ms modprobe@loop.service
lines 21-60/60 (END)
```

```bash
    ~  took  2m 15s  ✔ ▓▒░ uname -r
ls /boot

6.15.2-arch1-1
 efi   grub   initramfs-linux-fallback.img   initramfs-linux.img   intel-ucode.img   vmlinuz-linux
```
