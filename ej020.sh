#!/bin/bash

# 1. Pedir el año de nacimiento al usuario
read -p "Introduce tu año de nacimiento: " anio_nac

# 2. Obtener el año actual automáticamente del sistema
anio_actual=$(date +%Y)

# 3. Calcular la edad restando el año actual menos el de nacimiento
edad=$((anio_actual - anio_nac))

# 4. Mostrar el resultado
echo "Tu edad aproximada es: $edad años"
