#!/usr/bin/env bash

# quit on error
set -e

maim -s --hidecursor -m 10 ~/Imágenes/Screenshots/$(date +%d-%b-%Y_%H-%M-%S).png
#maim -s --hidecursor "$HOME/Imágenes/Screenshots/$(date +%F-%T).png"

if [ "$?" == "1"  ] ; then
	:
else
	notify-send "Captura de ventana tomada"
fi
