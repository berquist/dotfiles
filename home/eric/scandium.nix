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
  python-with-my-packages = python310.withPackages my-python-packages;
in {
  imports = [
    ./global
    # ./dconf.nix
  ];

  # environment.sessionVariables.NIXOS_OZONE_WL = 1;

  home = {
    packages = [
      act
      aspell
      aspellDicts.en
      autoconf
      # babashka
      cask
      # clj-kondo
      # clojure
      # clojure-lsp
      delta
      # discord-canary
      exercism
      # fenix.stable.toolchain
      gh
      google-chrome
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
      valgrind
      wakatime
      wezterm
      yamllint
      zoom-us
    ];
  };

  programs = {
    vscode.enable = true;
  };

  services = {
    gpg-agent = {
      enable = true;
    };
  };

  home.stateVersion = "21.05";
}
