hostname := `hostname -s`
whoami := `whoami`

# Rebuild the current NixOS system.
nix-rebuild:
    sudo nixos-rebuild switch --flake ~/dotfiles#{{ hostname }}

# Refresh the nix registry list.
nix-registry:
    nix registry list --refresh -L

# Run home-manager for the current user and system.
nix-home-manager:
    home-manager switch --flake ~/dotfiles#{{ whoami }}@{{ hostname }}
