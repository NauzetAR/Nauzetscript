#!/bin/bash

#date : Obtiene la fehca del sistema, cut : Separa los datos obtenidos por el delimitador / con -d y -f Obtiene el campo exacto

fecha=$(date +%d/%m/%Y)

dia=$(echo "$fecha" | cut -d/ -f1)
mes=$(echo "$fecha" | cut -d/ -f2)
anio=$(echo "$fecha" | cut -d/ -f3)

echo "Fecha completa: $fecha"
echo "Día: $dia"
echo "Mes: $mes"
echo "Año: $anio"
