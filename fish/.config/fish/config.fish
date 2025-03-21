if status is-interactive
    # Commands to run in interactive sessions can go here
    source $__fish_config_dir/environment.fish
    fish_add_path -g ~/.cargo/bin
    eval (ssh-agent -c) >/dev/null
end
