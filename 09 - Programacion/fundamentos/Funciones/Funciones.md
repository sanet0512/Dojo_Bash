# **Informe: El Arte de la Función – Abstracción y Reutilización**

## **¿Qué es una función en programación?**

Una función es un **bloque de código independiente** que realiza una tarea específica. Imagínala como una "caja mágica" que:

- Recibe ingredientes (**parámetros**)
- Realiza una transformación (**lógica**)
- Devuelve un resultado (**valor de retorno**)

Las funciones permiten encapsular acciones complejas bajo un nombre simple, como `calcularPromedio()` o `validarEmail()`.

## **¿Qué diferencia hay entre una función y un procedimiento?**

| **Función**                                     | **Procedimiento**                             |
| ----------------------------------------------- | --------------------------------------------- |
| Siempre devuelve un resultado                   | Realiza acciones sin devolver valor           |
| Se usa en expresiones (ej: `total = suma(a,b)`) | Se llama como instrucción independiente       |
| Tiene propósito de cálculo                      | Tiene propósito de efecto (imprimir, guardar) |
| Ejemplo: `Math.sqrt(9)`                         | Ejemplo: `console.log("Hola")`                |

_Nota: En lenguajes modernos esta distinción es menos rígida, pero el concepto central permanece._

## **¿Por qué las funciones son esenciales para la modularidad?**

Son los **ladrillos fundamentales** de la programación estructurada porque:

1. **Dividen problemas complejos** en tareas más pequeñas y manejables
2. **Evitan código duplicado** (escribe una vez, usa infinitamente)
3. **Facilitan el mantenimiento** (corriges en un solo lugar)
4. **Permiten trabajo en equipo** (cada programador trabaja en funciones distintas)
5. **Crean abstracciones** (ocultan complejidad detrás de nombres significativos)

> "Las funciones son como escultores: transforman bloques brutos de código en obras de arte reutilizables."

## **¿Qué es el parámetro de entrada y el valor de retorno?**

- **Parámetro de entrada**: Datos que recibe la función para trabajar.  
  Ej: En `calcularIVA(precio)`, `precio` es el parámetro.
- **Valor de retorno**: Resultado que la función entrega al terminar.  
  Ej: `return total * 0.21` devuelve el IVA calculado.

```javascript
// Ejemplo completo
function sumar(a, b) {
  // a y b son parámetros
  return a + b; // Valor de retorno
}
```

## **¿Qué significa el alcance (scope) de una variable?**

Es la **zona del código** donde una variable "existe" y puede usarse:

1. **Alcance local**: Variables creadas DENTRO de una función. Solo existen allí.

   ```python
   def ejemplo():
       x = 10  # x es local
       print(x)

   print(x) # Error: x no existe aquí
   ```

2. **Alcance global**: Variables declaradas FUERA de funciones. Accesibles en todo el programa (¡usar con precaución!).

   ```python
   y = 20  # Global

   def mostrar():
       print(y)  # Funciona
   ```

**Regla clave**: Las variables locales tienen prioridad sobre las globales si tienen el mismo nombre.

---

## **Pseudocódigo: Contador de números pares**

```
FUNCIÓN contar_pares(ENTRADA: lista_numeros)
    INICIO
        DECLARAR contador_pares ← 0

        PARA cada numero EN lista_numeros HACER
            SI residuo(numero / 2) = 0 ENTONCES
                contador_pares ← contador_pares + 1
            FIN SI
        FIN PARA

        RETORNAR contador_pares
    FIN---
```

```txt

[Inicio Función]
↓
[contador_pares = 0]
↓
┌───────────────┐
│ Para cada │←──────────────┐
│ numero en lista│ │
└───────────────┘ │
↓ │
┌───────────────┐ │
│ numero % 2 = 0?│──No──┐ │
└───────────────┘ ↓ │
| Sí │ │
↓ │ │
[contador_pares += 1] │ │
↓ │ │
┌───────────────┐ │ │
│ Siguiente ├───────┘ │
└───────────────┘ │
| │
└───────────────────────┘
↓
[Retornar contador_pares]
↓
[Fin Función]

```

### **Explicación del pseudocódigo:**

Entrada:

lista_numeros: Colección de valores numéricos

Proceso:

Inicializamos un contador en cero

Iteramos por cada elemento de la lista:

Verificamos si el número es divisible entre 2 (residuo = 0)

Si es par, incrementamos el contador

Finalizada la iteración, retornamos el valor acumulado

Salida:

Cantidad total de números pares encontrados

Ventajas de este enfoque:
Independencia: No usa sintaxis de lenguaje específico

Claridad: Cada paso es explícito y autoexplicativo

Modularidad: Encapsula toda la lógica necesaria

Reutilizable: Puede integrarse en cualquier sistema

```
lista = [3, 7, 2, 8, 5, 4]
resultado = contar_pares(lista) → retorna 3

```

## **Extra**

### **¿Qué es una función pura?**

Es una función que:

1. **Siempre devuelve el mismo resultado** con los mismos parámetros
2. **No produce efectos secundarios**:
   - No modifica variables externas
   - No altera el estado del sistema
   - No depende de estados externos

**Ejemplo puro:**

```python
def cuadrado(x):
    return x * x  # Mismo output para mismo input, sin efectos externos
```

**Ejemplo impuro:**

```python
contador = 0

def suma_impura(a, b):
    global contador
    contador += 1  # Efecto secundario: modifica estado externo
    return a + b
```

### **¿Qué diferencia hay entre paso por valor y paso por referencia?**

| **Paso por Valor**                              | **Paso por Referencia**                            |
| ----------------------------------------------- | -------------------------------------------------- |
| Se copia EL VALOR del dato                      | Se pasa LA DIRECCIÓN en memoria                    |
| Modificaciones NO afectan al original           | Modificaciones SI afectan al original              |
| Usado con tipos primitivos (números, booleanos) | Usado con objetos complejos (listas, diccionarios) |
| Ejemplo en Python: números, strings             | Ejemplo en Python: listas, objetos                 |

**Demostración visual:**

```python
# Paso por valor (copia)
a = 5
def cambiar_valor(x):
    x = 10

cambiar_valor(a)
print(a)  # Sigue siendo 5

# Paso por referencia (original)
lista = [1, 2]
def modificar_lista(l):
    l.append(3)

modificar_lista(lista)
print(lista)  # Ahora es [1, 2, 3]
```

---

## **Conclusión**

Las funciones son el corazón de la programación modular. Dominar su uso -con parámetros claros, retornos definidos y comprensión del alcance- permite crear sistemas flexibles, mantenibles y libres de errores. La recursividad y las funciones puras representan el siguiente nivel de maestría en este arte fundamental.
