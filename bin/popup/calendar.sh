#!/usr/bin/env bash

# vars
cil="/tmp/calendar.png"
bg="$HOME/.bin/popup/img/bg.png"
width=$(xdotool "getdisplaygeometry" | awk '{print $1;}')
height=$(xdotool "getdisplaygeometry" | awk '{print $2;}')
ypos=$(expr "$height" - "242")
xpos=$(expr "$width")

# convert the output to png
convert -background "rgba(0,0,0,0)" \
		-fill "white" \
		-font "kakwafont-12-n" \
		+antialias \
		-pointsize 12 \
		label:"$(date "+%d %B %Y\n" && cal | tail -n7)" \
		"$cil"

# display it
popup "" "$(expr "$width" - "215")" -p "139" &
sleep ".05s"
n30f -x "$(expr "$width" - "168")" -y "$(expr "$ypos" + "50")" -c "killall n30f" "$cil"

# delete it
sleep ".2s"
rm "$cil"
