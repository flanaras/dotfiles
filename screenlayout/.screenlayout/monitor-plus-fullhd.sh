#!/bin/sh
single_screen="HDMI2"
resolution="1920x1080"

if [[ -n $1 ]]; then
    single_screen=$1
fi

if [[ -n $2 ]]; then
    resolution=$2
fi

echo $1
echo $single_screen
xrandr --output eDP1 --primary --mode 1920x1080 --rotate normal --output $single_screen --mode $resolution --rotate normal --right-of eDP1

i3-msg restart

