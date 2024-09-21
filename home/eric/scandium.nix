{ config, pkgs, ... }:

{
  imports = [
    ./global
  ];

  home = {
    packages = with pkgs; [
      fluffychat
      plexamp
      spotify
    ];
  };

  home.stateVersion = "23.11";
}
