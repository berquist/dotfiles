{
  config,
  inputs,
  pkgs,
  ...
}:

{
  imports = [
    ./global
    inputs.nur-berquist.homeModules.hydrus-client
  ];

  dconf = {
    settings = {
      "org/gnome/shell" = {
        disable-user-extensions = false;
        enabled-extensions = [ "auto-theme-switcher@amritashan.github.io" ];
        favorite-apps = [
          "firefox.desktop"
          "com.mitchellh.ghostty.desktop"
          "org.gnome.Nautilus.desktop"
        ];
      };

      "org/gnome/shell/extensions/auto-theme-switcher" = {
        manual-latitude = "42.34823948453506";
        manual-longitude = "-71.08868517465712";
        night-light-mode = "sync-with-theme";
        true-light-mode = true;
      };

      "org/gnome/shell/extensions/space-iflow-randomwallpaper" = {
        auto-fetch = true;
        change-type = 2;
        hours = 1;
        minutes = 1;
      };
    };
  };

  home = {
    packages = with pkgs; [
      # cli/tui
      dconf2nix
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
        { package = pkgs.gnomeExtensions.random-wallpaper; }
      ];
    };
    hydrus-client = {
      enable = true;
      host = "172.22.207.41";
      passwordFile = "${config.home.homeDirectory}/.config/xpra/hydrus-password";
    };
  };
}
