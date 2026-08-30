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

  programs = {
    gnome-shell = {
      enable = true;
      extensions = [
        { package = pkgs.gnomeExtensions.automatic-theme-switcher; }
        # { package = pkgs.gnomeExtensions.night-theme-switcher; }
      ];
    };
  };
}
