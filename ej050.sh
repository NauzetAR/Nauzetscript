#!/bin/bash

# $EUID : Obtiene el ID del usuario actual y root siempre es el DI 0

if [ "$EUID" -ne 0 ]; then
    echo "Hacen falta privilegios de root para ejecutar este script."
    exit 1
fi

echo "Ejecución autorizada: Eres el usuario root."
