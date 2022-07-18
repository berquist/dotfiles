{ config, pkgs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    /etc/nixos/cachix.nix
  ];

  nix.buildCores = 4;

  boot.loader.systemd-boot.enable = true;

  networking.hostName = "scandium";

  time.timeZone = null;

  networking.useDHCP = false;
  networking.interfaces.wlp2s0.useDHCP = true;

  services.xserver = {
    enable = true;
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    layout = "us";
    xkbOptions = "ctrl:swapcaps";
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
    shell = pkgs.bash;
  };

  # valid for 60 minutes instead of the default 5
  security.sudo.extraConfig = ''
    Defaults        timestamp_timeout=60
  '';

  nixpkgs.overlays = [
    (import (builtins.fetchGit {
      url = "https://github.com/nix-community/emacs-overlay.git";
      ref = "master";
      rev = "0293f1492cb21e8be1927e2c9fefee1ac14f2953";
    }))
    (import "${fetchTarball "https://github.com/nix-community/fenix/archive/main.tar.gz"}/overlay.nix")
  ];

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    cachix
    colordiff
    dconf2nix
    file
    firefox
    firefox-devedition-bin
    git
    home-manager
    mosh
    pop-gtk-theme
    pop-icon-theme
    pptp
    tmux
    tree
    xdg-desktop-portal
    zerotierone
  ];

  # TODO shouldn't this be per user?
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  services = {
    emacs = {
      # TODO does `enable` belong here?
      enable = true;
      package = pkgs.emacsNativeComp;
    };
    openssh = {
      enable = true;
      passwordAuthentication = false;
    };
    zerotierone = {
      enable = true;
      joinNetworks = [ "abfd31bd47409170" ];
    };
  };

  nix.extraOptions = ''
    keep-outputs = true
    keep-derivations = true
'';

  system.stateVersion = "21.05";
}
