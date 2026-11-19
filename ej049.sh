#!/bin/bash

# ! [[ "$nota" =~ ^[0-9]+$ ]] || [ "$nota" -lt 0 ] || [ "$nota" -gt 10 ]; : ! Comprueba lo contrario en caso de que con nota no sea numerico mediante coincidencias (=~), ^[0-9]+$ : Uno o más digitos e impide que los nuemros sean menores que 0 y mayores que 10.

read -p "Introduce una nota (0-10): " nota

if ! [[ "$nota" =~ ^[0-9]+$ ]] || [ "$nota" -lt 0 ] || [ "$nota" -gt 10 ]; then
    echo "Error: Debe introducir un número entero entre 0 y 10."
    exit 1
fi

if [ "$nota" -lt 5 ]; then
    echo "Insuficiente"
elif [ "$nota" -eq 5 ]; then
    echo "Suficiente"
elif [ "$nota" -eq 6 ]; then
    echo "Bien"
elif [ "$nota" -ge 7 ] && [ "$nota" -le 8 ]; then
    echo "Notable"
else
    echo "Sobresaliente"
fi
