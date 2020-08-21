#!/usr/bin/env sh
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background2 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background3 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background4 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background5 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background6 &
MONITOR="HDMI1" polybar -c ~/.config/polybar/config.ini background7 &
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

############################################################################

MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini background.edp.2 &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini background.edp.3 &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini background.edp.4 &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini background.edp.5 &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini background.edp.6 &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini background.edp.7 &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main1.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini sep21.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini sep12.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main2.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini sep22.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini sep13.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main3.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini sep23.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini sep14.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main4.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini sep24.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini sep15.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main5.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini sep25.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main6.edp &
MONITOR="eDP1" polybar -c ~/.config/polybar/config.ini main7.edp &
