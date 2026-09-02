{
  self,
  pkgs,
  my-fonts,
  ...
}:
{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    # TODO migrate some to home-manager
    bat
    caffeine
    difftastic
    duf
    emacs
    eza
    fastfetch
    fd
    gh
    glab
    home-manager
    htop
    just
    nano
    prek
    ripgrep
    rsync
    tree
    wezterm
    wget
  ];

  fonts.packages = [
    (my-fonts.defaultPackage.aarch64-darwin)
  ];

  homebrew = {
    brews = [
      # Nix unstable version is too old
      {
        name = "container";
        start_service = true;
        restart_service = "changed";
      }
      "mas"
    ];
    casks = [
      "discord"
      "firefox"
      "ghostty"
      "plexamp"
      "qobuz"
      # Racket is packaged for macOS, but the bundled DrRacket doesn't start?
      "racket"
      "slack"
      "spotify"
      "sshfs-mac"
      "vlc"
      "xld"
      "zerotier-one"
      "zotero"
    ];
    enable = true;
    enableZshIntegration = true;
    masApps = {
      forScore = 363738376;
    };
  };

  nix = {
    package = pkgs.lixPackageSets.stable.lix;
    settings = {
      experimental-features = "nix-command flakes";
      sandbox = true;
    };
  };

  nixpkgs = {
    hostPlatform = "aarch64-darwin";
    overlays = [
      (final: prev: {
        inherit (prev.lixPackageSets.stable)
          nixpkgs-review
          nix-eval-jobs
          nix-fast-build
          colmena
          ;
      })
    ];
  };

  programs = {
    direnv = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
    };
    gnupg.agent.enable = true;
  };

  services = {
    emacs = {
      enable = true;
    };
  };

  system = {
    # Set Git commit hash for darwin-version.
    configurationRevision = self.rev or self.dirtyRev or null;
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToControl = true;
      # swapLeftCommandAndLeftAlt = true;
    };
    primaryUser = "eric";
    # Used for backwards compatibility, please read the changelog before changing.
    # $ darwin-rebuild changelog
    stateVersion = 6;
  };
}
