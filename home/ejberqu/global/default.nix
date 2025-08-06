{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  home = {
    username = lib.mkDefault "ejberqu";
    packages = with pkgs; [
      autoconf
      automake
      basedpyright
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
      harper
      htop
      jq
      just
      ncurses
      ninja
      nix-prefetch
      nix-search-cli
      nixfmt-rfc-style
      pyenv
      (python3.withPackages (
        ps: with ps; [
          editorconfig
          flake8
          git-filter-repo
          libxml2
          mypy
          pylint
          yamllint
        ]
      ))
      ripgrep
      rsync
      ruff
      shellcheck
      tree
      ty
      uv
      vale
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
