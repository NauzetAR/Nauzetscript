#!/bin/bash

#Instalación del servicio de calendario

apt install -y ncal

#Muestra el tiempo activo del equipo
echo "El tiempo activo del equipo son $(uptime -p)"

#Muestra las terminales de los usuarios activos

echo "Los usuarios activos actualmente son $(w)"

#Calendario del mes actual

echo "El calendario actual es $(cal)"
