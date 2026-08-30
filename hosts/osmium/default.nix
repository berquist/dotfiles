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

    ../common/global
  ];

  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
    };
  };

  console.useXkbConfig = true;

  documentation = {
    man = {
      cache.enable = true;
    };
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    #  wget
    ghostty
  ];

  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "en_US.UTF-8";
      LC_IDENTIFICATION = "en_US.UTF-8";
      LC_MEASUREMENT = "en_US.UTF-8";
      LC_MONETARY = "en_US.UTF-8";
      LC_NAME = "en_US.UTF-8";
      LC_NUMERIC = "en_US.UTF-8";
      LC_PAPER = "en_US.UTF-8";
      LC_TELEPHONE = "en_US.UTF-8";
      LC_TIME = "en_US.UTF-8";
    };
  };

  networking = {
    hostName = "osmium";
    networkmanager = {
      enable = true;
    };
  };

  nix = {
    # This will additionally add your inputs to the system's legacy channels
    # Making legacy nix commands consistent as well, awesome!
    nixPath = lib.mapAttrsToList (key: value: "${key}=${value.to.path}") config.nix.registry;

    package = pkgs.lixPackageSets.stable.lix;

    # This will add each flake input as a registry
    # To make nix3 commands consistent with your flake
    registry = lib.mapAttrs (_: value: { flake = value; }) inputs;

    settings = {
      cores = 16;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      trusted-users = [
        "root"
        "eric"
      ];
    };
  };

  nixpkgs = {
    config.allowUnfree = true;
    overlays = [
      inputs.emacs-overlay.overlays.emacs
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

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
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
        variant = "";
      };
    };
    zerotierone = {
      enable = true;
      joinNetworks = [ "abfd31bd47409170" ];
    };
  };

  time.timeZone = "America/New_York";

  users.users."eric" = {
    description = "Eric Berquist";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    isNormalUser = true;
    packages = with pkgs; [
      #  thunderbird
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

  system.stateVersion = "24.05";
}
