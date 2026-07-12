{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-26.05-darwin";
    nix-darwin = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-darwin/nix-darwin/nix-darwin-26.05";
    };
    nix-darwin-emacs = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-giant/nix-darwin-emacs";
    };
    my-fonts.url = "path:/Users/eric/development/my-fonts";
  };

  outputs = inputs@{ self, nix-darwin, nix-darwin-emacs, nixpkgs, my-fonts }:
    let
      configuration = { pkgs, ... }: {
        # List packages installed in system profile. To search by name, run:
        # $ nix-env -qaP | grep wget
        environment.systemPackages = with pkgs; [
          bat
          caffeine
          difftastic
          duf
          emacs
          eza
          fastfetch
          gh
          glab
          nano
          prek
          racket
          ripgrep
          wezterm
        ];

        fonts.packages = [
          (self.inputs.my-fonts.defaultPackage.aarch64-darwin)
        ];

        homebrew = {
          brews = [
            "dotdrop"
            "mas"
          ];
          casks = [
            "discord"
            "firefox"
            "ghostty"
            "plexamp"
            "spotify"
            "sshfs-mac"
            "xld"
            "zerotier-one"
            "zotero"
          ];
          enable = true;
          enableZshIntegration = true;
          masApps = {
            forScore = 363738376;
          };
        };

        nix.settings.experimental-features = "nix-command flakes";

        nixpkgs.hostPlatform = "aarch64-darwin";

        programs = {
          direnv = {
            enable = true;
            enableBashIntegration = true;
            enableZshIntegration = true;
          };
          gnupg.agent.enable = true;
        };

        services = {
          emacs = {
            enable = true;
          };
        };

        system = {
          # Set Git commit hash for darwin-version.
          configurationRevision = self.rev or self.dirtyRev or null;
          keyboard = {
            enableKeyMapping = true;
            remapCapsLockToControl = true;
            # swapLeftCommandAndLeftAlt = true;
          };
          primaryUser = "eric";
          # Used for backwards compatibility, please read the changelog before changing.
          # $ darwin-rebuild changelog
          stateVersion = 6;
        };
      };
    in
      {
        # Build darwin flake using:
        # $ darwin-rebuild build --flake .#neon
        darwinConfigurations."neon" = nix-darwin.lib.darwinSystem {
          modules = [
            {
              nixpkgs = {
                overlays = [
                  # nix-darwin-emacs.overlays.emacs
                ];
              };
            }
            configuration
          ];
        };
      };
}
