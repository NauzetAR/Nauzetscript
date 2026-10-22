#!/bin/bash
#Variables a obtener para realiar las ecuaciones
read -p "Ingrese el primer valor por favor " a

read -p "Ingrese el segundo valor por favor " b

#Muestra por pantalla las diferentes ecuaciones realizadas

echo "La suma de los valores $a + $b dan como resultado $((a + b))"

echo "La resta de los valores $a - $b dan como resultado $((a - b))"

echo "La multiplicación de los valores $a * $b dan como resultado $((a * b))"

echo "La división entera utilizando los valores $a / $b dan como resultado $((a / b))"
