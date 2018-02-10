#!/usr/bin/env bash
# usage:
# popup [file] [placement] -p [pointer location]

# fetch the colors
source "$HOME/.bin/colors.sh"

# vars
background="$HOME/.bin/popup/img/bg.png"
pointer="$HOME/.bin/popup/img/pointer.png"
y="60"

# exec
# expr es para hacer calculos con dos valores dados
# en este caso es 60 + 6
n30f -x "$2" -y "$(expr $y - 26)" -c "killall n30f" "$background" &
sleep ".05s"
# 60 + 11
n30f -x "$(expr "$2" + 5)" -y "$(expr $y - 21)" -c "killall n30f" "$1" &

# pointer
if [ "$3" == "-p" ] ; then
	n30f -x "$(expr "$2" + "$4")" -y "$y" -c "killall n30f" "$pointer"
else
	exit
fi
