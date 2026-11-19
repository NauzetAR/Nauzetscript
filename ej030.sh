#!/bin/bash

# ls -p : Lista los directorios sin contar los ocultos, grep $/ : Obtiene los direcrorios que terminen en /, grep -v /$ : filtra y busca los archisvo (No terminan en /) y wc -l : Cuenta el total de lineas obtenidas

ficheros=$(ls -p | grep -v '/$' | wc -l)
directorios=$(ls -p | grep '/$' | wc -l)

echo "Ficheros: $ficheros"
echo "Directorios: $directorios"
