#!/bin/sh

# Preferred players
players="spotify mpd mpv vlc"

active_players=$(playerctl -l 2>/dev/null)

for p in $players; do
    if echo "$active_players" | grep -q "$p"; then
        playerctl --player=$p play-pause
        exit 0
    fi
done

# Fallback: control the first non-firefox player
for p in $(playerctl -l 2>/dev/null | grep -v firefox); do
    playerctl --player=$p play-pause
    exit 0
done

