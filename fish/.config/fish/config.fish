if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    source $__fish_config_dir/environment.fish
    fish_add_path -g ~/.cargo/bin
    eval $(starship init fish)
    starship init fish | source
end
if status is-login   
  # Kill any existing agents before starting a new one
    if not pgrep ssh-agent &>/dev/null
        eval (keychain)
    end
    if not ssh-add -l &>/dev/null
        ssh-add ~/.ssh/id_ed25519 &>/dev/null
    end
end
