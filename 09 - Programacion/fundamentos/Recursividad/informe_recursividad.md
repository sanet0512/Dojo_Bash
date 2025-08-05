# **Informe: Introducción a la Recursividad**

## **¿Qué es una función recursiva?**

Una función recursiva es una función que se **llama a sí misma** para resolver un problema dividiéndolo en versiones más pequeñas del mismo. En lugar de usar bucles (como `for` o `while`), la recursión resuelve un problema repitiendo la misma función con datos cada vez más simples hasta llegar a una solución.

**Ejemplo sencillo:**  
Imagina que quieres bajar una escalera. En lugar de dar un paso a la vez (como en un bucle), podrías pensar:  
_"Para bajar un escalón, primero bajo el escalón anterior, y así hasta llegar al suelo."_

## **¿En qué se diferencia de un bucle?**

| **Recursión**                                                 | **Bucle**                                              |
| ------------------------------------------------------------- | ------------------------------------------------------ |
| La función se llama a sí misma.                               | Se repite un bloque de código sin llamar a la función. |
| Más elegante para ciertos problemas (ej: árboles, factorial). | Más eficiente en memoria para repeticiones simples.    |
| Requiere un **caso base** para terminar.                      | Termina cuando se cumple una condición.                |
| Puede consumir más memoria (pila de llamadas).                | Usa menos memoria en general.                          |

## **Condiciones de una función recursiva bien construida**

1. **Caso base**: Una condición que detiene la recursión (sin esto, la función se llamaría infinitamente).
2. **Caso recursivo**: Llamada a la función con un problema más pequeño.
3. **Avance hacia el caso base**: Cada llamada debe acercarse al caso base.

## **¿Qué es el caso base y el caso recursivo?**

- **Caso base**: Es la condición que detiene las llamadas recursivas. Ejemplo: _"Si el número es 0, el factorial es 1."_
- **Caso recursivo**: Es donde la función se llama a sí misma con un problema reducido. Ejemplo: _"El factorial de N es N × factorial(N-1)."_

---

## **Algoritmos Recursivos**

### **1. Calcular el factorial de un número**

El factorial de un número `n` (escrito `n!`) es el producto de todos los enteros positivos desde `1` hasta `n`.

**Pseudocódigo:**

```python
función factorial(n):
    si n == 0 o n == 1:  # Caso base
        retornar 1
    sino:
        retornar n * factorial(n - 1)  # Caso recursivo
```

**Ejemplo:**  
`factorial(4) = 4 × 3 × 2 × 1 = 24`

---

### **2. Contar regresivamente desde N hasta 1**

**Pseudocódigo:**

```python
función cuenta_regresiva(n):
    si n == 0:  # Caso base
        detener
    sino:
        imprimir(n)
        cuenta_regresiva(n - 1)  # Caso recursivo
```

**Ejemplo:**  
`cuenta_regresiva(3)` imprime:

```
3
2
1
```

---

## **Peligros de una recursión mal planteada**

1. **Stack Overflow**: Si no hay un caso base o no se avanza hacia él, la función se llama infinitamente, llenando la memoria (pila de llamadas).
2. **Ineficiencia**: Algunos problemas (como Fibonacci recursivo) recalculan lo mismo muchas veces.
3. **Consumo excesivo de memoria**: Cada llamada guarda datos en la pila, y si son demasiadas, el programa puede fallar.

## **¿Qué es el stack overflow?**

Es un error que ocurre cuando la pila de llamadas (donde se guardan las funciones en ejecución) se llena porque la recursión no termina.

**Ejemplo:**  
Si en `factorial(n)` olvidamos el caso base, seguirá llamando a `factorial(-1)`, `factorial(-2)`, etc., hasta que el programa colapse.

---

## **Conclusión**

[[La.md|La]] recursión es una herramienta poderosa para resolver problemas dividiéndolos en partes más pequeñas. Es elegante, pero debe usarse con cuidado para evitar errores como el _stack overflow_. En algunos casos, un bucle puede ser más eficiente, pero en otros (como recorrer árboles), la recursión es la mejor opción.
