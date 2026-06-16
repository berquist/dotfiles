{ config, pkgs, ... }:

{
  imports = [
    ./global
  ];

  home = {
    packages = with pkgs; [
      gelly
      nocturne
      plexamp
      protege-distribution
      spotify
    ];
  };

  home.stateVersion = "23.11";
}
