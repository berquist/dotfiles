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
    armadillo
    aspell
    aspellDicts.en
    autoconf
    babashka
    bat
    cask
    ccls
    clj-kondo
    clojure
    clojure-lsp
    cmake
    direnv
    discord-canary
    exa
    exercism
    fd
    file
    gfortran
    gh
    # ghostscript
    gnumake
    htop
    imagemagick
    jabref
    # julia
    leiningen
    neofetch
    nodejs
    pigz
    pinentry-emacs
    plexamp
    python-with-my-packages
    qchem.dalton
    qchem.nwchem
    ripgrep
    signal-desktop
    slack
    spotify
    subversion
    texlive.combined.scheme-full
    wakatime
    tmux
    wget
    yamllint
    yarn
    zoom-us
  ];

  programs = {
    bash = {
      enable = true;
      initExtra = ''
source ~/dotfiles/interactive_exports.bash
source ~/dotfiles/aliases.bash
source ~/dotfiles/functions.bash
'';
#       profileExtra = ''
# . ~/repositories/spack/share/spack/setup-env.sh
# '';
    };
    direnv = {
      enable = true;
    };
    # gpg = {
    #   enable = true;
    # };
    vscode = {
      enable = true;
    };
  };

  # services = {
  #   gpg-agent = {
  #     enable = true;
  #   };
  # };

  home.stateVersion = "21.05";
}
