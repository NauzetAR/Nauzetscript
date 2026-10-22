#!/bin/bash

#Muestra el nombre del equipo en el que se inicie
echo "El nombre de este equipo es: $(hostname)"

#Muestra la versión actual del kernel del equipo

echo "La versión del kernel es: $(uname -r)"

#Muestra los usuarios conectados al equipo

echo "El numero de usuarios conectados al equipo son: "
who -q
