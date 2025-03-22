if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    source $__fish_config_dir/environment.fish
    fish_add_path -g ~/.cargo/bin
    eval $(starship init fish)
    starship init fish | source
    # Kill any existing agents before starting a new one
    if pgrep ssh-agent > /dev/null
      ssh-agent -k
    end
    eval (ssh-agent -c)
    ssh-add ~/.ssh/id_ed25519 2>/dev/null

end
