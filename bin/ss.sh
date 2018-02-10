#!/usr/bin/env bash

# El operador ; es para ejecutar el comando siguiente aun si el anterior
# tuvo errores
#cmd1 = $(mpc "$1")
# next && ~/.bin/popup/cover.sh ; sleep 5s && killall n30f &
#cmd2 = $($HOME/.bin/popup/cover.sh)
#cmd3 = $(sleep 5s)
#cmd4 = $(killall n30f)

# Case
case "$1" in
	"toggle")
	killall n30f ; mpc "$1"
	;;
	"stop")
	killall n30f ; mpc "$1"
	;;
	"prev")
	killall n30f ; mpc "$1" && $HOME/.bin/popup/cover.sh ; sleep 5s && killall n30f
	;;
	"next")
	killall n30f ; mpc "$1" && $HOME/.bin/popup/cover.sh ; sleep 5s && killall n30f
	;;
	*)
	exit 0
	;;
esac

#Jugar con dzen2
#dzen2 -tw 200 -h 30 -x 300 -y 50 -bg #151515 -fg #fff
