#!/bin/bash

# Obtenemos tipo de numero, -gt : Mayor que, -lt : menor que

read -p "Introduce un número entero: " num

if [ "$num" -gt 0 ]; then
    echo "El número $num es positivo."
elif [ "$num" -lt 0 ]; then
    echo "El número $num es negativo."
else
    echo "El número es cero."
fi
