#!/bin/bash

#Leemos la respuesta del usuario y lo guardamos en una variable
read -p "Ingrese el nombre del archivo que quiera consultar " arc

#Mostramos el tamaño legible del archivo guardado en la variable

echo "El contenido legible del archivo $arc es: $(ls -lh $arc)"

#Mostramos el tipo del archivo guardado dentro de la variable

echo "El tipo de contenido del archivo $arc es: $(file $arc)"
