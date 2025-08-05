---
# 📜 **Control del Flujo – El Camino de la Decisión**

_Pasamos del "saber evaluar" al "saber decidir"._
---

## 🔥 **Kata del Pensamiento 4: Condicionales y flujo de control**

### ❓ **¿Qué es una estructura de control?**

Imagina que estás en un videojuego y llegas a un cruce de caminos:

- **Si** tienes una llave, pasas al castillo.
- **Si no**, vuelves al pueblo.

¡Eso es una estructura de control! Son como "guías" que le dicen al programa qué camino tomar según las condiciones.

---

### 🔍 **¿Qué tipos de estructuras de control existen?**

Hay tres grandes grupos:

1. **Condicionales** (tomas decisiones):

   - `if`, `if-else`, `elif`, `switch/case` (como elegir entre helados de fresa, chocolate o vainilla).

2. **Bucles** (repites acciones):

   - `while`, `for`, `do-while` (como repetir un salto hasta que alcances una plataforma).

3. **Saltos** (cambias el flujo):
   - `break`, `continue`, `return` (como usar un atajo o salir de un nivel).

---

### 🤔 **¿En qué se diferencian `if`, `if-else`, `elif` y `switch/case`?**

| Estructura        | Ejemplo en la vida real                                                    |
| ----------------- | -------------------------------------------------------------------------- |
| **`if`**          | "Si tengo hambre, como una manzana".                                       |
| **`if-else`**     | "Si está lloviendo, llevo paraguas; si no, llevo gafas de sol".            |
| **`elif`**        | "Si es lunes, como pasta; si es martes, como pizza; si no, como ensalada". |
| **`switch/case`** | "Según el día: lunes → corro, martes → nado, miércoles → yoga...".         |

_(En Python no hay `switch/case`, pero se puede imitar con `elif` o diccionarios)._

---

### 📊 **¿Qué tienen que ver los diagramas de flujo?**

Son como **mapas** que dibujan cómo funciona tu código. Por ejemplo, el flujo de "encender una lámpara":

```
  [Inicio]
     │
     ▼
  ¿Hay energía? ────Sí───▶ [Enciende lámpara]
     │ No                     │
     ▼                        ▼
[Muestra "Sin energía"]      [Fin]
     │
     ▼
  [Fin]
```

_(¡Dibújalo en papel! Los rombos son preguntas, los rectángulos son acciones)._

---

## ⚠️ **Extra: ¡Cuidado con los bucles infinitos!**

### ❌ **¿Qué pasa si olvidas la condición de salida?**

¡Tu programa se vuelve como un hamster en una rueda sin fin! Ejemplo:

```python
i = 0
while i < 10:  # ¡Si no pones i += 1, esto nunca termina!
    print("Atrapado en el bucle... 😵")
```

### 🔥 **Errores comunes en bucles:**

1. **Condición imposible**: `while x > 10` (pero `x` siempre vale 5).
2. **Olvidar actualizar**: Como el ejemplo de arriba.
3. **Salir demasiado pronto**: Usar `break` sin querer.
4. **Bucles anidados**: Perderse en varios niveles de repeticiones.

---

### 🎯 **Conclusión:**

Las estructuras de control son **superpoderes** para decidir y repetir acciones en tu código. ¡Úsalas con sabiduría!
