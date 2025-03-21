if [[ $(pgrep hypridle) ]]; then
  killall hypridle
  echo '{"text":"󰅶"}'
else
  hyprctl dispatch exec hypridle >/dev/null
  echo '{"text":"󰾪"}'
fi
