{ inputs, lib, config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    # ./cachix.nix

    ../common/global
  ];

  nix = {
    # This will add each flake input as a registry
    # To make nix3 commands consistent with your flake
    registry = lib.mapAttrs (_: value: { flake = value; }) inputs;

    # This will additionally add your inputs to the system's legacy channels
    # Making legacy nix commands consistent as well, awesome!
    nixPath = lib.mapAttrsToList (key: value: "${key}=${value.to.path}") config.nix.registry;

    # extraOptions = ''
    #  keep-outputs = true
    #  keep-derivations = true
    # '';
    settings = {
      cores = 4;
      experimental-features = [ "nix-command" "flakes" "repl-flake" ];
      trusted-users = [
        "root"
        "eric"
      ];
    };
  };

  boot.loader.systemd-boot.enable = true;

  time.timeZone = null;

  networking = {
    hostName = "scandium";
    useDHCP = false;
    interfaces.wlp2s0.useDHCP = true;
  };

  services.xserver = {
    enable = true;
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    xkb = {
      layout = "us";
      options = "ctrl:swapcaps";      
    };
  };
  console.useXkbConfig = true;

  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.opengl = {
    enable = true;
    # extraPackages = [
    #   intel-compute-runtime
    # ];
  };

  users.users.eric = {
    description = "Eric Berquist";
    extraGroups = [ "networkmanager" "wheel" ];
    isNormalUser = true;
    openssh.authorizedKeys.keys = [
      # TODO: Add your SSH public key(s) here, if you plan on using SSH to connect
    ];
    shell = pkgs.zsh;
  };

  # valid for 60 minutes instead of the default 5
  security.sudo.extraConfig = ''
    Defaults        timestamp_timeout=60
  '';

  nixpkgs = {
    config.allowUnfree = true;
    overlays = [
      inputs.emacs-overlay.overlays.emacs
    ];
  };

  environment.systemPackages = with pkgs; [
    cachix
    colordiff
    dconf2nix
    firefox
    firefox-devedition-bin
    gitFull
    home-manager
    mosh
    pop-gtk-theme
    pop-icon-theme
    pptp
    sshfs
    unzip
    xdg-desktop-portal
    vlc
    zerotierone

    # this computer's home-manager
    act
    aspell
    aspellDicts.en
    autoconf
    cask
    delta
    exercism
    google-chrome
    imagemagick
    mediainfo
    onefetch
    picard
    pinentry-emacs
    subversion
    valgrind
    wakatime
    wezterm
    zoom-us
  ];

  programs = {
    # TODO shouldn't this be per user?
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    zsh = {
      enable = true;
    };
  };

  services = {
    emacs = {
      enable = true;
      package = pkgs.emacs29;
    };
    openssh = {
      enable = true;
      settings = {
        PasswordAuthentication = false;
        PermitRootLogin = "no";
      };
    };
    zerotierone = {
      enable = true;
      joinNetworks = [ "abfd31bd47409170" ];
    };
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
