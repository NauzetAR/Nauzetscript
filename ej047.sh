#!/bin/bash

# Comprueba que existan dos para metros dados por el usuario junto al script

if [ $# -ne 2 ]; then
    echo "Sintaxis incorrecta."
    echo "Uso correcto: $0 <parametro1> <parametro2>"
    exit 1
fi

echo "Parámetro 1: $1"
echo "Parámetro 2: $2"
