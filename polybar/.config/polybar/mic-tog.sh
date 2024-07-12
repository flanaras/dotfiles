#!/bin/sh

if [ $MIC = true ]
then
    #while :
    #do
        sleep 0.5
        if [[ -z $(pactl get-source-mute @DEFAULT_SOURCE@ | grep -i "no") ]]
        then
          echo " " # Muted Icon (Install Some icon pack like feather, nerd-fonts)
        else
          echo "|| unmuted ||" # Unmuted Icon (Install Some icon pack like feather, nerd-fonts)
        fi
        sleep 0.25
    #done
else
    sleep 1000
fi
