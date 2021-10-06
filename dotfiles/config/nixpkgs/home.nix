{ config, pkgs, ... }:

with pkgs;
let
  my-python-packages = python-packages: with python-packages; [
    docopt
    ipdb
    ipython
    jinja2
    numpy
    ruamel-yaml
  ];
  python-with-my-packages = python39.withPackages my-python-packages;
in {
  programs.home-manager.enable = true;

  imports = [ ./dconf.nix ];

  home = {
    username = "eric";
    homeDirectory = "/home/eric";
  };

  nixpkgs.config.allowUnfree = true;

  home.packages = [
    plexamp
    python-with-my-packages
    signal-desktop
    slack
    spotify
  ];    

  programs = {
    bash = {
      enable = true;
    };
  };

  home.stateVersion = "21.05";
}
