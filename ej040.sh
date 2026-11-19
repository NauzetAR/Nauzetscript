#!/bin/bash

# awk -F : Muestra el campo 7 de passwd que son las shell de los usuarios, sort : Ordena alfabeticamente y uniq -c : Cuenta las lineas que coinciden que sean unicas.

awk -F: '{print $7}' /etc/passwd | sort | uniq -c
