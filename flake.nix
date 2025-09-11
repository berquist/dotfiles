{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    lix-module = {
      url = "https://git.lix.systems/lix-project/nixos-module/archive/2.93.3-2.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/home-manager/release-25.05";
    };

    emacs-overlay = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/emacs-overlay";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      lix-module,
      ...
    }@inputs:
    {
      # NixOS configuration entrypoint
      # Available through 'nixos-rebuild --flake /path/to/this/dir#your-hostname'
      nixosConfigurations = {
        # personal desktop
        osmium = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            lix-module.nixosModules.default
            ./hosts/osmium
          ];
        };
        # personal laptop
        scandium = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            lix-module.nixosModules.default
            ./hosts/scandium
          ];
        };
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
          pkgs = nixpkgs.legacyPackages.x86_64-darwin;
          extraSpecialArgs = { inherit inputs; };
          modules = [ ./home/ejberqu/s1096537.nix ];
        };
        # personal laptop
        "eric@scandium" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs; };
          modules = [ ./home/eric/scandium.nix ];
        };
        # personal laptop
        "eric@sodium" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-darwin;
          extraSpecialArgs = { inherit inputs; };
          modules = [ ./home/eric/sodium.nix ];
        };
      };
    };
}
