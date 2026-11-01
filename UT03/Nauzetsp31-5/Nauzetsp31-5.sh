#!/bin/bash

# Definimos la ruta del informe nuevo a crear en /var/log
informe="/var/log/informe-$(date +%Y%m%d-%H%M%S).txt"

# Crear o vaciar el archivo de informe inicia
echo "" > "$informe"
echo "" >> "$informe"
echo "" >> "$informe"
echo "                                        Informe de fallos y errores en /var/log" >> "$informe" #El espaciado es estetico
echo "" >> "$informe"
echo "" >> "$informe"

# Recorremos todos los ficheros que están en /var/log
for fichero in /var/log/*
do
    # Evita que al crear varios informer se lea a si mismo durante la ejecucion
    if [ "$fichero" = "$informe" ]; then
        continue
    fi

    # Comprobamos que sea un archivo regular (evitando carpetas)
    if [ -f "$fichero" ]; then
        
        # Buscamos error o fail (ignora mayusculas/minusculas con -i)
        coincidencias=$(grep -i -E "error|fail" "$fichero" 2> /dev/null)
        
        # Si la variable no esta vacia, se escribe el origen y los datos en el informe
        if [ -n "$coincidencias" ]; then
            echo "" >> "$informe"
            echo "" >> "$informe"
            echo "                            ARCHIVO DE ORIGEN: $fichero" >> "$informe" #El espaciado es estetico
            echo "" >> "$informe"
            echo "" >> "$informe"

            echo "$coincidencias" >> "$informe"
        fi
        
    fi
done

echo "El informe se ha guardado en $informe"
