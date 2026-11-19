#!/bin/bash

# -t : Define delimitador, -k Ordena por el numero del campo donde empieza y donde termina y n ordena por numeros

sort -t: -k3,3n /etc/passwd | tail -n 1
