#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar top -c $HOME/.config/polybar/config$1 &
polybar bottom -c $HOME/.config/polybar/config$1 &
#polybar main -c $HOME/.config/polybar/config &
#polybar bottom -c $HOME/.config/polybar/config &

#polybar top &

echo "Barras iniciadas..."
