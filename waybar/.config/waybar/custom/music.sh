#!/bin/sh

# List of preferred players in order of priority
players="spotify mpd mpv vlc"

# Get active players
active_players=$(playerctl -l 2>/dev/null)

# Try each preferred player
for p in $players; do
    if echo "$active_players" | grep -q "$p"; then
        status=$(playerctl --player=$p status 2>/dev/null)
        if [ "$status" = "Playing" ]; then
            echo " $(playerctl --player=$p metadata artist 2>/dev/null) - $(playerctl --player=$p metadata title 2>/dev/null)"
            exit 0
        elif [ "$status" = "Paused" ]; then
            echo " $(playerctl --player=$p metadata artist 2>/dev/null) - $(playerctl --player=$p metadata title 2>/dev/null)"
            exit 0
        fi
    fi
done

# Fallback: check any player except Firefox
for p in $(playerctl -l 2>/dev/null | grep -v firefox); do
    status=$(playerctl --player=$p status 2>/dev/null)
    if [ "$status" = "Playing" ]; then
        echo " $(playerctl --player=$p metadata artist 2>/dev/null) - $(playerctl --player=$p metadata title 2>/dev/null)"
        exit 0
    elif [ "$status" = "Paused" ]; then
        echo " $(playerctl --player=$p metadata artist 2>/dev/null) - $(playerctl --player=$p metadata title 2>/dev/null)"
        exit 0
    fi
done

# If nothing is playing
echo ""

