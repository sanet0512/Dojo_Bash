# **Informe: Entrada y Salida (I/O) - Comunicación con el Mundo**

## **¿Qué es la entrada y salida (I/O)?**

Es el sistema que permite a un programa **intercambiar información** con su entorno:

- **Entrada (Input)**: Datos que recibe el programa (desde teclado, archivos, sensores, etc.)
- **Salida (Output)**: Resultados que el programa genera (en pantalla, archivos, impresora, etc.)

Es el "sentido del tacto y la voz" de tu aplicación.

## **Medios de Entrada/Salida**

| **Medio**          | **Entrada Ejemplo**     | **Salida Ejemplo**         |
| ------------------ | ----------------------- | -------------------------- |
| **Consola**        | Teclado (datos usuario) | Pantalla (resultados)      |
| **Archivos**       | Lectura de documentos   | Guardar registros          |
| **Red**            | Datos de API web        | Enviar información remota  |
| **Dispositivos**   | Sensores, cámaras       | Impresoras, altavoces      |
| **Bases de Datos** | Consultas SQL           | Actualización de registros |

## **Entrada Estándar vs Dirigida**

- **Entrada Estándar (stdin)**:
  Flujo predeterminado de datos (normalmente el teclado)
- **Entrada Dirigida**:
  Cuando se redirige el origen (ej: desde un archivo `programa < datos.txt`)

## **Capturar Datos y Mostrar Resultados**

**Captura:**

```pseudocodigo
// Capturar texto
LEER nombre_usuario DESDE CONSOLA

// Capturar números
LEER cantidad ENTERO DESDE CONSOLA
```

**Mostrar:**

```pseudocodigo
// Salida simple
IMPRIMIR "Bienvenido, " + nombre_usuario

// Salida formateada
IMPRIMIR "Total: {cantidad} unidades"
```

## **Gestión de Errores en Lectura**

1. **Validar formato**: Verificar si un texto es número válido
2. **Comprobar rangos**: Asegurar que valores están en límites aceptables
3. **Manejar excepciones**: Recuperarse de errores sin colapsar

```pseudocodigo
MIENTRAS verdadero HACER
    INTENTAR:
        LEER edad ENTERO DESDE CONSOLA
        SI edad >= 0 ENTONCES
            SALIR DEL CICLO
        SINO:
            IMPRIMIR "Edad inválida. Intente nuevamente."
    ATRAPAR ERROR:
        IMPRIMIR "Debe ingresar un número"
FIN MIENTRAS
```

---

## **Extra: Pseudocódigo Gestor de Lecturas**

```
// Inicialización
libros = LISTA()

// Paso 1: Capturar nombre
IMPRIMIR "Ingrese su nombre:"
LEER nombre_usuario DESDE CONSOLA

// Paso 2: Capturar cantidad de libros
MIENTRAS verdadero HACER
    IMPRIMIR "¿Cuántos libros has leído?"
    INTENTAR:
        LEER num_libros ENTERO DESDE CONSOLA
        SI num_libros < 0 ENTONCES
            IMPRIMIR "Debe ser un número positivo"
        SINO:
            SALIR DEL CICLO
    ATRAPAR ERROR:
        IMPRIMIR "Ingrese un número válido"
FIN MIENTRAS

// Paso 3: Capturar títulos
PARA i DESDE 1 HASTA num_libros HACER
    IMPRIMIR "Título libro " + CADENA(i) + ":"
    LEER titulo DESDE CONSOLA
    AÑADIR(libros, titulo)
FIN PARA

// Paso 4: Generar reporte
IMPRIMIR "------------------------------------"
IMPRIMIR "Hola " + nombre_usuario + ", leíste " + CADENA(num_libros) + " libros."
IMPRIMIR "Tus títulos:"

PARA CADA libro EN libros HACER
    IMPRIMIR " - " + libro
FIN PARA
IMPRIMIR "------------------------------------"
```

**Diagrama de flujo:**

```
[Inicio]
   ↓
[Pedir nombre] → [Guardar nombre]
   ↓
[Pedir num libros] → [Validar número] → ¿Válido? → No → [Error]
   |                                   Sí ↓
[Para i=1 hasta num_libros] → [Pedir título] → [Guardar en lista]
   ↓
[Generar reporte]
   ↓
[Imprimir resumen]
   ↓
[Fin]
```

---

## **Conclusión**

La I/O es el puente entre la lógica interna del programa y el mundo exterior. Dominar:

- La captura **robusta** de datos
- La validación **efectiva** de entradas
- La presentación **clara** de resultados

convierte programas técnicos en herramientas útiles y accesibles. El ejemplo de gestión de lecturas muestra cómo integrar estos conceptos en una aplicación completa que interactúa con el usuario de manera amigable y profesional.
