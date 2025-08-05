# 🧭 **Dojo 1.8 — Redes en GNU/Linux**

> “Comprender las redes es comprender cómo se comunican los sistemas.”

---

## 🧠 Conceptos clave

### 1️⃣ **¿Qué es una red?**

Un conjunto de dispositivos interconectados que comparten información mediante **protocolos de comunicación** (como TCP/IP).

---

### 2️⃣ **Dirección IP**

- **IPv4:** 4 números (0-255) separados por puntos (ej: `192.168.1.10`).
- **IPv6:** más largo, para más dispositivos (ej: `2001:0db8:85a3::8a2e:0370:7334`).

---

### 3️⃣ **Interfaces de red**

Cada dispositivo de red (cableada, WiFi, virtual) es representado por un **nombre de interfaz**:

- `eth0`, `enp2s0` (Ethernet)
- `wlan0`, `wlp3s0` (WiFi)
- `lo` (loopback, `127.0.0.1`)

---

## 🔧 Comandos esenciales

### 📡 Ver interfaces y estado

```bash
ip addr show
```

o

```bash
ip a
```

---

### 🌐 Ver rutas y gateway

```bash
ip route
```

---

### 📶 Pings para probar conectividad

```bash
ping 8.8.8.8
ping google.com
```

---

### 🔍 Resolver nombres de dominio

```bash
nslookup google.com
```

o

```bash
dig google.com
```

---

### 🕵️ Escuchar conexiones abiertas

```bash
ss -tuln
```

o

```bash
netstat -tuln
```

---

### 🩺 Herramientas de diagnóstico

- `traceroute google.com` → Ver el camino de paquetes.
- `nmap` → Escaneo de puertos.
- `nc` (netcat) → Probar puertos manualmente.

---

## 🧪 **Misión práctica**

1️⃣ **Ver tus interfaces y tu IP actual**

```bash
ip a
```

2️⃣ **Ver tu gateway y rutas**

```bash
ip route
```

3️⃣ **Hacer ping a un sitio externo**

```bash
ping google.com -c 4
```

4️⃣ **Ver puertos abiertos en tu máquina**

```bash
ss -tuln
```

5️⃣ **Usar `nslookup` para resolver un dominio**

```bash
nslookup archlinux.org
```

---

## 🎯 **Tarea del dojo**

✅ Explica con tus palabras:

- Qué es una dirección IP.
- Qué es una interfaz de red.
- Qué es el gateway.

✅ Ejecútalo en tu sistema y documenta:

- Tu IP local.
- Tu gateway.
- Resultado del `ping` y `nslookup`.

✅ Explora con:

```bash
traceroute archlinux.org
```

y comparte qué ves.

✅ Si deseas:

- Instala y prueba `nmap` para escanear tu propia máquina:

```bash
sudo pacman -S nmap
nmap localhost
```

---
