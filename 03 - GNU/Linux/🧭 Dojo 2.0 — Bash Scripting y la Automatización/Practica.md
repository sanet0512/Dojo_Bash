# 🌟 Tarea del Dojo 2.0 — Nivel Iniciación

---

## 🌻 1. ¿Qué es un script y cómo funciona?

**Pregunta:**

¿Qué es un script y cómo funciona?

**Respuesta:**

Un script es como una receta de cocina, pero para tu computadora. En lugar de decirle a un chef cómo hacer un pastel, le dices a tu computadora qué pasos seguir para hacer algo útil. Los scripts se escriben en lenguajes como Bash (que es el que usaremos aquí), y se ejecutan línea por línea, como si alguien estuviera leyendo las instrucciones en voz alta. Sencillo, ¿verdad?

Un script en Bash es un archivo de texto con comandos que la terminal puede ejecutar secuencialmente. Es como una lista de tareas para tu computadora.

---

## 🛠️ 2. Crea tu primer script real y ejecútelo

**Pregunta:**

¿Cómo crear tu primer script real y ejecutarlo?

**Respuesta:**

Vamos a hacer un script básico que diga "¡Hola, mundo!".

1. **Abre un editor de texto** (`nano`, `vim`, etc.).
2. **Escribe esto:**

```bash
#!/bin/bash
echo "¡Hola, mundo! 🚀"
```

3. **Guárdalo** como `hola_mundo.sh`.
4. **Dale permisos de ejecución:**

```bash
chmod +x hola_mundo.sh
```

5. **Ejecútalo:**

```bash
./hola_mundo.sh
```

¡Felicidades! Acabas de crear y ejecutar tu primer script. 🎉

---

## 🔍 3. Experimenta con

### 💚 Variables

**Pregunta:**

¿Cómo funcionan las variables en Bash?

**Respuesta:**

Las variables son como cajitas donde guardas cosas. Por ejemplo:

```bash
nombre="TuNombre"
echo "¡Hola, $nombre! ¿Cómo estás?"
```

El valor guardado en la variable `nombre` se usa dentro del texto.

---

### 🍏 Condicionales (`if`)

**Pregunta:**

¿Cómo usar condicionales en Bash?

**Respuesta:**

Los condicionales permiten ejecutar comandos según una condición:

```bash
edad=25
if [ $edad -gt 18 ]; then
  echo "¡Eres mayor de edad! 🍻"
else
  echo "Eres menor de edad. 🍦"
fi
```

---

### 🎐 Bucles (`for`)

**Pregunta:**

¿Cómo funcionan los bucles `for` en Bash?

**Respuesta:**

Sirven para repetir acciones varias veces:

```bash
for i in 1 2 3 4 5; do
  echo "Contando: $i"
done
```

---

### 🌿 Leer datos con `read`

**Pregunta:**

¿Cómo pedir datos al usuario en un script?

**Respuesta:**

Usa `read` para solicitar información:

```bash
echo "¿Cuál es tu color favorito?"
read color
echo "¡Ah, te gusta el $color! Buen gusto."
```

El script espera que el usuario escriba algo y lo almacena en la variable `color`.

---

## 🎩 4. Extra: Automatiza algo útil

### Script para ver usuarios conectados

**Pregunta:**

¿Cómo ver qué usuarios están conectados?

**Respuesta:**

```bash
#!/bin/bash
echo "Usuarios conectados:"
who
```

Ejecútalo para ver la lista de usuarios conectados.

---

### Script para limpiar `/tmp`

**Pregunta:**

¿Cómo limpiar la carpeta temporal `/tmp`?

**Respuesta:**

**🚨 Precaución:** Este script elimina todo el contenido de `/tmp`. Úsilo con cuidado!

```bash
#!/bin/bash
echo "Limpiando /tmp..."
rm -rf /tmp/*
echo "¡Limpieza completada!"
```

---
