{ config, pkgs, ... }:

{
  imports = [
    ./global
  ];

  home = {
    packages = with pkgs; [
      fluffychat
      plexamp
      protege-distribution
      spotify
    ];
  };

  home.stateVersion = "23.11";
}
