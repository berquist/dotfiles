{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

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
      harper
      htop
      just
      nix-prefetch
      nix-search-cli
      nixfmt-rfc-style
      (python3.withPackages (
        ps: with ps; [
          editorconfig
          flake8
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
      tmux
      tree
      ty
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
      ".config/yamlfmt/yamlfmt.yml".source = ../../../dotfiles/config/yamlfmt/yamlfmt.yml;
      ".config/yamllint/config".source = ../../../dotfiles/config/yamllint/config;
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
    ghostty = {
      enable = true;
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

  services = {
    emacs = {
      enable = false;
    };
    gpg-agent = {
      defaultCacheTtl = 60480000;
      defaultCacheTtlSsh = 60480000;
      enable = true;
      enableSshSupport = true;
      enableZshIntegration = true;
      extraConfig = ''
        allow-emacs-pinentry
        allow-loopback-pinentry
      '';
      maxCacheTtl = 60480000;
      maxCacheTtlSsh = 60480000;
      pinentry = {
        # Ensure the Nix-provided pinentry is used; this will set
        # `pinentry-program /nix/store/...`.
        package = pkgs.pinentry-all;
      };
    };
  };
}
