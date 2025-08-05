# 🔧 Parte 1: Dos terminales y el proceso `sleep`

1. **Terminal 1**:

   ```bash
   sleep 1000
   ```

   - Esto es como poner un temporizador de 1000 segundos (16 min). La terminal se "quedará pensando".

2. **Terminal 2**:

   ```bash
   ps aux | grep sleep
   ```

   Verás algo como:

   ```
   tu_usuario  1234  0.0  0.0   12345  678 ?        S    12:34   0:00 sleep 1000
   ```

   - **El número 1234 es el PID** (el carné de identidad del proceso)

3. **Mata el proceso**:

   ```bash
   kill -9 1234
   ```

   - **¡Boom! 💥** En la Terminal 1 verás `Terminado` y recuperarás el control.
   - Es como apagar un microondas a mitad de cuenta regresiva ⏱️🔌

---

# 🎮 Parte 2: Procesos en segundo plano (como un videojuego)

```bash
gedit &    # Abre el editor de texto EN SEGUNDO PLANO
```

- El `&` es como decir: "Abre esto pero déjame seguir usando la terminal".

**Comandos mágicos**:

```bash
jobs       # Verás: [1]  + corriendo    gedit
fg         # Trae gedit al PRIMER PLANO (como maximizar una ventana)
Ctrl+Z     # ¡Pausa! ❄️ (el programa queda congelado)
bg         # Reanuda gedit en SEGUNDO PLANO (sigue corriendo pero oculto)
```

**Es como manejar tu música**:

- `jobs` = Ver tu playlist
- `fg` = Poner una canción en volumen alto
- `Ctrl+Z` = Pausar
- `bg` = Seguir escuchando en volumen bajo

---

# 📊 Parte 3: Ver el sistema en tiempo real

```bash
top
```

Verás una pantalla tipo:

```
PID USUARIO  %CPU %MEM  COMANDO
1234 tu_user  5.2  2.1  gedit
5678 root    20.0  0.5  python
```

- **Es como el tablero de un avión ✈️**: ves qué programas consumen más recursos (CPU = procesador, MEM = memoria).
- Presiona `q` para salir.

**Si tienes `htop` (instálalo con `sudo apt install htop`)**:

```bash
htop
```

- Es igual pero más bonito y con colores 🌈. Puedes matar procesos con `F9`.

---

# 💡 Tips clave

1. **PID = Número único** de cada proceso (como tu DNI)
2. **`kill -9` = Fuerza bruta** para terminar procesos rebeldes
3. **`&` y `bg`** = Multitarea (como tener apps en segundo plano en el celular)
4. **`Ctrl+Z`** = Pausar sin cerrar (como minimizar un juego sin perder progreso)
