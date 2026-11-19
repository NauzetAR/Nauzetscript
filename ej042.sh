#!/bin/bash

#$(()) : Sintaxis aritmétrica, -eq : Igual que

read -p "Introduce un número: " num

if [ $((num % 2)) -eq 0 ]; then
    echo "El número $num es par."
else
    echo "El número $num es impar."
fi
