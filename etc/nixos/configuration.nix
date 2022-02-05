# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
      /etc/nixos/cachix.nix
    ];

  # Speed up development at the cost of possible build race conditions
  nix.buildCores = 4;

  # Use the GRUB 2 boot loader.
  # boot.loader.grub.enable = true;
  # boot.loader.grub.version = 2;
  # boot.loader.grub.efiSupport = true;
  # boot.loader.grub.efiInstallAsRemovable = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # Define on which hard drive you want to install Grub.
  # boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only
  boot.loader.systemd-boot.enable = true;

  networking.hostName = "scandium";
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  time.timeZone = "America/New_York";

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.wlp2s0.useDHCP = true;

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  # };

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    xkbOptions = "ctrl:swapcaps";
  };
  console.useXkbConfig = true;

  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.opengl.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # users.mutableUsers = false;
  users.users.eric = {
    isNormalUser = true;
    description = "Eric Berquist";
    extraGroups = [ "wheel" "networkmanager" ];
  };

  services.emacs.enable = true;
  services.emacs.package = pkgs.emacsGcc;

  nixpkgs.overlays = [
    (import (builtins.fetchGit {
      url = "https://github.com/nix-community/emacs-overlay.git";
      ref = "master";
      rev = "7a5bce1e455eb52f5bdaff575424f20dec439886";
    }))
  ];

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    cachix
    dconf2nix
    file
    firefox
    git
    gnome.gnome-tweak-tool
    home-manager
    pop-gtk-theme
    pop-icon-theme
    zerotierone
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  services = {
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
