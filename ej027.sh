#!/bin/bash

fichero="sistema.txt"

# Crear fichero a modificar con datos dentro

echo "Me gusta Windows." > "$fichero"
echo "Windows es un sistema operativo muy popular." >> "$fichero"
echo "Prefiero Windows antes que otros." >> "$fichero"

echo "Contenido modificado con sed"

#Indica la palagra d eorigen a  modificar "s" y la palabra por la que sera remplazada "g"
sed 's/Windows/Linux/g' "$fichero"

