if status is-interactive
  # Commands to run in interactive sessions can go here
  starship init fish | source
  fish_add_path ~/.local/bin
  fish_add_path ~/go/bin
  fish_add_path ~/.cargo/bin
  set -Ux npm_config_prefix ~/.local
  set fish_greeting
  set -Ux EDITOR nvim
  fish_add_path ~/.cargo/bin
  set -Ux TERM kitty
  set -Ux QT_QPA_PLATFORMTHEME qt5ct

  # ✅ Show fastfetch only once per Kitty session
  if not test -f /tmp/.kitty_fastfetch_shown
    fastfetch
    touch /tmp/.kitty_fastfetch_shown
  end

  # ✅ Cleanup marker on last Kitty window close
  function on_exit --on-event fish_exit
    if [ (count (ps -e | grep kitty)) -le 1 ]
      rm -f /tmp/.kitty_fastfetch_shown
    end
  end
end

# ✅ Additional path outside interactive block (which is fine)
fish_add_path /home/alcatraz1191/.spicetify

