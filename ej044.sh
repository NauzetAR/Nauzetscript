#!/bin/bash

# $# : Variable obtenida por el script, -ne 1 : En caso de poner varias variables no permite comprobar, -f : Busca fichero, -d : Busca directorio, ! -e : Comprueba que no exista.
if [ $# -ne 1 ]; then
    echo "Uso: $0 <ruta>"
    exit 1
fi

ruta="$1"

if [ -f "$ruta" ]; then
    echo "'$ruta' es un fichero regular."
elif [ -d "$ruta" ]; then
    echo "'$ruta' es un directorio."
elif [ ! -e "$ruta" ]; then
    echo "'$ruta' NO existe."
else
    echo "'$ruta' existe pero es otro tipo especial de archivo (bloque, socket, enlace...)."
fi
