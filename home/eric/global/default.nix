{ config, lib, pkgs, inputs, ... }:

{
  home = {
    username = lib.mkDefault "eric";
    homeDirectory = lib.mkDefault "/home/${config.home.username}";
    packages = with pkgs; [
      basedpyright
      bat
      difftastic
      duf
      eza
      fd
      file
      gh
      gitFull
      glab
      hadolint
      htop
      just
      neofetch
      nix-prefetch
      nix-search-cli
      nixfmt-rfc-style
      (python3.withPackages (ps: with ps; [
        editorconfig
        flake8
        libxml2
        mypy
        pylint
        yamllint
      ]))
      ripgrep
      rsync
      ruff
      shellcheck
      tmux
      tree
      vale
      wget
    ];
    file = {
      ".aspell.en.prepl".source = ../../../dotfiles/aspell.en.prepl;
      ".aspell.en.pws".source = ../../../dotfiles/aspell.en.pws;
      ".astylerc".source = ../../../dotfiles/astylerc;
      ".bash_profile".source = ../../../dotfiles/bash_profile;
      ".bashrc".source = ../../../dotfiles/bashrc;
      # ".clang-format".source = ../../../dotfiles/clang-format;
      ".config/alacritty/alacritty.toml".source = ../../../dotfiles/config/alacritty/alacritty.toml;
      ".config/bat/config".source = ../../../dotfiles/config/bat/config;
      ".config/direnv/direnvrc".source = ../../../dotfiles/config/direnv/direnvrc;
      ".config/exercism/user.json".source = ../../../dotfiles/config/exercism/user.json;
      ".config/just/justfile".source = ../../../dotfiles/config/just/justfile;
      ".config/wezterm/wezterm.lua".source = ../../../dotfiles/config/wezterm/wezterm.lua;
      ".gdbinit".source = ../../../dotfiles/gdbinit;
      ".gitconfig".source = ../../../dotfiles/gitconfig;
      ".gitignore".source = ../../../dotfiles/gitignore;
      ".markdownlint.jsonc".source = ../../../dotfiles/markdownlint.jsonc;
      ".mdlrc".source = ../../../dotfiles/mdlrc;
      ".pdbrc".source = ../../../dotfiles/pdbrc;
      ".tmux.conf".source = ../../../dotfiles/tmux.conf;
      ".tmux/tmux.theme.conf".source = ../../../dotfiles/tmux/tmux.theme.conf;
      ".vmdrc".source = ../../../dotfiles/vmdrc;
      ".zprofile".source = ../../../dotfiles/zprofile;
      ".zshenv".source = ../../../dotfiles/zshenv;
      ".zshrc".source = ../../../dotfiles/zshrc;
    };
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
      enable = true;
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

  # services = {
  #   emacs = {
  #     enable = true;
  #   };
  # };
}
