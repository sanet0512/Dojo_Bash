# **Informe: Estructuras de Datos Simples**

## **¿Qué es una estructura de datos?**

Una estructura de datos es un **contenedor organizado** que permite almacenar, acceder y manipular colecciones de información de manera eficiente. Son como diferentes tipos de archivadores para datos:

- **Cajones** para diferentes categorías
- **Separadores** para organización interna
- **Sistemas de etiquetado** para acceso rápido

## **Principales Estructuras Simples**

### **1. Listas (o Arreglos Dinámicos)**

**Para qué sirve:**  
Almacenar colecciones **ordenadas** de elementos que pueden cambiar (añadir/eliminar).

**Diferencias con arreglos:**

| **Lista**                      | **Arreglo**              |
| ------------------------------ | ------------------------ |
| Tamaño flexible (crece/encoge) | Tamaño fijo              |
| Permite diferentes tipos       | Normalmente un solo tipo |
| Ej: `[10, "manzana", True]`    | Ej: `[1, 2, 3]`          |

**Operaciones clave:**

- Acceder por posición: `elemento = lista[3]`
- Añadir al final: `añadir(lista, valor)`
- Eliminar: `eliminar(lista, posición)`

### **2. Tuplas**

**Qué es:**  
Colección **ordenada e inmutable** (no modificable después de creación).

**Preferible sobre listas cuando:**

- Necesitas datos fijos (ej: coordenadas GPS)
- Quieres usar como clave en diccionarios
- Para retornar múltiples valores desde una función

```pseudocodigo
coordenadas = (40.7128, -74.0060)  // Latitud, Longitud fijas
```

### **3. Diccionarios (Mapas)**

**Qué es:**  
Colección de **pares clave-valor** (como un índice temático).

**Acceso a elementos:**

```pseudocodigo
capitales = DICCIONARIO()
capitales["España"] = "Madrid"   // Asignación
IMPRIMIR capitales["España"]     // Acceso → "Madrid"
```

**Características:**

- Claves únicas
- Acceso rápido por clave (no por posición)
- Ideal para datos asociativos

### **4. Conjuntos (Sets)**

**Qué es:**  
Colección **no ordenada** de elementos **únicos**.

**Operaciones:**

```
A = {1, 2, 3}
B = {3, 4, 5}

UNION = A ∪ B          // {1, 2, 3, 4, 5}
INTERSECCIÓN = A ∩ B   // {3}
DIFERENCIA = A - B     // {1, 2}
```

**Usos comunes:**  
Eliminar duplicados, verificar pertenencia, operaciones matemáticas.

---

## **Pseudocódigo: Agenda de Contactos**

```
REGISTRO Contacto
    CAMPO nombre: CADENA
    CAMPO telefono: CADENA
    CAMPO correo: CADENA
FIN REGISTRO

// Estructura principal: Lista de contactos
agenda = LISTA()

// 1. Agregar contacto
FUNCIÓN agregar_contacto(nombre, telefono, correo)
    nuevo = NUEVO Contacto
    nuevo.nombre = nombre
    nuevo.telefono = telefono
    nuevo.correo = correo
    AÑADIR(agenda, nuevo)
FIN FUNCIÓN

// 2. Buscar por nombre
FUNCIÓN buscar_por_nombre(nombre_buscado)
    resultados = LISTA()

    PARA CADA contacto EN agenda HACER
        SI contacto.nombre CONTIENE nombre_buscado ENTONCES
            AÑADIR(resultados, contacto)
        FIN SI
    FIN PARA

    RETORNAR resultados
FIN FUNCIÓN

// 3. Listar todos
FUNCIÓN listar_contactos()
    PARA CADA contacto EN agenda HACER
        IMPRIMIR "Nombre: " + contacto.nombre
        IMPRIMIR "Teléfono: " + contacto.telefono
        IMPRIMIR "Email: " + contacto.correo
        IMPRIMIR "-------------------"
    FIN PARA
FIN FUNCIÓN
```

**Diagrama de la agenda:**

```
┌──────────────────────────────────────┐
│              AGENDA                  │
├──────────────────────────────────────┤
│  ┌───────────┐  ┌───────────┐        │
│  │ Contacto 1│  │ Contacto 2│  ...   │
│  ├───────────┤  ├───────────┤        │
│  │ Nombre    │  │ Nombre    │        │
│  │ Teléfono  │  │ Teléfono  │        │
│  │ Email     │  │ Email     │        │
│  └───────────┘  └───────────┘        │
└──────────────────────────────────────┘
```

---

## **Extra**

### **¿Por qué importa la elección de estructura?**

La estructura adecuada impacta en:

1. **Eficiencia**: Tiempo de acceso/modificación
2. **Memoria**: Espacio utilizado
3. **Claridad**: Expresividad del código
4. **Operaciones disponibles**: Funcionalidades nativas

_Ejemplo:_

- **Diccionario** para búsquedas rápidas por nombre
- **Lista** para mantener orden cronológico
- **Conjunto** para detectar contactos duplicados

### **Mutabilidad vs Inmutabilidad**

| **Mutable**                         | **Inmutable**             |
| ----------------------------------- | ------------------------- |
| Puede modificarse después de creado | No puede modificarse      |
| Ej: Listas, Diccionarios            | Ej: Tuplas, Cadenas       |
| **Ventaja**: Flexibilidad           | **Ventaja**: Seguridad    |
| **Riesgo**: Cambios accidentales    | **Riesgo**: Mayor consumo |

---

## **Conclusión**

Las estructuras de datos son herramientas fundamentales que determinan cómo organizamos y accedemos a la información. Elegir entre:

- **Listas** para colecciones ordenadas y modificables
- **Tuplas** para datos fijos e inmutables
- **Diccionarios** para acceso rápido por clave
- **Conjuntos** para elementos únicos y operaciones matemáticas

define la eficiencia y claridad de nuestros programas. La agenda de contactos ejemplifica cómo combinar estas estructuras para resolver problemas del mundo real.
