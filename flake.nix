{
  description = "My NixOS/nix-darwin configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/home-manager/master";
    };

    nixpkgs-x86_64-darwin.url = "github:NixOS/nixpkgs/nixpkgs-26.05-darwin";

    home-manager-x86_64-darwin = {
      inputs.nixpkgs.follows = "nixpkgs-x86_64-darwin";
      url = "github:nix-community/home-manager/release-26.05";
    };

    emacs-overlay = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/emacs-overlay";
    };

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
      nixpkgs,
      nixpkgs-x86_64-darwin,
      home-manager,
      home-manager-x86_64-darwin,
      self,
      nix-darwin,
      nix-darwin-emacs,
      nixpkgs-darwin,
      my-fonts,
      ...
    }@inputs:
    {
      # NixOS configuration entrypoint
      # Available through 'nixos-rebuild --flake /path/to/this/dir#your-hostname'
      nixosConfigurations = {
        # personal desktop (old)
        osmium = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/osmium
          ];
        };
        # personal desktop (new)
        sanguinello = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/sanguinello
          ];
        };
        # personal laptop
        scandium = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/scandium
          ];
        };
      };

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
          ./nix-darwin/neon.nix
        ];
      };

      # Standalone home-manager configuration entrypoint
      # Available through 'home-manager --flake /path/to/this/dir#your-username@your-hostname'
      homeConfigurations = {
        # personal desktop
        "eric@osmium" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [ ./home/eric/osmium.nix ];
        };
        "ejberqu@s1096537" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.aarch64-darwin;
          extraSpecialArgs = { inherit inputs; };
          modules = [ ./home/ejberqu/s1096537.nix ];
        };
        # personal laptop
        "eric@scandium" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [ ./home/eric/scandium.nix ];
        };
        # personal desktop (new)
        "eric@sanguinello" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [ ./home/eric/sanguinello.nix ];
        };
        # personal laptop
        "eric@sodium" = home-manager-x86_64-darwin.lib.homeManagerConfiguration {
          pkgs = nixpkgs-x86_64-darwin.legacyPackages.x86_64-darwin;
          extraSpecialArgs = { inherit inputs; };
          modules = [ ./home/eric/sodium.nix ];
        };
      };
    };
}
