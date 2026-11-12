#!/bin/bash

#Mostramos a todos los usuarios con shell /bin/bash
echo "Usuarios con shell bash"
grep "/bin/bash" /etc/passwd


#Contamos a los usuario que contengan una shell /bin/bash
echo "Total de usuarios: "
grep -c "/bin/bash" /etc/passwd
