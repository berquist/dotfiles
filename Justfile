hostname := `hostname -s`
whoami := `whoami`

# Rebuild the current NixOS system.
nix-rebuild:
    sudo nixos-rebuild switch --upgrade --flake ~/dotfiles#{{ hostname }}

# Run home-manager for the current user and system.
nix-home-manager:
    nix run home-manager/release-24.11 -- switch --flake ~/dotfiles#{{ whoami }}@{{ hostname }}
