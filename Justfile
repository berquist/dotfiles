hostname := `hostname -s`
whoami := `whoami`

# Rebuild the current NixOS system.
nix-rebuild:
    sudo nixos-rebuild switch --upgrade --flake ~/dotfiles#{{ hostname }}

# Refresh the nix registry list.
nix-registry:
    nix registry list --refresh -L

# Run home-manager for the current user and system.
nix-home-manager:
    nix run home-manager/release-25.05 -- switch --flake ~/dotfiles#{{ whoami }}@{{ hostname }}
