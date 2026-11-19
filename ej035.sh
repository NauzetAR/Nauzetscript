#!/bin/bash

# tr upper lower : Combierte las vocales mayuscalas a minusculas para contar correctamente, tr -cd : Elimina los caracteres que no estan indicados en comillas y wc -c : Cuenta el total de caracteres tras el filtrado.

read -p "Introduce el nombre del fichero: " fichero

if [ -f "$fichero" ]; then
    total=$(tr '[:upper:]' '[:lower:]' < "$fichero" | tr -cd 'aeiou' | wc -c)
    echo "Número total de vocales: $total"
else
    echo "El fichero no existe."
fi
