# **1. Operador AND (`&&` o `and`)**

Devuelve `True` **solo si ambos operandos son verdaderos**.

| **A** | **B** | **A AND B** |
| ----- | ----- | ----------- |
| True  | True  | **True**    |
| True  | False | False       |
| False | True  | False       |
| False | False | False       |

**Ejemplo**:

```python
if tiene_pasaporte and tiene_visa:  # Solo True si AMBAS son True
    print("Puede viajar")
```

---

# **2. Operador OR (`||` o `or`)**

Devuelve `True` **si al menos un operando es verdadero**.

| **A** | **B** | **A OR B** |
| ----- | ----- | ---------- |
| True  | True  | **True**   |
| True  | False | **True**   |
| False | True  | **True**   |
| False | False | False      |

**Ejemplo**:

```python
if es_estudiante or es_jubilado:  # True si AL MENOS UNA es True
    print("Aplica a descuento")
```

---

# **3. Operador NOT (`!` o `not`)**

**Invierte** el valor booleano.

| **A** | **NOT A** |
| ----- | --------- |
| True  | False     |
| False | **True**  |

**Ejemplo**:

```python
if not esta_lloviendo:  # Convierte True → False y viceversa
    print("Puedes salir")
```

---

# **Bonus: XOR (O exclusivo)**

Devuelve `True` **solo si los operandos son distintos**.

| **A** | **B** | **A XOR B** |
| ----- | ----- | ----------- |
| True  | True  | False       |
| True  | False | **True**    |
| False | True  | **True**    |
| False | False | False       |

**Ejemplo en Python** (no tiene operador XOR nativo, pero se simula con `!=`):

```python
if boton_A != boton_B:  # True si uno es True y el otro False
    print("Activado")
```

---

# **¿Para qué sirven estas tablas?**

- **Predecir el resultado** de condiciones complejas.
- **Depurar errores** lógicos en tu código.
- **Optimizar expresiones** (ej: Saber que `A AND False` siempre es `False`).
