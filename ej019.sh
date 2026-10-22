#!/bin/bash

# 1. Crear el fichero original con algo de contenido
echo "Hola mundo" > original.txt

# 2. Crear un enlace simbólico (blando)
ln -s original.txt enlace_blando

# 3. Crear un enlace duro
ln original.txt enlace_duro

# 4. Compararlos mostrando sus Inodes
ls -li original.txt enlace_blando enlace_duro
