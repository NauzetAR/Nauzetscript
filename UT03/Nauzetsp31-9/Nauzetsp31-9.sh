#!/bin/bash

#Sincronizacion completa del directorio /home/nauzet
rsync -a --delete /home/nauzet/ /bacNauzet/espejo/
