#!/bin/bash -i

## Pequeño script para lanzar un menú con dzen2
# Colores
BG=#121317
FG=#cdcdcd
# Posiciones
X=1200
Y=35
# Tamaño
W=150
H=100
# Fuente
FONT="artwiz lemon"

echo -e " \nApagar\nReiniciar\nSalir" | (dzen2 -y "$Y" -x "$X" -fn "$FONT" -bg "$BG" -fg "$FG" -l 3 -tw 100 -ta c -w 100 -m -p -e 'onstart=uncollapse;button1=menuexec;button3=exit')
