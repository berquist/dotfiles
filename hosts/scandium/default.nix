{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    # ./cachix.nix

    ../common/global
  ];

  boot = {
    loader = {
      systemd-boot.enable = true;
    };
  };

  console.useXkbConfig = true;

  documentation = {
    man = {
      cache.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    cachix
    colordiff
    dconf2nix
    firefox
    ghostty
    gitFull
    mosh
    pop-gtk-theme
    pop-icon-theme
    pptp
    sshfs
    unzip
    xdg-desktop-portal
    vlc

    # this computer's home-manager
    act
    aspell
    aspellDicts.en
    autoconf
    delta
    exercism
    imagemagick
    pinentry-emacs
    subversion
    valgrind
    wakatime-cli
  ];

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      fira
    ];
  };

  hardware.graphics = {
    enable = true;
    # extraPackages = [
    #   intel-compute-runtime
    # ];
  };

  networking = {
    hostName = "scandium";
    useDHCP = false;
    interfaces.wlp2s0.useDHCP = true;
  };

  nix = {
    # This will additionally add your inputs to the system's legacy channels
    # Making legacy nix commands consistent as well, awesome!
    nixPath = lib.mapAttrsToList (key: value: "${key}=${value.to.path}") config.nix.registry;

    package = pkgs.lixPackageSets.stable.lix;

    # This will add each flake input as a registry
    # To make nix3 commands consistent with your flake
    registry = lib.mapAttrs (_: value: { flake = value; }) inputs;

    # extraOptions = ''
    #  keep-outputs = true
    #  keep-derivations = true
    # '';
    settings = {
      cores = 4;
      experimental-features = [
        "flakes"
        "nix-command"
      ];
      trusted-users = [
        "eric"
        "root"
      ];
    };
  };

  nixpkgs = {
    config.allowUnfree = true;
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
    firefox = {
      enable = true;
    };
    zsh = {
      enable = true;
    };
  };

  # valid for 60 minutes instead of the default 5
  security.sudo.extraConfig = ''
    Defaults        timestamp_timeout=60
  '';

  services = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    openssh = {
      enable = true;
      settings = {
        PasswordAuthentication = false;
        PermitRootLogin = "no";
      };
    };
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        options = "ctrl:swapcaps";
        variant = "";
      };
    };
    zerotierone = {
      enable = true;
      joinNetworks = [ "abfd31bd47409170" ];
    };
  };

  time.timeZone = null;

  users.users."eric" = {
    description = "Eric Berquist";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    isNormalUser = true;
    openssh.authorizedKeys.keys = [
      # TODO: Add your SSH public key(s) here, if you plan on using SSH to connect
    ];
    shell = pkgs.zsh;
  };

  virtualisation = {
    containers.enable = true;
    podman = {
      # Required for containers under podman-compose to be able to talk to each other.
      defaultNetwork.settings.dns_enabled = true;
      dockerCompat = true;
      enable = true;
    };
  };

  system.stateVersion = "21.05";
}
