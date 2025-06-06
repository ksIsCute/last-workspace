#!/bin/bash
CURRENT_WS=$(xdotool get_desktop)
TOTAL_WS=$(xdotool get_num_desktops)

case "$1" in
    "left")
        if [ $CURRENT_WS -eq 0 ]; then
            # Wrap around to last workspace
            xdotool set_desktop $((TOTAL_WS - 1))
        else
            # Move left normally
            xdotool set_desktop $((CURRENT_WS - 1))
        fi
        ;;
    "right")
        if [ $CURRENT_WS -eq $((TOTAL_WS - 1)) ]; then
            # Wrap around to first workspace
            xdotool set_desktop 0
        else
            # Move right normally
            xdotool set_desktop $((CURRENT_WS + 1))
        fi
        ;;
    *)
        echo "Usage: $0 [left|right]"
        exit 1
        ;;
esac
