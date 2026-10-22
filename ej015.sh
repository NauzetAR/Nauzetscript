#!/bin/bash

# 1. Guardar el listado largo de /etc en listado.txt
ls -l /etc > listado.txt

# 2. Guardar los errores de listar /root en errores.txt
ls /root 2> errores.txt

# 3. Mostrar cuántas líneas tiene cada fichero
wc -l listado.txt errores.txt
