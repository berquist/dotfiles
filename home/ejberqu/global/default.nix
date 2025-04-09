{ config, lib, pkgs, inputs, ... }:

{
  home = {
    username = "ejberqu";
    packages = with pkgs; [
      autoconf
      automake
      bat
      bear
      ccache
      ccls
      cmake
      difftastic
      dos2unix
      duf
      eza
      fd
      gh
      git-extras
      glab
      hadolint
      htop
      jq
      just
      minikube
      ncurses
      ninja
      pyenv
      pyright
      (python3.withPackages (ps: with ps; [
        editorconfig
        flake8
        git-filter-repo
        libxml2
        mypy
        pylint
        yamllint
      ]))
      ripgrep
      rsync
      ruff
      shellcheck
      tree
      uv
      yq

      fira-mono

      wezterm
    ];
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
    overlays = [
      inputs.emacs-overlay.overlays.emacs
    ];
  };

  programs = {
    direnv.enable = true;
    emacs = {
      enable = false;
      package = pkgs.emacs-unstable;
      extraPackages = (epkgs: [ epkgs.treesit-grammars.with-all-grammars ]);
    };
    gpg = {
      enable = true;
      mutableKeys = true;
      mutableTrust = true;
    };
    home-manager.enable = true;
    less.enable = true;
    man = {
      generateCaches = true;
    };
  };

  # not supported on darwin
  # services = {
  #   emacs = {
  #     enable = true;
  #   };
  # };
}
