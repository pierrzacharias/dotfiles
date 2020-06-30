#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main.mail.edp &
# MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main.time.edp &
# MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main.title.edp &
# MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main.battery.edp &

# MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main.f.2 &
# MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main.mail.2 &
# MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main.title.2 &
# MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main.time.2 &
# MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main.battery.2 &
# for m in $(polybar --list-monitors | cut -d":" -f1); do
#     # MONITOR=$m polybar --reload bar1 &
# done
