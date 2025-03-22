if status is-interactive
  # Commands to run in interactive sessions can go here
  set fish_greeting
  source $__fish_config_dir/environment.fish
  fish_add_path -g ~/.cargo/bin
  eval $(starship init fish)
  starship init fish | source
  #ssh key
  eval $(keychain --eval --quiet id_ed25519)
end
