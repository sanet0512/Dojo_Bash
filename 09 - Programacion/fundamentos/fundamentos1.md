# _🔍 Primera enseñanza:_

“Un programa es una manifestación física (en código) de uno o más algoritmos.”

Ahora te pregunto:

## **_¿Qué es un algoritmo antes de estar en un lenguaje de programación?_**

- es solo instrucción y codigo. mas que todo instrucción dada a una maquina.

## **¿Puede haber un algoritmo que no sea computable por una máquina? ¿Cómo distinguirlo?**

- si puede haber problemas que no son computables, y es cuando no hay una solucion a un problema especifico sin intervencion
  pero no me queda muy claro

## **¿Qué significa que un programa “se ejecuta”? ¿Qué ocurre desde que lo lanzas hasta que hace algo?**

- ¿Qué pasa desde que lo lanzas hasta que hace algo?
  Imagina que abres Spotify para reproducir una canción. Esto es lo que ocurre tras bambalinas:

¡Haz doble clic! 🖱️

Tú: Abres el programa (ejecutable, como spotify.exe).

La computadora: Busca el archivo en el disco duro y lo carga en la memoria RAM (como sacar un libro de una estantería y ponerlo en tu mesa de trabajo).

El sistema operativo se pone serio 💻

Windows/Linux/macOS prepara un "espacio seguro" para que el programa funcione (como darle su propio cuarto con reglas).

Asigna recursos: CPU, memoria, permisos (¿puede acceder a internet? ¿a tus archivos?).

La CPU empieza a leer el programa 🧠

La CPU (el cerebro de la computadora) lee las instrucciones del programa en código máquina (unos y ceros que solo ella entiende).

Ejemplo de instrucciones típicas:

"Reserva memoria para la canción."

"Conéctate a los servidores de Spotify."

"Dibuja la interfaz en pantalla."

El programa hace su magia ✨

Si es un juego: Calcula físicas, dibuja gráficos, escucha tu teclado.

Si es Spotify: Descarga la canción, la decodifica, envía el audio a tus parlantes.

¡Interacción! 🎶

Tú le das órdenes (play, pausa, siguiente).

El programa reacciona (ejecuta nuevas instrucciones).

Fin (o no) ⏹️

Si cierras el programa: Libera la memoria, guarda configuraciones y "se despide".

Si se cuelga: La CPU se atasca en un bucle sin salida (¡como un hamster en una rueda infinita!).

# **⚔️ Primer Reto Mental (Kata del Pensamiento)**

- Define con tus propias palabras:

## _Algoritmo_

**"Un algoritmo es un conjunto de instrucciones ✏️ que debe ser:**  
1️⃣ **Preciso** (nada de 'un poquito', sino '5 gramos').  
2️⃣ **Ordenado** (primero A, luego B).  
3️⃣ **Resolver un problema** 🎯 (como sumar, buscar, etc.).  
4️⃣ **Repetible** 🔄 (siempre funciona igual con los mismos pasos)."

**Ejemplo rápido:**

- ❌ _"Agrega azúcar al gusto"_ → **No es algoritmo** (no es preciso).
- ✅ _"1. Agrega 10g de azúcar. 2. Revuelve 3 veces"_ → **¡Sí es algoritmo!**

## _Programa_

Un **programa** es como la **versión "en acción"** de un algoritmo, lista para que la computadora la ejecute. Aquí está la explicación simple y clara:

---

### **🚀 Programa = Algoritmo + Lenguaje que la computadora entiende**

- **Algoritmo:** La receta teórica (los pasos en papel).
- **Programa:** Esa receta escrita **en código** (Python, Java, etc.) que la computadora puede **ejecutar directamente**.

**Ejemplo:**

- **Algoritmo (idea):** _"Suma 2 + 2 y muestra el resultado"_.
- **Programa (implementación):**

  ```python
  print(2 + 2)  # ¡Esto sí lo entiende la computadora!
  ```

---

### **🔑 Características clave de un programa:**

1. **Hecho para máquinas:** Usa un lenguaje de programación (no palabras humanas).
2. **Ejecutable:** La computadora lo "lee" y hace lo que dice (como un manual de instrucciones en código binario).
3. **Puede fallar:** Si el algoritmo está mal o el código tiene errores (¡como una receta con pasos equivocados!).

---

### **📱 Ejemplo cotidiano:**

- **Algoritmo de Instagram:** _"Si el usuario da ‘like’, muestra posts similares"_.
- **Programa de Instagram:** El código real (millones de líneas) que hace que eso ocurra cuando tocas el ❤️.

---

### **💡 ¿Diferencia final?**

- **Algoritmo:** La idea abstracta (_"cómo ordenar números"_).
- **Programa:** La idea convertida en software (_código que ordena números_).

**¡Como comparar un plano (algoritmo) con una casa construida (programa)!** 🏗️ → 🏠

## **Proceso**

