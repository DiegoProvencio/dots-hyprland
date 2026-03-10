#!/bin/bash

profile=$(powerprofilesctl get)

if [ "$1" = "click" ]; then
    if [ "$profile" = "power-saver" ]; then
        powerprofilesctl set balanced
    elif [ "$profile" = "balanced" ]; then
        powerprofilesctl set performance
    else
        powerprofilesctl set power-saver
    fi
fi

profile=$(powerprofilesctl get)

if [ "$profile" = "power-saver" ]; then
    echo '{"text":"󰌪","class":"eco"}'
elif [ "$profile" = "balanced" ]; then
    echo '{"text":"󰾅","class":"balanced"}'
else
    echo '{"text":"󰓅","class":"performance"}'
fi
