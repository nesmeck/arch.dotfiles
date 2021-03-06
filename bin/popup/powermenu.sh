#!/usr/bin/env bash

# quit on error
set -e

# vars
pointer="$HOME/.bin/popup/img/pointer.png"
menu="$HOME/.bin/popup/img/menu2.png"
width=$(xdotool "getdisplaygeometry" | awk '{print $1;}')
height=$(xdotool "getdisplaygeometry" | awk '{print $2;}')
#ypos=$(expr "$height" - "242")
item="$HOME/.bin/popup/img/menu-items/"


# exec
# gen null
convert -size "$width x $height" "xc:transparent" "/tmp/null.png"

# kill
n30f -c "killall n30f" "/tmp/null.png" &

sleep ".05s"

# background & pointer
n30f -t "background" -x "1201" -y "39" -c "killall n30f" "$menu" &
#n30f -t "background" -x "14" -y "$(expr "$height" - "184")" -c "killall n30f" "$menu" &
n30f -t "pointer" -x "1271" -y "33" -c "killall n30f" "$pointer" &
#n30f -t "pointer" -x "33" -y "$(expr "$ypos" + "204")" -c "killall n30f" "$pointer" &

sleep ".05s"

# items
n30f -t "items" -x "1221" -y "60" -c "chromium & killall n30f" "$item/Apagar.png" &
n30f -t "items" -x "1221" -y "80" -c "cd $HOME && urxvt & killall n30f" "$item/Reiniciar.png" &
n30f -t "items" -x "1221" -y "100" -c "pcmanfm -n $HOME & killall n30f" "$item/Salir.png" &
#n30f -t "items" -x "34" -y "$(expr "$height" - "128")" -c "obconf & killall n30f" "$item/obconf.png" &
#n30f -t "items" -x "34" -y "$(expr "$height" - "148")" -c "feh --randomize --bg-fill $HOME/Imágenes & killall n30f" "$item/random.png" &
#n30f -t "items" -x "34" -y "$(expr "$height" - "168")" -c "pavucontrol & killall n30f" "$item/pavucontrol.png" &
