---

### **1. Diagrama de Flujo General**

```
[INICIO] → [Mostrar Menú] → [Leer Opción] → ¿Opción válida? → Sí → Ejecutar Módulo → [Salir?]
                                      ↓ No
                                      └─── [Mostrar Error] → [Mostrar Menú]
```

---

### **2. Estructuras de Datos Principales**

```pseudocode
// Registro para cada tarea
Registro Tarea:
    id: entero
    titulo: texto
    descripcion: texto
    fecha_vencimiento: texto  // Formato "DD/MM/AAAA"
    completada: booleano

// Almacenamiento global
Lista de Tareas: arreglo de registros Tarea
```

---

### **3. Pseudocódigo Modularizado**

#### **Módulo Principal**

```pseudocode
Procedimiento Main:
    Inicializar lista_tareas vacía
    Repetir:
        opcion = MostrarMenu()
        Según opcion hacer:
            Caso 1: AgregarTarea(lista_tareas)
            Caso 2: MarcarCompletada(lista_tareas)
            Caso 3: MostrarTareas(lista_tareas, filtro="TODAS")
            Caso 4: EliminarTarea(lista_tareas)
            Caso 5: Salir
            Otro: Mostrar "Opción no válida"
    Hasta que opcion == 5
Fin
```

---

#### **Módulos Funcionales**

**1. Mostrar Menú**

```pseudocode
Función MostrarMenu() → entero:
    Mostrar "----- AGENDA -----"
    Mostrar "1. Agregar tarea"
    Mostrar "2. Marcar como completada"
    Mostrar "3. Ver tareas"
    Mostrar "4. Eliminar tarea"
    Mostrar "5. Salir"
    Leer opcion_usuario
    Devolver opcion_usuario
Fin
```

**2. Agregar Tarea**

```pseudocode
Procedimiento AgregarTarea(Ref lista_tareas):
    nueva_tarea: Tarea
    nueva_tarea.id = Longitud(lista_tareas) + 1
    Leer nueva_tarea.titulo ("Título: ")
    Leer nueva_tarea.descripcion ("Descripción: ")
    Leer nueva_tarea.fecha_vencimiento ("Fecha (DD/MM/AAAA): ")
    nueva_tarea.completada = Falso
    Añadir nueva_tarea a lista_tareas
    Mostrar "✅ Tarea agregada!"
Fin
```

**3. Mostrar Tareas (con filtro)**

```pseudocode
Procedimiento MostrarTareas(lista_tareas, filtro):
    Mostrar "----- TAREAS -----"
    Para cada tarea en lista_tareas hacer:
        Si (filtro == "TODAS") O
           (filtro == "PENDIENTES" Y NO tarea.completada) O
           (filtro == "COMPLETADAS" Y tarea.completada) Entonces:
            Mostrar "[ID: ", tarea.id, "] ", tarea.titulo
            Mostrar "  Fecha: ", tarea.fecha_vencimiento
            Mostrar "  Estado: ", SI tarea.completada ENTONCES "✓" SINO "✗"
    Fin Para
Fin
```

**4. Marcar como Completada**

```pseudocode
Procedimiento MarcarCompletada(Ref lista_tareas):
    MostrarTareas(lista_tareas, "PENDIENTES")
    Leer id_a_completar ("ID a completar: ")
    Para cada tarea en lista_tareas hacer:
        Si tarea.id == id_a_completar Entonces:
            tarea.completada = Verdadero
            Mostrar "✅ Tarea marcada!"
            Devolver
    Fin Para
    Mostrar "❌ ID no encontrado"
Fin
```

**5. Eliminar Tarea**

```pseudocode
Procedimiento EliminarTarea(Ref lista_tareas):
    MostrarTareas(lista_tareas, "TODAS")
    Leer id_a_eliminar ("ID a eliminar: ")
    Para i desde 0 hasta Longitud(lista_tareas)-1 hacer:
        Si lista_tareas[i].id == id_a_eliminar Entonces:
            Eliminar lista_tareas[i]
            Reasignar IDs restantes
            Mostrar "🗑️ Tarea eliminada!"
            Devolver
    Fin Para
    Mostrar "❌ ID no encontrado"
Fin
```

---

### **4. Diagrama de Relación de Módulos**

```
       Main
        │
        ├─ MostrarMenu
        ├─ AgregarTarea
        ├─ MostrarTareas (filtrado)
        ├─ MarcarCompletada
        └─ EliminarTarea
```

---

### **5. Ejemplo de Flujo de Uso**

1. Usuario selecciona **1** y agrega: "Comprar leche", "20/05/2024"
2. Usuario selecciona **3** y ve la tarea pendiente
3. Usuario selecciona **2**, ingresa el ID 1 y marca como completada
4. Usuario selecciona **3** y ahora ve la tarea con ✓
5. Usuario selecciona **5** para salir

---

Este diseño cumple con todos los requisitos:

- **Entrada**: Lectura de opciones y datos de tareas
- **Lógica**: Filtrado, validación de IDs
- **Estructuras**: Listas + registros
- **Bucles**: Menú principal y búsquedas
- **Modularidad**: Funciones especializadas
- **Salida**: Visualización formateada
