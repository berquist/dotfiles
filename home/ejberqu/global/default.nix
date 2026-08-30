{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  filesPath = "${config.home.homeDirectory}/dotfiles/dotfiles";
in
{
  home = {
    username = lib.mkDefault "ejberqu";
    packages = with pkgs; [
      # cli/tui
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
      nixfmt
      prek
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
      uv
      wget
      yq

      fira-mono

      # gui
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
      extraPackages = (epkgs: [ epkgs.treesit-grammars.with-all-grammars ]);
    };
    ghostty = {
      enable = true;
      package = if pkgs.stdenv.hostPlatform.isDarwin then pkgs.ghostty-bin else pkgs.ghostty;
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
