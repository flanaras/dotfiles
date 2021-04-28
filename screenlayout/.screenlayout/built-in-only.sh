#!/usr/bin/env bash

function rgi {
	rg -i "$@"
}

screens=`xrandr -q | rgi connected | cut -d " " -f 1`
built_in=eDP1

cmd=''

for current in  $screens
do
	if [ "$built_in" == "$current" ]; then
		xrandr --output eDP1 --mode 1920x1080
		continue
	fi
	
	cmd="$cmd --output $current --off"

done

xrandr $cmd
