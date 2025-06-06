#!/bin/bash
CURRENT_WS=$(xdotool get_desktop)
LAST_WS=$(($(xdotool get_num_desktops) - 1))

if [ "$1" = "left" ]; then
    if [ $CURRENT_WS -eq 0 ]; then
        xdotool set_desktop $LAST_WS
    else
        xdotool set_desktop 0
    fi
elif [ "$1" = "right" ]; then
    if [ $CURRENT_WS -eq $LAST_WS ]; then
        xdotool set_desktop 0
    else
        xdotool set_desktop $((CURRENT_WS + 1))
    fi
fi
