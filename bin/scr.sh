#!/usr/bin/env bash

# quit on error
set -e

scrot -q 100 '%d-%b-%Y_%H-%M-%S.png' -e 'mv $f ~/Imágenes/Screenshots/'
#maim $HOME/Imágenes/Screenshots/$(date +%F-%T).png --hidecursor
notify-send "Captura tomada"
