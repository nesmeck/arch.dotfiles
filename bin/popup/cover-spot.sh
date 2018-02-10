#!/usr/bin/env bash

# quit on error
#set -e

# Descargar imagen
link=$(playerctl --player=spotify metadata | awk '{print $7}' | tr -d "<''>,")

csf=$(mpc -f %file% | head -1)
csil="/tmp/cover.png"
#csbil="/home/alex/.bin/popup/img/bg.png"
csbil="$HOME/.bin/popup/img/bg.png"
height=$(xdotool "getdisplaygeometry" | awk '{print $2;}')
ypos=$(expr "$height" - "242")

# extract the album art
ffmpeg -loglevel 0 -y -i "$HOME/Música/$csf" -vf scale=-200:200 "$csil"

# display it
$HOME/.bin/popup/popup.sh "$csil" "1140"
# Agregar para mostrar la flechita
# -p "30"
#popup /tmp/cover.png "12" -p "30"

# delete it
sleep ".25s"
rm "$csil"
