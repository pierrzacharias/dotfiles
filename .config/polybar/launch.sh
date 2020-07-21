#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main.mail.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main.time.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main.title.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main.battery.edp &

# MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background1 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background2 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background3 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background4 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background5 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background6 &
gONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background7 &
# MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background8 &
# MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini sep11 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main1 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini sep21 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini sep12 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main2 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini sep22 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini sep13 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main3 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini sep23 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini sep14 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main4 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini sep24 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini sep15 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main5 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini sep25 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main6 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini main7 &
