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
    username = lib.mkDefault "eric";
    homeDirectory = lib.mkDefault "/home/${config.home.username}";
    packages = with pkgs; [
      # cli/tui
      basedpyright
      bat
      difftastic
      duf
      eza
      fastfetch
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
      nixfmt
      onefetch
      prek
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
      tmux
      tree
      uv
      wget
      yq
    ];
    file = {
      ".aspell.en.prepl".source = symlink "${filesPath}/aspell.en.prepl";
      ".aspell.en.pws".source = symlink "${filesPath}/aspell.en.pws";
      ".astylerc".source = symlink "${filesPath}/astylerc";
      ".bash_profile".source = symlink "${filesPath}/bash_profile";
      ".bashrc".source = symlink "${filesPath}/bashrc";
      # ".clang-format".source = symlink "${filesPath}/clang-format";
      ".config/alacritty/alacritty.toml".source = symlink "${filesPath}/config/alacritty/alacritty.toml";
      ".config/bat/config".source = symlink "${filesPath}/config/bat/config";
      ".config/direnv/direnvrc".source = symlink "${filesPath}/config/direnv/direnvrc";
      ".config/ghostty/config".source = symlink "${filesPath}/config/ghostty/config";
      ".config/git/config".source = symlink "${filesPath}/config/git/config";
      ".config/git/ignore".source = symlink "${filesPath}/config/git/ignore";
      ".config/git/template".source = symlink "${filesPath}/config/git/template";
      ".config/just/justfile".source = symlink "${filesPath}/config/just/justfile";
      ".config/tmux".source = symlink "${filesPath}/config/tmux";
      ".config/wezterm/wezterm.lua".source = symlink "${filesPath}/config/wezterm/wezterm.lua";
      ".config/yamlfmt/yamlfmt.yml".source = symlink "${filesPath}/config/yamlfmt/yamlfmt.yml";
      ".config/yamllint/config".source = symlink "${filesPath}/config/yamllint/config";
      ".emacs.d".source = symlink "${filesPath}/emacs.d";
      ".gdbinit".source = symlink "${filesPath}/gdbinit";
      ".markdownlint.jsonc".source = symlink "${filesPath}/markdownlint.jsonc";
      ".mdlrc".source = symlink "${filesPath}/mdlrc";
      ".pdbrc".source = symlink "${filesPath}/pdbrc";
      ".vmdrc".source = symlink "${filesPath}/vmdrc";
      ".zprofile".source = symlink "${filesPath}/zprofile";
      ".zshenv".source = symlink "${filesPath}/zshenv";
      ".zshrc".source = symlink "${filesPath}/zshrc";
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
      extraPackages = (epkgs: [ epkgs.treesit-grammars.with-all-grammars ]);
    };
    ghostty = {
      enable = true;
      package = if pkgs.stdenv.isDarwin then pkgs.ghostty-bin else pkgs.ghostty;
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
      enable = true;
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
