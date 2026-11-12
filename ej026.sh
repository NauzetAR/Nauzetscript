#!/bin/bash

#Leemos la frase del usurio
read -p "Introduce una frase: " frase

#Obtiene el dato y lo muestra por pantalla con los filtros aplicados con tr '[:lower:]' para minuscula y '[:upper:]' para mayuscula
echo "En mayúsculas: $(echo "$frase" | tr '[:lower:]' '[:upper:]')"
echo "En minuscula: $(echo "$frase" | tr '[:upper:]' '[:lower:]')"

# -d Elimina los caracteres especificados siendo en este caso los espacios
echo "Sin espacios: $(echo "$frase" | tr -d ' ')"
