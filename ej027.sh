#!/bin/bash

fichero="sistema.txt"

# Crear fichero a modificar con datos dentro

echo "Me gusta Windows." > "$fichero"
echo "Windows es un sistema operativo muy popular." >> "$fichero"
echo "Prefiero Windows antes que otros." >> "$fichero"

echo "Contenido modificado con sed"

#Indica la palabra a buscar con el "s/Windows"  siendo el "s" el iniciador de la busqueda para despues en la misma liena se remplaze por "Linux" y se aplique en todo el documento se añade "g" de forma global.
sed 's/Windows/Linux/g' "$fichero"

