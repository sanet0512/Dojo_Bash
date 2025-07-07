# **Informe: Tipos de Datos - Fundamentos**

## **¿Qué es un tipo de dato?**

Un tipo de dato es una **clasificación** que determina:

- Qué valores puede representar
- Qué operaciones se pueden realizar con él
- Cómo se almacena en memoria

Es como una "etiqueta" que le dice a la computadora cómo interpretar y manipular la información.

## **Tipos de Datos Primitivos**

| Tipo         | Descripción                         | Ejemplo         |
| ------------ | ----------------------------------- | --------------- |
| **Entero**   | Números completos sin decimales     | `5`, `-12`, `0` |
| **Real**     | Números con parte decimal           | `3.14`, `-0.5`  |
| **Lógico**   | Valores de verdad (verdadero/falso) | `verdadero`     |
| **Carácter** | Un solo símbolo o letra             | `'A'`, `'#'`    |
| **Cadena**   | Secuencia de caracteres (texto)     | `"Hola"`        |

## **Conversión de Tipos**

Es transformar un valor de un tipo a otro.

- **Implícita**: Automática (realizada por el sistema)

  ```pseudocodigo
  resultado = 5 + 3.2  // Entero convertido a Real
  ```

- **Explícita**: Manual (indicada por el programador)

  ```pseudocodigo
  numero = ENTERO("123")  // Cadena → Entero
  texto = CADENA(45.67)   // Real → Cadena
  ```

## **Operaciones entre Tipos Incompatibles**

Genera **errores** o **resultados inesperados**:

```pseudocodigo
// Ejemplo 1: Error
valor = "Hola" + 5  // ¡Error de tipo!

// Ejemplo 2: Comportamiento inesperado
resultado = "10" * 2  // Podría ser 20 (si convierte) o "1010"
```

## **Tipado Estático vs. Dinámico**

| Característica  | Tipado Estático               | Tipado Dinámico          |
| --------------- | ----------------------------- | ------------------------ |
| **Declaración** | Tipo definido al crear        | Tipo inferido al asignar |
| **Ejemplo**     | `ENTERO edad = 25`            | `edad = 25`              |
| **Ventajas**    | Detección temprana de errores | Código más flexible      |
| **Riesgos**     | Más verboso                   | Errores en ejecución     |
| **Lenguajes**   | C++, Java                     | Python, JavaScript       |

---

## **Extra**

### **¿Qué es un literal?**

Valor escrito directamente en el código:

```pseudocodigo
42          // Literal entero
"Python"    // Literal cadena
verdadero   // Literal lógico
```

### **¿Qué es un tipo compuesto?**

Estructura que combina múltiples valores:

```pseudocodigo
// Arreglo (mismo tipo)
numeros = [10, 20, 30]

// Registro (diferentes tipos)
REGISTRO Persona
    nombre: CADENA
    edad: ENTERO
    correo: CADENA
FIN REGISTRO
```

### **Pseudocódigo: Estructura Persona**

```
REGISTRO Persona
    CAMPO nombre: CADENA
    CAMPO edad: ENTERO
    CAMPO correo: CADENA
FIN REGISTRO

// Crear instancia
ana = NUEVA Persona
ana.nombre ← "Ana López"
ana.edad ← 28
ana.correo ← "ana@ejemplo.com"

// Acceso a campos
IMPRIMIR "Nombre: " + ana.nombre
```

**Diagrama de la estructura:**

```
┌───────────────────┐
│     Persona       │
├───────────────────┤
│ nombre: "Ana López"│
│ edad: 28          │
│ correo: "ana@..." │
└───────────────────┘
```

---

## **Conclusión**

Los tipos de datos son la base fundamental de la programación. Entender sus características, cómo interactúan y convertirlos adecuadamente es esencial para:

- Evitar errores comunes
- Escribir código eficiente
- Representar información del mundo real
- Gestionar correctamente la memoria

Los tipos compuestos (como el registro Persona) permiten modelar entidades complejas, llevando nuestra capacidad de representación más allá de los valores simples.
