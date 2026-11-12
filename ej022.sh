#!/bin/bash

# -F indica los delimitadores, $1 saca el valor en ese campo y "\t" indica una tabulación
awk -F: '{print $1 "\t" $7}' /etc/passwd
