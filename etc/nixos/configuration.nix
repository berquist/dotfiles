{ pkgs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    # /etc/nixos/cachix.nix
  ];

  nix = {
    extraOptions = ''
     keep-outputs = true
     keep-derivations = true
     experimental-features = nix-command flakes
    '';
    settings = {
      cores = 4;
    };
  };

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
      rev = "3d5e5cfa91ed10d39e0504387242750996e8b027";
    }))
    (import "${fetchTarball "https://github.com/nix-community/fenix/archive/main.tar.gz"}/overlay.nix")
  ];

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    bat
    cachix
    colordiff
    dconf2nix
    exa
    fd
    file
    firefox
    firefox-devedition-bin
    git
    home-manager
    mosh
    pop-gtk-theme
    pop-icon-theme
    pptp
    ripgrep
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
      enable = true;
      package = pkgs.emacsGitNativeComp;
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

  system.stateVersion = "21.05";
}
