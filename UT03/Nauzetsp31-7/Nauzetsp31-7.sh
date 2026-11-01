#!/bin/bash

# Definir el umbral
UMBRAL=80
LOG="/var/log/espacio_disco.log"

# Filtrar únicamente particiones de discos duros reales (sd*, nvme*, vd*)
df | grep -E '^/dev/(sd|nvme|vd)' | while read linea; do
    
    # Extraer la partición, el porcentaje y el punto de montaje
    particion=$(echo $linea | awk '{print $1}')
    porcentaje=$(echo $linea | awk '{print $5}'| tr -d '%')
    montaje=$(echo $linea | awk '{print $6}')
    
    # Si el uso es mayor o igual al umbral, escribir en el registro
    if [ "$porcentaje" -ge "$UMBRAL" ]; then
        echo "$(date) - Partición: $montaje ($particion) - Uso: ${porcentaje}%" >> "$LOG"
    fi
    
done
