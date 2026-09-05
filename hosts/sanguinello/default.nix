{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
    };
  };

  documentation = {
    man = {
      cache.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    home-manager
  ];

  system.fsPackages = [ pkgs.sshfs ];
  fileSystems."/home/eric/meyeri" = {
    device = "eric@172.22.207.41:/home/eric";
    fsType = "sshfs";
    options = [
      "noauto"
      "x-systemd.automount"
      "x-systemd.idle-timeout=600"
      "_netdev"
      "IdentityFile=/root/.ssh/id_meyeri"
      "UserKnownHostsFile=/root/.ssh/known_hosts"
      "StrictHostKeyChecking=accept-new"
      "allow_other"
      "idmap=user"
      "uid=1000"
      "gid=100"
      "reconnect"
      "ServerAliveInterval=15"
      "ServerAliveCountMax=3"
    ];
  };

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
    hostName = "sanguinello";
    networkmanager.enable = true;
    wireless.enable = true; # Enables wireless support via wpa_supplicant.
  };

  nix = {
    package = pkgs.lixPackageSets.stable.lix;
    settings = {
      experimental-features = [
        "flakes"
        "nix-command"
      ];
      max-jobs = 1;
      substituters = [
        "https://nix-qchem.cachix.org"
        "https://nur-berquist.cachix.org"
      ];
      trusted-public-keys = [
        "nix-qchem.cachix.org-1:ZjRh1PosWRj7qf3eukj4IxjhyXx6ZwJbXvvFk3o3Eos="
        "nur-berquist.cachix.org-1:Hoz7CuoAaFYOUxiy5zcrHEM82xJKjilI24ly0W+1kq4="
      ];
      trusted-users = [ "eric" ];
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

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  programs = {
    firefox = {
      enable = true;
    };
    steam = {
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

  services = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    openssh = {
      enable = true;
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
    ];
    shell = pkgs.zsh;
  };

  system.stateVersion = "26.05";
}
