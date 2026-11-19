#!/bin/bash
read -p "Introduce el primer número: " n1
read -p "Introduce el segundo número: " n2

if [ "$n1" -gt "$n2" ]; then
    echo "$n1 es mayor que $n2."
elif [ "$n2" -gt "$n1" ]; then
    echo "$n2 es mayor que $n1."
else
    echo "Ambos números son iguales ($n1)."
fi
