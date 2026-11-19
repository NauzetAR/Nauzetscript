#!/bin/bash

# Lista de los archivos, grep "^-" : Busca los ficheros que empiezan por - para que solo sean ficheros, awk : Suma los resultados de los bloques grep desde el quinto bloque que indica los tamaños y con el END muesrta la suma total obtenida por awk por pantalla.

ls -l | grep "^-" | awk '{suma += $5} END {print "Tamaño total en bytes:", suma}'
