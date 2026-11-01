#!/bin/bash

# Leer el fichero programas.txt línea por línea
while read programa
do
    # Comprobar que la línea no esté vacía
    if [ -n "$programa" ]; then

        # Comprobar si el programa está instalado en el sistema
        if dpkg -s "$programa" &> /dev/null; then

            echo ""
            echo "El programa está instalado. Desinstalando"
            echo ""

            # Desinstalar y purgar el paquete
            apt purge -y "$programa"
            
            echo ""
            echo "Desinstalado correctamente"
            echo ""
        else
            # Aviso si no está instalado y continúa con el siguiente
            echo ""
            echo "AVISO: El programa '$programa' NO está instalado."
            echo ""
        fi
    fi
done < programas.txt

echo "Programa desinstalado."
