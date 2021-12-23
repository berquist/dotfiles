{ config, pkgs, ... }:

with pkgs;
let
  my-python-packages = python-packages: with python-packages; [
    black
    docopt
    ipdb
    ipython
    jinja2
    more-itertools
    numpy
    packaging
    pytest
    requests
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
    act
    alacritty
    aspell
    aspellDicts.en
    babashka
    bat
    cask
    clj-kondo
    clojure
    clojure-lsp
    cmake
    direnv
    exa
    exercism
    fd
    file
    gfortran
    gnumake
    htop
    jabref
    # julia
    leiningen
    neofetch
    nodejs
    pinentry-emacs
    plexamp
    python-with-my-packages
    ripgrep
    signal-desktop
    slack
    spotify
    subversion
    texlive.combined.scheme-full
    tmux
    wget
    yamllint
    yarn
  ];

  programs = {
    bash = {
      enable = true;
      initExtra = ''
source ~/dotfiles/interactive_exports.bash
source ~/dotfiles/aliases.bash
source ~/dotfiles/functions.bash
'';
    };
    direnv = {
      enable = true;
    };
    # gpg = {
    #   enable = true;
    # };
  };

  # services = {
  #   gpg-agent = {
  #     enable = true;
  #   };
  # };

  home.stateVersion = "21.05";
}
