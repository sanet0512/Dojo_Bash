# **Preguntas Adicionales**

## ¿Qué significa que los pasos deben ser no ambiguos?

que deben ser claros y precisos

## Qué pasaría si un paso depende del “buen juicio” del ejecutor?

**depende del "buen juicio" del ejecutor** (sea humano o máquina), dejaría de ser un algoritmo _en el sentido técnico_. Aquí te explico por qué, con ejemplos claros:

---

### **🚨 Problema: El "buen juicio" rompe las reglas de un algoritmo**

Un algoritmo debe ser:

1. **Preciso** (sin ambigüedades).
2. **Determinista** (mismos pasos → mismo resultado).
3. **Reproducible** (cualquiera puede seguirlo).

Si un paso dice algo como:

- _"Agrega sal al gusto"_ 🧂
- _"Decide si el número es ‘suficientemente grande’"_ 🤔
- _"Si parece peligroso, cancela"_ ⚠️

**¡Deja de ser un algoritmo válido!** (al menos para computadoras).

---

### **¿Qué pasa en estos casos?**

#### **1. Si el ejecutor es un humano** 👩🍳👨⚕️

- **Ventaja:** Puede interpretar subjetividad (ej: chefs, médicos, artistas).
- **Desventaja:** El resultado **varía** según quien lo ejecute.
  - Ejemplo:
    - _Algoritmo de cocina:_ _"Cocina hasta que se vea dorado"_ → 🧑🍳 A lo deja crujiente, 🧑🍳 B lo quema.

#### **2. Si el ejecutor es una computadora** 💻

- **¡Error!** Las máquinas **no tienen juicio** (no entienden "al gusto" o "si parece").
  - Ejemplo:
    - _Código:_ `if (la_situacion_es_peligrosa()) { cancelar(); }`
    - **Problema:** ¿Cómo defines `la_situacion_es_peligrosa()` _sin ambigüedad_?

---

### **Soluciones posibles** 🔧

#### **Para humanos:**

- **Convertir la subjetividad en reglas claras**:
  - ❌ _"Agrega azúcar al gusto"_ → ✅ _"Agrega 10g de azúcar"_.

#### **Para máquinas:**

- **Usar criterios medibles**:
  - ❌ _"Si el cliente parece sospechoso, recházalo"_
  - ✅ _"Si el cliente tiene >3 intentos fallidos de pago, recházalo"_.

#### **Cuando no se puede evitar la subjetividad** (ej: IA, arte digital)

- **Se usan algoritmos probabilísticos o heurísticas** (que _aproximan_ decisiones):
  - Ejemplo: _"Clasifica este email como spam si contiene palabras clave X con 90% de confianza"_.

---

### **Ejemplo técnico:**

Supongamos un algoritmo para **aprobar préstamos bancarios**:

- **❌ No algorítmico:** _"Si el cliente ‘parece’ confiable, aprueba"_.
- **✅ Algorítmico:** _"Si el cliente tiene score de crédito >700 y deuda <30% de ingresos, aprueba"_.

---

### **Conclusión:**

- **Algoritmos puros** (como los de programación) **no pueden depender del juicio humano o subjetividad**.
- **En la vida real**, muchos procesos _parecen_ algoritmos pero no lo son (porque usan criterios flexibles).
- **Para máquinas**, todo debe traducirse a **lógica binaria** (sí/no, 0/1).

## **¿Puede un algoritmo tener decisiones o ramificaciones?**

Los algoritmos pueden (y suelen) tener **decisiones o ramificaciones**, lo que los hace flexibles y adaptables. Aquí te lo explico de manera sencilla y con ejemplos claros:

---

### **1️⃣ ¿Qué son las decisiones/ramificaciones en un algoritmo?**

Son puntos donde el algoritmo **elige entre diferentes caminos** según una condición. Se implementan con estructuras como:

- **`Si... entonces...`** (_if... else_ en programación).
- **`Según... haz...`** (_switch_ o _case_).

---

### **2️⃣ Ejemplos cotidianos**

#### **🔹 Ejemplo humano:**

_Algoritmo para cruzar la calle:_

1. **Si** el semáforo está en verde **→** Cruza.
2. **Si no** (está en rojo) **→** Espera.

#### **🔹 Ejemplo computacional:**

_Algoritmo para determinar si un número es par o impar:_

1. **Si** (número % 2 == 0) **→** Imprime "Par".
2. **Si no** **→** Imprime "Impar".

---

### **3️⃣ ¿Por qué son útiles las ramificaciones?**

