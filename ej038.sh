#!/bin/bash

#grep -n : Muestra las lineas que coinciden dentro del fichero con la palabra, grep -c : Conteo total del lineas que coinciden y echo -n : No realiza salto de linea

read -p "Introduce la palabra a buscar: " palabra
read -p "Introduce el nombre del fichero: " fichero

if [ -f "$fichero" ]; then
    echo "Coinciden"
    grep -n "$palabra" "$fichero"
    echo -n "Número total de líneas que contienen la palabra: "
    grep -c "$palabra" "$fichero"
else
    echo "El fichero no existe."
fi
