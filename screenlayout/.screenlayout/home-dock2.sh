#!/bin/sh
xrandr --output eDP1 --mode 1920x1080 --rotate normal --output DP1 --mode 1920x1080 --rotate normal --right-of eDP1 --output HDMI2 --primary --mode 1920x1080 --rotate normal --right-of DP1

i3-msg restart

