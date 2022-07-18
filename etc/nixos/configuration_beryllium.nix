{ config, pkgs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
  ];

  nix.buildCores = 4;

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  # Setup keyfile
  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  # Enable swap on luks
  boot.initrd.luks.devices."luks-85580c6a-f738-47f4-89e8-e5813d48a383".device = "/dev/disk/by-uuid/85580c6a-f738-47f4-89e8-e5813d48a383";
  boot.initrd.luks.devices."luks-85580c6a-f738-47f4-89e8-e5813d48a383".keyFile = "/crypto_keyfile.bin";

  networking.hostName = "beryllium";
  networking.networkmanager.enable = true;

  time.timeZone = null;

  i18n.defaultLocale = "en_US.utf8";

  services.xserver = {
    enable = true;
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    layout = "us";
    xkbOptions = "ctrl:swapcaps";
  };
  console.useXkbConfig = true;

  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
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

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

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
    #(import (builtins.fetchGit {
    #  url = "https://github.com/nix-community/emacs-overlay.git";
    #  ref = "master";
    #  rev = "0293f1492cb21e8be1927e2c9fefee1ac14f2953";
    #}))
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

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

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

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leavecatenate(variables, "bootdev", bootdev)
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?
}
