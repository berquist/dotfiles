hostname := `hostname -s`

whoami := `whoami`

# Rebuild the current local NixOS system.
[linux]
nix-rebuild:
    sudo nixos-rebuild switch --flake ~/dotfiles#{{ hostname }}

# Rebuild the current local nix-darwin system.
[macos]
nix-rebuild:
    sudo darwin-rebuild switch --flake ~/dotfiles#{{ hostname }}

# Refresh the Nix registry list.
nix-registry:
    nix registry list --refresh -L

# Run home-manager for the current local user and system.
nix-home-manager:
    home-manager switch --flake ~/dotfiles#{{ whoami }}@{{ hostname }}
