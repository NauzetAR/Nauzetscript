#!/bin/bash

#Lee el dato obtenido por el usuario
read -p "Ingrese el nombre o ruta del fichero: " fichero

#Comprueba que el dato obtenido corresponde a un fichero
if [ -f "$fichero" ]; then
#Cuenta las lineas
	echo "Lineas: $(wc -l < "$fichero")"
#Cuenta las palabras
	echo "Palabas: $(wc -w < "$fichero")"
#Cuenta los caracteres
	echo "Caracteres: $(wc -m < "$fichero")"
# El indicador < funciona para alimentar a los comandos wc con el fichero seleccionado
else
	echo "El fichero no existe."
fi
