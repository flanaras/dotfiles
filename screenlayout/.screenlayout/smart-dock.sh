#!/usr/bin/env bash

function setPrimaryScreen {
    sed "s/\(set \$s_primary\) [a-zA-Z0-9-]\+/\1 $1/" ~/.config/i3/config -i
}

function setSecondaryScreen {
    sed -e "s/\(set \$s_secondary\) [a-zA-Z0-9-]\+/\1 $1/" ~/.config/i3/config -i
}

function backupConfig {
    cp ~/.config/i3/config ~/.config/i3/backup/config-`date +%Y-%m-%d-%H%M`
}

displays=`xrandr -q | rg " connected" | cut -d " " -f 1`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

backupConfig
if [[ "$displays" = *"eDP1"*"DP2-2-1"*"DP2-2-8" ]]; then

    setPrimaryScreen 'DP2-2-8'
    setSecondaryScreen 'DP2-2-1'

	$DIR/office-dock.sh
	reloadPolybar

elif [[ "$displays" = *"eDP1"*"DP1"*"HDMI2" ]]; then
    setPrimaryScreen 'HDMI2'
    setSecondaryScreen 'DP1'

	$DIR/home-dock2.sh
	reloadPolybar

elif [[ "$displays" = *"eDP1"*"DP1" ]]; then
    setPrimaryScreen 'DP1'

	$DIR/monitor-plus-fullhd.sh 'DP1'
	reloadPolybar

elif [[ "$displays" = *"eDP1"*"DP2-1-8" ]]; then
    setPrimaryScreen 'DP2-1-8'

	$DIR/monitor-plus-fullhd.sh 'DP2-1-8'
	reloadPolybar

elif [[ "$displays" = *"eDP1"*"DP2-1" ]]; then
    setPrimaryScreen 'DP2-1'

	$DIR/monitor-plus-fullhd.sh 'DP2-1' '1920x1200'
	reloadPolybar

elif [[ "$displays" = *"eDP1"*"HDMI2" ]]; then
    setPrimaryScreen 'HDMI2'

	$DIR/monitor-plus-fullhd.sh 'HDMI2'
	reloadPolybar

fi

