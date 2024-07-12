#!/usr/bin/env bash

function rgi {
	rg -i "$@"
}

screens=`xrandr -q | rgi connected | cut -d " " -f 1`
built_in=eDP

cmd=''

for current in  $screens
do
	if [ "$built_in" == "$current" ]; then
		xrandr --output $built_in --mode 3840x2160
		continue
	fi
	
	cmd="$cmd --output $current --off"

done

xrandr $cmd
