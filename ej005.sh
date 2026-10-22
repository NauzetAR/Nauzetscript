#!/bin/bash
#Copiamos el registro de contraseñas y lo enviamos al directorio actual con otro nombre
cp /etc/passwd copia_passwd.txt

#Mostramos los permisos y tamaño del archivo copiado

ls -l copia_passwd.txt
