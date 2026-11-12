#!/bin/bash

#Creamos la variable con el nombre del fichero
fichero="duplicado.txt"

#Ingresamos los datos dentro del fichero para que este se cree
echo "Sofia" > "$fichero"
echo "Mateo" >> "$fichero"
echo "Ana" >> "$fichero"
echo "Sofia" >> "$fichero"

#Aplicamos un orde a los datos con el sort y con -u evitamos duplicados
sort -u "$fichero"
