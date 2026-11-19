#!/bin/bash

# ps aux : Muestra todos los procesos, --sort=-%mem : Ordena por la memoria de forma decesndente (-), head : Muestra cabecera y las siguiesntes 5 lineas y awk {] : Obtiene los datos a mostrar he indica la forma en la qu se muestra

ps aux --sort=-%mem | head -n 6 | awk '{print "Usuario: " $1, "- PID: " $2, "- %MEM: " $4}'
