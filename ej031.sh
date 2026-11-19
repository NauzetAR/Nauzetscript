#!/bin/bash

# hostname -I : Obtiene información que incluye la IP y awk : Muestra el primer campo que separa por un espacio

hostname -I | awk '{print $1}'
