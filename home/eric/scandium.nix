{ config, pkgs, ... }:

{
  imports = [
    ./global
  ];

  home = {
    packages = with pkgs; [
      plexamp
      protege-distribution
      spotify
    ];
  };

  home.stateVersion = "23.11";
}
