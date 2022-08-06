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
  programs.home-manager.enable = true;

  imports = [ ./dconf.nix ];

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
    babashka
    cask
    ccls
    clj-kondo
    clojure
    clojure-lsp
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
    jabref
    leiningen
    neofetch
    nix-linter
    nodejs
    onefetch
    pinentry-emacs
    plexamp
    python-with-my-packages
    qchem.dalton
    qchem.nwchem
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
    };
    direnv = {
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
