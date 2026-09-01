{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs-darwin.url = "github:NixOS/nixpkgs/nixos-unstable";
    nix-darwin = {
      inputs.nixpkgs.follows = "nixpkgs-darwin";
      url = "github:nix-darwin/nix-darwin/master";
    };
    nix-darwin-emacs = {
      inputs.nixpkgs.follows = "nixpkgs-darwin";
      url = "github:nix-giant/nix-darwin-emacs";
    };
    my-fonts.url = "path:/Users/eric/development/my-fonts";
  };

  outputs =
    {
      self,
      nix-darwin,
      nix-darwin-emacs,
      nixpkgs-darwin,
      my-fonts,
    }@inputs:
    {
      # Build darwin flake using:
      # $ darwin-rebuild build --flake .#neon
      darwinConfigurations."neon" = nix-darwin.lib.darwinSystem {
        specialArgs = {
          inherit self;
          inherit my-fonts;
        };
        modules = [
          {
            nixpkgs = {
              overlays = [
                # nix-darwin-emacs.overlays.emacs
              ];
            };
          }
          ./neon.nix
        ];
      };
    };
}
