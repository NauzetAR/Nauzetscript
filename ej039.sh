#!/bin/bash

#Muestra los procesos del usuario actual siendo solo el pid y cmd mientras que son ordenador por pid

ps -u "$USER" -o pid,cmd --sort=pid
