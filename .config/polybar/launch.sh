#!/usr/bin/env sh

# Terminate already running instances
killall -q polybar

# Wait until the process have been shutdown
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch bars
polybar top -c ~/.config/polybar/config.ini &
