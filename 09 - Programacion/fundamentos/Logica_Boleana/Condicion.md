# **condición**

En programación es una **expresión que se evalúa como `True` (verdadero) o `False` (falso)** y que **determina si un bloque de código se ejecuta o no**. Es la base de la toma de decisiones en los programas.

---

## **¿Para qué sirve?**

- **Controlar el flujo del programa**: Decidir qué acciones realizar según ciertas reglas.
- **Filtrar datos**: Ejecutar código solo si se cumplen ciertos requisitos.
- **Manejar errores**: Actuar diferente si hay un problema.

---

## **Partes clave de una condición**

1. **Expresión booleana**: Comparación o operación lógica que devuelve `True` o `False`.

   - Ejemplos:

     ```python
     edad >= 18           # ¿La edad es mayor o igual a 18?
     nombre == "Ana"      # ¿El nombre es "Ana"?
     not esta_lloviendo   # ¿NO está lloviendo?
     ```

2. **Estructuras de control**:

   - **`if` (si)**: Ejecuta código **solo si la condición es `True`**.

     ```python
     if edad >= 18:
         print("Eres mayor de edad")  # Solo se ejecuta si edad es >= 18
     ```

   - **`else` (si no)**: Se ejecuta **cuando la condición del `if` es `False`**.

     ```python
     if edad >= 18:
         print("Eres mayor de edad")
     else:
         print("Eres menor de edad")  # Se ejecuta si edad < 18
     ```

   - **`elif` (else if)**: Para evaluar **múltiples condiciones en orden**.

     ```python
     if nota >= 90:
         print("Aprobado con A")
     elif nota >= 80:
         print("Aprobado con B")  # Se chequea si la primera condición fue False
     else:
         print("Reprobado")
     ```

---

## **¿Dónde se usan condiciones?**

- **Validaciones**:

  ```python
  if usuario == "admin" and contraseña == "1234":
      print("Acceso permitido")
  ```

- **Bucles**: Decidir si continuar o detener un bucle (`while`, `for`).

  ```python
  while energia > 0:
      print("Jugando...")
      energia -= 10
  ```

- **Manejo de errores**:

  ```python
  if archivo.exists():
      leer_archivo()
  else:
      print("Error: Archivo no encontrado")
  ```

---

### **Dato clave**

Las condiciones **no solo dependen de comparaciones** (`>`, `==`, etc.), sino también de **valores booleanos directos** o funciones que los retornen:

```python
if esta_activo:  # Asume que esta_activo es True o False
    print("Usuario activo")
```

---

### Ejemplo completo

```python
edad = 20
tiene_licencia = True

if edad >= 18 and tiene_licencia:
    print("Puedes conducir")
else:
    print("No cumples los requisitos")
```

**Salida**: `Puedes conducir` (porque ambas condiciones son `True`).

## **¿Qué sucede si una condición tiene un valor intermedio? ¿Puede ocurrir?**

**las condiciones siempre se evalúan como `True` o `False`** (nada intermedio). Pero hay situaciones donde _parece_ haber ambigüedad. Vamos aclararlo con ejemplos:

---

### 1. **Valores no booleanos en condiciones**

En muchos lenguajes, se pueden usar valores no booleanos (como números, cadenas o listas) en una condición. El lenguaje los **convierte automáticamente a booleano** según estas reglas:

- **Valores que se consideran `False`** (llamados _falsy_):

  - `0` (entero o flotante).
  - `""` (cadena vacía).
  - `[]`, `{}`, `None` (listas/diccionarios vacíos o `None` en Python).
  - `False` (obviamente).

- **Valores que se consideran `True`** (_truthy_):
  - Cualquier otro número distinto de `0` (ej. `1`, `-5`, `3.14`).
  - Cadenas no vacías (ej. `"hola"`).
  - Listas/diccionarios no vacíos (ej. `[1, 2]`).

#### Ejemplo en Python

```python
if 5:  # 5 es "truthy" → se evalúa como True
    print("Se ejecuta")  # Esto se imprimirá

if "":  # Cadena vacía es "falsy" → False
    print("No se ejecuta")  # Esto NO se imprime
```

---

### 2. **¿Puede haber un "valor intermedio"?**

**No**, pero hay casos que pueden confundir:

- **Expresiones con resultados no booleanos**:

  ```python
  resultado = 10 > 5  # Esto es True (no hay intermedios)
  ```

- **Funciones que retornan otros valores**:

  ```python
  def es_par(num):
      return num % 2 == 0  # Retorna True o False, nada intermedio

  if es_par(4):  # True
      print("Es par")
  ```

- **Errores comunes**:  
  Si accidentalmente usas una asignación (`=`) en lugar de una comparación (`==`):

  ```python
  if x = 5:  # Error de sintaxis en Python (pero en C se evalúa como el valor asignado, 5 → "truthy")
  ```

---

### 3. **Lenguajes con "ternarios" o valores nulos**

Algunos lenguajes tienen conceptos como:

- **`None` o `null`**: Representan "ausencia de valor", pero en una condición se evalúan como `False`.
- **`NaN` (Not a Number)**: En operaciones matemáticas, pero en condiciones suele ser `True` (es un valor especial).

Ejemplo con `None`:

```python
valor = None
if valor:  # Evaluado como False
    print("No se ejecuta")
```

---

### Clave

**Las condiciones siempre terminan reduciéndose a `True` o `False`**, incluso si pasas un número, cadena o objeto. El lenguaje aplica reglas internas (_truthy/falsy_) para convertirlos.
