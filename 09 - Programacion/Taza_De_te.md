Diseña, en pseudocódigo y con diagramas de flujo mínimos, un “programa” que prepare una taza de té.

Requisitos:

Enumera todas las variables necesarias (estado, temperatura, cantidad-agua, etc.).

Señala al menos dos puntos de decisión (condiciones) y un bucle si lo consideras útil (por ejemplo, esperar a que el agua hierva).

Escribe el algoritmo paso a paso; luego reflexiona:

¿En qué parte se encontraría un error si la tetera estuviera vacía?

¿Cómo sabría tu ejecutor que debe detenerse

variables

taza
hervidora  
cantidad-agua
te
temperatura

la idea es prerar te. asi que primero busquemos los materiale,
para que funcione priemero revisa si tenemos {taza,te = x sabor , hervidora, agua}

al tener al menos estos requisitos podemos continuar
suponiendo que una taza es igual a 300ml de agua entonces
1 taza = 300ml cantidad-agua
llenar la hervidora de cantidad-agua para la cantidad de tazas de tetera

entonces 1 taza = 300ml cantidad-agua
hervidora = 300ml cantidad-agua
esperar al menos 5min o hasta que la hervidora consiga una { temperatura = 70ºC }
mientras espera
tomar la taza escoger un te de x sabor y colocarlo en la taza
al terminar el tiempo de la hervidora o llegado a su temperatura, tomar la hervidora y vaciar el agua lentamente en la taza
esperar de 3 a 8 min para retirar la bolsita de te y listo.

casos preliminares a tomar en cuenta.

si la hervidora no tiene agua, llenarla con la medida requerida para la cantidad de tazas necesarias
sabiendo que 1 taza = a 300ml cantidad-agua entonces
cantidad-taza = 1
cantidad-agua = 300ml cantidad-agua \* cantidad-taza
capacidad maxima de la hervidora = 1800ml
la cantidad maxima de tazas por servicio seria
capidad-maxima = 1800ml
cantidad-taza-maxima = capidad-maxima / cantidad-agua

cantidad-taza-maxima = 6 por servicio

posibles errores, intentar servir mas de 6 tazas, poner a hervir la hervidora sin agua, que no alla ninguno de los implementos necesarios
