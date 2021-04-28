#!/bin/sh

~/.screenlayout/office-step-one.sh

xrandr --output eDP1 --mode 1920x1080 --pos 0x120 --rotate normal --output DP2-2-1 --mode 1920x1200 --pos 1920x0 --rotate normal --output DP2-2-8 --primary --mode 1920x1200 --pos 3840x0 --rotate normal

i3-msg reload
