{ pkgs, ... }:

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
  # imports = [ ./dconf.nix ];

  home = {
    homeDirectory = "/home/eric";
    username = "eric";
  };

  nixpkgs.config.allowUnfree = true;

  # environment.sessionVariables.NIXOS_OZONE_WL = 1;

  home.packages = [
    act
    alacritty
    aspell
    aspellDicts.en
    autoconf
    # babashka
    cask
    # clj-kondo
    # clojure
    # clojure-lsp
    delta
    direnv
    discord-canary
    duf
    exercism
    # fenix.stable.toolchain
    gh
    google-chrome
    htop
    imagemagick
    inkscape
    # jabref
    # leiningen
    neofetch
    nix-linter
    onefetch
    pinentry-emacs
    plexamp
    python-with-my-packages
    # qchem.dalton
    # qchem.nwchem
    signal-desktop
    slack
    speedtest-cli
    spotify
    subversion
    texlive.combined.scheme-full
    wakatime
    tmux
    valgrind
    wget
    yamllint
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
    };
    direnv = {
      enable = true;
    };
    home-manager = {
      enable = true;
    };
    vscode = {
      enable = true;
    };
  };

  services = {
    gpg-agent = {
      enable = true;
    };
  };

  home.stateVersion = "21.05";
}
