{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";

    home-manager = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/home-manager";
    };

    emacs-overlay = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/emacs-overlay";
    };

    fenix = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/fenix";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: {
    # NixOS configuration entrypoint
    # Available through 'nixos-rebuild --flake /path/to/this/dir#your-hostname'
    nixosConfigurations = {
      # personal laptop
      scandium = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [ ./hosts/scandium ];
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
