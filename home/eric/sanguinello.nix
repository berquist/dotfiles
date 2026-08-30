{ config, pkgs, ... }:

{
  imports = [
    ./global
  ];

  home = {
    packages = with pkgs; [
      # cli/tui
      mediainfo

      # gui
      picard
      plexamp
      protege-distribution
      spotify
      wezterm
    ];
    stateVersion = "26.05";
  };
}