- Permiten que el algoritmo **reaccione a diferentes situaciones**.
- Evitan tener que escribir un algoritmo separado para cada caso posible.

---

### **4️⃣ Estructuras comunes para ramificar**

#### **a) Condicionales simples (`if`):**

```python
if edad >= 18:
    print("Mayor de edad")
else:
    print("Menor de edad")
```

#### **b) Condicionales múltiples (`elif`):**

```python
if nota >= 90:
    print("A")
elif nota >= 80:
    print("B")
else:
    print("C")
```

#### **c) Selección (`switch` o `match`):**

```python
# En Python 3.10+
match dia_semana:
    case "Lunes":
        print("¡Ánimo!")
    case "Viernes":
        print("¡Fin de semana cerca!")
    case _:
        print("Día normal")
```

---

### **5️⃣ Casos reales donde se usan ramificaciones**

- **Redes sociales:** _Si_ el usuario hace "like", _entonces_ muestra contenido similar.
- **Sistemas de acceso:** _Si_ la contraseña es correcta, _entonces_ permite entrar.
- **Videojuegos:** _Si_ el jugador tiene poca vida, _entonces_ activa una alerta.

---

### **6️⃣ ¿Puede un algoritmo tener muchas ramificaciones?**

¡Sí! Pero hay que mantenerlo **ordenado** para no complicarlo. Ejemplo:

```python
if hora < 12:
    print("Buenos días")
elif hora < 18:
    print("Buenas tardes")
else:
    print("Buenas noches")
```

---

### **🚀 Conclusión**

- **Sí, los algoritmos pueden tener decisiones y ramificaciones**.
- **Las condiciones** (`if`, `else`, `switch`) son la herramienta clave para esto.
- **Esto los hace poderosos** para manejar situaciones complejas.

## **¿Qué diferencia hay entre un programa, un proceso y un hilo?**

---

### **1️⃣ Programa** 📜

- **Qué es:** Un archivo estático (como `chrome.exe` o `notepad.exe`) que contiene **instrucciones escritas en código**.
- **Analogía:** Un libro de recetas en tu biblioteca.
- **Características:**
  - Vive en tu disco duro.
  - No consume recursos hasta que se ejecuta.

---

### **2️⃣ Proceso** 🏃‍♂️

- **Qué es:** Un programa **en ejecución**, cargado en memoria y usando recursos (CPU, RAM, etc.).
- **Analogía:** Cocinar una receta del libro (usando ollas, ingredientes y fuego).
- **Características:**
  - Tiene su propio espacio de memoria.
  - Independiente de otros procesos (si uno falla, no afecta a los demás).
- **Ejemplo:**
  - Abres 3 pestañas de Chrome → **3 procesos** (uno por pestaña).

---

### **3️⃣ Hilo (Thread)** 🧵

- **Qué es:** Una **parte de un proceso** que puede ejecutarse en paralelo (como "sub-tareas" dentro del mismo proceso).
- **Analogía:** Varios ayudantes cocinando diferentes partes de la misma receta (ej: uno corta verduras, otro calienta el agua).
- **Características:**
  - Comparten la memoria del proceso padre.
  - Más ligeros que un proceso (crearlos cuesta menos recursos).
- **Ejemplo:**
  - Un juego usando:
    - 1 hilo para los gráficos.
    - 1 hilo para el sonido.
    - 1 hilo para la IA de los enemigos.

---

### **🆚 Diferencias clave**

| Concepto     | ¿Dónde existe?       | ¿Usa recursos?                           | Independencia | Ejemplo                                             |
| ------------ | -------------------- | ---------------------------------------- | ------------- | --------------------------------------------------- |
| **Programa** | Disco duro           | No (hasta que se ejecuta)                | N/A           | `photoshop.exe`                                     |
| **Proceso**  | Memoria RAM          | Sí (CPU, RAM, etc.)                      | Total         | Photoshop abierto editando una imagen               |
| **Hilo**     | Dentro de un proceso | Sí, pero comparte memoria con su proceso | Parcial       | Photoshop renderizando + aplicando filtros a la vez |

---

### **⚡ ¿Por qué importa?**

- **Programa:** Es el "archivo muerto" que instalas.
- **Proceso:** Es el programa "vivo" haciendo algo.
- **Hilo:** Permite que un proceso **haga varias cosas a la vez** (ej: navegador descargando archivos mientras muestras una página).

---

**Ejemplo técnico en código:**

```python
# Programa: Este archivo (script.py)
# Proceso: Cuando ejecutas "python script.py"
# Hilo: Si usas librerías como threading para hacer tareas en paralelo.
```
