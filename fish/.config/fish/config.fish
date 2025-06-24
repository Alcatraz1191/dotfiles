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
end

fish_add_path /home/alcatraz1191/.spicetify
