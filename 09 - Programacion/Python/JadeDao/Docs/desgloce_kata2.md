---
# 🐍 **Kata 2: Cálculo del Área de un Rectángulo en Python**

## 🌌 **Propósito del programa**

Este proyecto tiene como objetivo **aprender y documentar** el proceso de desarrollo mediante un ejercicio simple (calcular el área de un rectángulo), aplicando metodologías y fundamentos de programación profesional para escalar el conocimiento.
---

## 🔍 **Fundamentos aplicados**

Este kata usa principios importantes de programación y arquitectura de forma simple y clara:

- **Principio de responsabilidad única:** Cada función tiene un trabajo claro: `calculate_area` solo calcula, `get_positive_float` solo pide y valida datos, y `main` organiza el flujo. Esto facilita entender el código y hacer cambios sin dañar otras partes.

- **Encapsulamiento:** La lógica de pedir datos y la lógica de calcular están separadas en funciones distintas. Esto ayuda a que si en el futuro cambias la forma de pedir datos, no afecte el cálculo.

- **Tipado explícito:** Al escribir `width: float` y `-> float`, dejas claro qué espera recibir y qué devuelve cada función. Ayuda a evitar errores y a entender mejor el código.

- **Control de flujo robusto:** En `get_positive_float`, se usa un bucle `while True` junto con `try-except` para manejar errores si el usuario escribe algo incorrecto, repitiendo la pregunta sin cerrar el programa. Esto mejora la experiencia del usuario.

- **Validación de datos antes de procesar:** Antes de calcular el área, el programa verifica que los datos sean numéricos y no negativos. Esto se llama "barrera de validación", ayudando a evitar errores en cálculos.

- **Guard Clause (`if __name__ == '__main__':`):** Permite que este archivo se ejecute directamente y también se pueda importar en otros proyectos o pruebas sin problemas.

- **Estructura modular:** El código está organizado en funciones pequeñas, facilitando añadir en el futuro funciones como calcular perímetro sin romper lo existente.

- **Preparado para pruebas automáticas:** Al tener funciones independientes, se pueden probar de forma automática con herramientas como `pytest`, algo importante en proyectos reales.

- **Preparado para crecer:** Gracias a esta estructura, en el futuro se puede integrar con un menú de línea de comandos (`argparse`) o incluir en programas más grandes de forma ordenada.

**En resumen:** Este kata aplica de forma práctica y clara principios de buena programación y estructura, permitiéndote aprender cómo escribir código ordenado, fácil de mantener y listo para proyectos más grandes.

---

## 🌐 **Cambios recientes (julio 2025)**

- Se creó la función `get_positive_float` para pedir valores con validación.
- Se implementó un bucle de reintento al ingresar datos inválidos.
- Se añadió validación de valores negativos.
- Se mejoró la presentación visual con mensajes claros.
- Se mantuvo la estructura modular para futuras extensiones.

---

## 📂 **Explicación del código actualizado**

### 1️⃣ Shebang

Permite ejecutar el script directamente en terminal sin llamar a `python` de forma explícita.

```python
#!/usr/bin/env python3
```

### 2️⃣ Docstring del archivo

Describe el objetivo del archivo de forma breve.

```python
""" Calcular el área de un rectángulo """
```

### 3️⃣ Función `calculate_area`

Encapsula el cálculo del área en una función reutilizable, clara y testeable.

```python
def calculate_area(width: float, height: float) -> float:
    """Calcula y retorna el área de un rectángulo."""
    return width * height
```

### 4️⃣ Función `get_positive_float`

Función especializada para solicitar un número positivo, validando datos no numéricos y valores negativos, repitiendo la solicitud hasta recibir un valor válido.

```python
def get_positive_float(prompt: str) -> float:
    while True:
        try:
            value = float(input(prompt))
            if value < 0:
                print("❌ Error: El valor no puede ser negativo. Inténtalo de nuevo.")
            else:
                return value
        except ValueError:
            print("❌ Error: Debes ingresar un número. Inténtalo de nuevo.")
```

### 5️⃣ Función principal `main()`

Controla el flujo del programa de forma ordenada:

- Muestra el título.
- Solicita ancho y alto con validación.
- Calcula el área.
- Muestra el resultado.

```python
def main():
    print("📐 Calcular el área de un rectángulo (sin valores negativos)")

    width = get_positive_float("📏 Ingresa el ancho del rectángulo: ")
    height = get_positive_float("📏 Ingresa la altura del rectángulo: ")

    area = calculate_area(width, height)
    print(f"✅ El área del rectángulo es: {area}")
```

### 6️⃣ Guard clause

Permite ejecutar `main()` solo si se ejecuta el archivo directamente.

```python
if __name__ == "__main__":
    main()
```

---

## ✅ **Resumen**

✔️ Mejora de robustez y experiencia de usuario.
✔️ Preparado para pruebas automáticas y extensiones.
✔️ Estructura modular y profesional.
✔️ Cumple con buenas prácticas de programación Python para proyectos en crecimiento.

---

## 🪐 **Siguientes pasos sugeridos**

✅ Crear `tests` automáticos con `pytest`.
✅ Integrar `mypy`, `black` y `ruff` para estilo y linting.
✅ Documentar en `README.md` con ejemplo de uso y dependencias.
✅ Extender a cálculo de perímetro y control CLI con `argparse` en el futuro.

---
