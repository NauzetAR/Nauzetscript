#!/bin/bash

# Directorio de almacenamiento de las copias
bac="/bacNauzet"
destino="$bac/CopDifSem-$(date +%V).tar.bz2"

# Localizar automáticamente la última copia total generada por el script copia_total
ultima_total=$(ls -t "$bac"/CopTot-*.tar.bz2 2>/dev/null | head -n 1)

# Verificar si existe una copia total previa
if [ -n "$ultima_total" ]; then
    # Copia diferencial: busca solo los ficheros en /home más nuevos que la última copia total
    find /home -type f -newer "$ultima_total" -print0 | tar --null -cjf "$destino" --files-from=-
fi
