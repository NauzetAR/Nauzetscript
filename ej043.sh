#!/bin/bash

# -z : Se comprueba que el paramerto dado contenga algun caracter y en caso de no tener se indica al usuario que debe proporcionar un parametro, $0 : Guarda la ruta usada en la ejecución y -e : Comprueba si existe o no.

# Comprobar si no se ha introducido ningún parámetro
if [ -z "$1" ]; then
    echo "Error de uso: $0 <nombre_del_fichero>"
    exit 1
fi

# Comprobar si existe el fichero o directorio
if [ -e "$1" ]; then
    echo "El fichero o directorio '$1' existe."
else
    echo "El fichero o directorio '$1' NO existe."
fi
