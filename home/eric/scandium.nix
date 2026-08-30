{ config, pkgs, ... }:

{
  imports = [
    ./global
  ];

  home = {
    packages = with pkgs; [
      # cli/tui
      dconf2nix
      mediainfo

      # gui
      gelly
      nocturne
      picard
      plexamp
      protege-distribution
      spotify
      wezterm
      zoom-us
      zotero
    ];
    stateVersion = "23.11";
  };
}
