#!/bin/bash

# sed -n : Muestra las lineas entre los dos indicadores puestos, head tail : Indicamos que muestre las 10 primeras lineas y de esas obtenemos las 5 lineas de las 10 del head utilizando el tail

echo "Forma 1"
head -n 10 /etc/passwd | tail -n 6

echo "Forma 2
sed -n '5,10p' /etc/passwd
