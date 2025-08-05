# **operaciones booleanas**

son las reglas que nos permiten combinar o modificar valores `True` (Verdadero) y `False` (Falso). Aquí tienes un resumen **claro y práctico** de las principales:

## 1. **AND (Y lógico – Conjunción)**

- **Símbolo**: `&&` (en muchos lenguajes) o `and` (ej. Python).
- **Regla**: El resultado es `True` **solo si ambos operandos son `True`**.

---

- **Tabla de verdad**:

  - True AND True = True
  - True AND False = False
  - False AND True = False
  - False AND False = False

---

---

- **Ejemplo**:

```python
tiene_pasaporte = True
tiene_visa = False
puede_viajar = tiene_pasaporte and tiene_visa  # False (porque falta la visa)
```

---

## 2. **OR (O lógico – Disyunción)**

- **Símbolo**: `||` (en muchos lenguajes) o `or` (ej. Python).
- **Regla**: El resultado es `True` **si al menos un operando es `True`**

---

- **Tabla de verdad**:

- True OR True = True
- True OR False = True
- False OR True = True
- False OR False = False

---

---

- **Ejemplo**:

  ```python
  es_estudiante = True
  es_jubilado = False
  descuento = es_estudiante or es_jubilado  # True (porque es estudiante)
  ```

---

## 3. **NOT (Negación)**

- **Símbolo**: `!` (en muchos lenguajes) o `not` (ej. Python).
- **Regla**: **Invierte** el valor booleano.

---

- **Tabla de verdad**:

  NOT True = False
  NOT False = True

---

- **Ejemplo**:

  ```python
  llueve = True
  no_llueve = not llueve  # False (niega el True original)
  ```

---

## 4. **XOR (O exclusivo)**

- **Símbolo**: `^` (en algunos lenguajes) o se simula con `!=`.
- **Regla**: El resultado es `True` **solo si los operandos son distintos**.
- **Tabla de verdad**:

  ```
  True XOR True = False
  True XOR False = True
  False XOR True = True
  False XOR False = False
  ```

- **Ejemplo**:

  ```python
  boton_A = True
  boton_B = False
  activar_alarma = boton_A != boton_B  # True (uno está activado y el otro no)
  ```

---

### ¿Cómo se diferencian?

- **AND** exige que **todos** sean verdaderos.
- **OR** basta con que **uno** sea verdadero.
- **NOT** es un "interruptor" que invierte el valor.
- **XOR** es como un OR pero excluye el caso en que ambos son `True`.

---

### Bonus: Prioridad de operadores (jerarquía)

En expresiones complejas, el orden es:

1. `NOT` → 2. `AND` → 3. `OR`.  
   _Ejemplo_:

```python
resultado = True or False and not True  # Se evalúa como: True or (False and (not True)) → True
```
