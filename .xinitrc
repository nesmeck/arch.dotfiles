#!/bin/bash
#
#~/.xinitrc
#

# Activar NumLock
numlockx &

# Apagar el beep
xset b off

# Inicializar urxvt como daemon
#urxvt -q -f &

# Cargar fuentes en ~/.fonts
xset +fp ~/.fonts
xset fp rehash
fc-cache

# Iniciar mpd y mpc (pausa)
mpd &
sleep 5s && mpc pause &

# Activar colores vibrantes con nvidia
~/.bin/vibrance.sh &

# Establecer fondo de pantalla
#~/.fehbg &

# Iniciar redshift
pgrep redshift &> /dev/null || redshift &> /dev/null &

# Iniciar gestor de ventanas
#exec openbox-session
exec bspwm
