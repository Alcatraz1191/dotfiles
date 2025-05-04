if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    fish_add_path ~/.local/bin
    fish_add_path ~/go/bin
    set -Ux npm_config_prefix ~/.local
    set fish_greeting
    set -Ux EDITOR nvim
    fish_add_path ~/.cargo/bin
end
