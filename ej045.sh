#!/bin/bash

# if [ $# -ne 1 ]; : Comprueba que se establecio una ruta, ! -e : Comprueba que la ruta existe

if [ $# -ne 1 ]; then
    echo "Uso: $0 <fichero>"
    exit 1
fi

fichero="$1"

if [ ! -e "$fichero" ]; then
    echo "El fichero no existe."
    exit 1
fi

echo "Comprobación de permisos para: $fichero"

if [ -r "$fichero" ]; then
    echo "Lectura (r): SÍ"
else
    echo "Lectura (r): NO"
fi

if [ -w "$fichero" ]; then
    echo "Escritura (w): SÍ"
else
    echo "Escritura (w): NO"
fi

if [ -x "$fichero" ]; then
    echo "Ejecución (x): SÍ"
else
    echo "Ejecución (x): NO"
fi
