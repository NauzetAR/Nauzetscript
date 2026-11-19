#!/bin/bash

# du -sh : Calcula el espacio den disco de los elementos, -s : Resumen del resultado, -h : Muestra los datos con los pesos originales, ~/* : Todos los datos a analizar empiezan desde el directorio personal de usuario.

du -sh ~/* 2>/dev/null | sort -hr | head -n 5
