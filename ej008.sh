#!/bin/bash

#Creamos el archivo sobre el que escribiremos
touch notas.txt

#Ingresamos dentro del archivo una serie de datos utilizando redirigiendo el contenido a añadiendolo dentro archivo

echo "Esta es la primer linea." > notas.txt
echo "Esta es la segunda linea." >> notas.txt
echo "Esta es la tercera linea." >> notas.txt

#Para mostrar el contenido del archivo con las lineas numeradas utlizaremos el nl

nl notas.txt 