¡Excelente pregunta! Vamos a cerrar el ciclo con el concepto de **"proceso"**, pero de una forma **super sencilla y práctica**. Imagina que ya tienes claro qué es un algoritmo (la receta) y un programa (la receta escrita en código). Ahora, el **proceso** es lo que sucede cuando todo eso **se pone en marcha**.

---

### **🚀 Proceso = Programa en ejecución**

Es como cuando **prendes una licuadora** (el programa) y comienza a **triturar frutas** (el proceso).

#### **Características clave:**

1. **Dinámico:** Ocupa recursos _en tiempo real_ (CPU, memoria, etc.).
2. **Vivo:** Existe solo mientras se ejecuta (si cierras Spotify, el proceso termina).
3. **Gestionado por el sistema operativo:** Como un "chef" que controla qué procesos usan más recursos.

---

### **📱 Ejemplo cotidiano:**

- **Programa:** El archivo `spotify.exe` (instrucciones en disco).
- **Proceso:** Cuando lo abres y _realmente_ reproduce música (usa RAM, CPU, red, etc.).

---

### **🔍 ¿Cómo distinguirlos?**

| Concepto      | Ejemplo                                | Analogía                  |
| ------------- | -------------------------------------- | ------------------------- |
| **Algoritmo** | _"Pasos para hacer un smoothie"_       | La receta en un libro.    |
| **Programa**  | _"Licuadora programada con la receta"_ | La licuadora con botones. |
| **Proceso**   | _"Licuadora triturando frutas ahora"_  | La licuadora _en uso_.    |

---

### **💡 Importante:**

- Un mismo programa puede tener **múltiples procesos** (ej: 10 pestañas de Chrome abiertas = 10 procesos).
- Si un proceso **se bloquea**, no afecta a los demás (¡como que se queme tu licuadora pero el microondas siga funcionando!).

---

**En una frase:**  
_"El proceso es tu programa haciendo su trabajo, con todos los recursos que necesita, aquí y ahora."_ ⚡

Y luego responde:

¿Por qué no todos los procesos son programas? ¿Y por qué no todos los algoritmos están hechos para computadoras?

### **1️⃣ ¿Por qué no todos los procesos son programas?**

- **Un programa** es un archivo ejecutable (como `chrome.exe` o `spotify`) que está **almacenado en el disco**.
- **Un proceso** es cuando ese programa **se carga en memoria y se ejecuta**, consumiendo recursos (CPU, RAM, etc.).

#### **Ejemplo clave:**

- Si abres **3 ventanas de Chrome**, hay:
  - **1 programa** (el archivo `chrome.exe` en tu disco).
  - **3 procesos** (uno por cada ventana, cada uno usando memoria y CPU por separado).

#### **Procesos que no son programas:**

- Algunos procesos son **creados por el sistema operativo** (no por un archivo ejecutable tuyo). Por ejemplo:
  - **Servicios de Windows/Linux** (como el que maneja tu Wi-Fi o impresora).
  - **Procesos en segundo plano** (actualizaciones automáticas, antivirus, etc.).

---

### **2️⃣ ¿Por qué no todos los algoritmos están hechos para computadoras?**

[[.md|]]

- **Un algoritmo** es solo una **secuencia lógica de pasos** para resolver un problema, ¡y no siempre es digital!

#### **Ejemplos de algoritmos "no computarizados":**

1. **Receta de cocina** 🧑🍳:

   - _Paso 1: Cortar cebolla. Paso 2: Dorar en aceite..._
   - **No necesita una computadora**, pero es un algoritmo.

2. **Manual de primeros auxilios** 🏥:

   - _"Si hay sangrado, presiona la herida con gasa limpia."_
   - **Algoritmo para humanos**, no para máquinas.

3. **Instrucciones para armar un mueble** 🛠️:
   - _"Atornillar pieza A con B usando tornillo X."_
   - **Algoritmo físico**, no requiere código.

#### **Algoritmos vs. Programas:**

- **Algoritmo:** La idea abstracta (puede ser en papel, en tu cabeza, o para humanos).
- **Programa:** El algoritmo _convertido_ a un lenguaje que la computadora entiende (Python, C++, etc.).

---

### **🔑 Conclusión clave:**

- **Proceso ≠ Programa**: Porque un proceso es la _ejecución_ (viva) de un programa (o incluso de servicios del sistema).
- **Algoritmo ≠ Computadora**: Porque los algoritmos son **métodos generales** (humanos o digitales). Solo se vuelven "programas" cuando se _codifican_.

---

**Ejemplo final para recordar:**

- **Algoritmo humano:** _"Para cruzar la calle: 1) Mira a ambos lados. 2) Si no hay autos, avanza."_ 🚸
- **Algoritmo computarizado:** _"Si sensor_detecta_auto == False: avanza_robot()"_ 🤖

💡 Al final de este primer ciclo tendrás claro:

Cómo fluye la información desde un algoritmo abstracto hasta un programa ejecutable.

Qué es una instrucción.

Qué hace posible que un programa “exista” y “viva” en una máquina.
