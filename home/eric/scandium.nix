{ config, pkgs, ... }:

{
  imports = [
    ./global
  ];

  home = {
    packages = with pkgs; [
      plexamp
      spotify
    ];
  };

  home.stateVersion = "23.11";
}
