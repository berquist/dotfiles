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
      experimental-features = [ "nix-command" "flakes" ];
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

  hardware.graphics = {
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

  documentation = {
    man = {
      generateCaches = true;
    };
  };

  environment.systemPackages = with pkgs; [
    cachix
    colordiff
    dconf2nix
    firefox
    firefox-devedition
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
    zotero
  ];

  programs = {
    zsh = {
      enable = true;
    };
  };

  services = {
    emacs = {
      enable = false;
      package = pkgs.emacs30;
    };
    forgejo = {
      enable = true;
      settings = {
        server = {
          # default is 3000
          HTTP_PORT = 3003;
        };
      };
    };
    guix = {
      enable = true;
    };
    jenkins = {
      enable = true;
      # default is 8080
      port = 8082;
    };
    jupyterhub = {
      enable = true;
      # default is 8000
      port = 8083;
    };
    komga = {
      enable = true;
      settings = {
        server = {
          # default is 8080
          port = 8081;
        };
      };
    };
    lanraragi = {
      enable = true;
      # default is 3000
      port = 3001;
      # redis = {
      #   port = 6380;
      # };
    };
    openssh = {
      enable = true;
      settings = {
        PasswordAuthentication = false;
        PermitRootLogin = "no";
      };
    };
    plex = {
      enable = true;
    };
    slurm = {
      client = {
        enable = false;
      };
      server = {
        enable = false;
      };
    };
    suwayomi-server = {
      enable = true;
      settings = {
        server = {
          autoDownloadNewChapters = true;
          downloadAsCbz = true;
          extensionRepos = [
            "https://raw.githubusercontent.com/keiyoushi/extensions/repo/index.min.json"
          ];
          # default is 8080
          port = 4567;
        };
      };
    };
    transmission = {
      enable = true;
    };
    woodpecker-server = {
      enable = true;
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
