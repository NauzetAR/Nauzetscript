#!/bin/bash

# id : Comprobamos que el usuario existe por su id y 2>&1 redirige todo el resultado obtenido por la comprobación a null

read -p "Introduce el nombre de usuario: " usuario

if id "$usuario" >/dev/null 2>&1; then
    echo "El usuario '$usuario' existe en el sistema."
else
    echo "El usuario '$usuario' NO existe en el sistema."
fi
