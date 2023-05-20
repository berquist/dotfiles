{ config, pkgs, ...}:
with pkgs;
{
  home = {
    username = "eric";
    homeDirectory = "/home/${config.home.username}";
    packages = [
      bat
      duf
      exa
      fd
      file
      git
      htop
      ripgrep
      tmux
      tree
      wget
    ];
    file = {
      ".aspell.en.prepl".source = ../../../dotfiles/aspell.en.prepl;
      ".aspell.en.pws".source = ../../../dotfiles/aspell.en.pws;
      ".astylerc".source = ../../../dotfiles/astylerc;
      ".bash_profile".source = ../../../dotfiles/bash_profile;
      ".bashrc".source = ../../../dotfiles/bashrc;
      ".clang-format".source = ../../../dotfiles/clang-format;
      ".config/alacritty/alacritty.yml".source = ../../../dotfiles/config/alacritty/alacritty.yml;
      ".config/bat/config".source = ../../../dotfiles/config/bat/config;
      ".config/direnv/direnvrc".source = ../../../dotfiles/config/direnv/direnvrc;
      ".config/exercism/user.json".source = ../../../dotfiles/config/exercism/user.json;
      ".config/gh/config.yml".source = ../../../dotfiles/config/gh/config.yml;
      ".gdbinit".source = ../../../dotfiles/gdbinit;
      ".gitconfig".source = ../../../dotfiles/gitconfig;
      ".gitignore".source = ../../../dotfiles/gitignore;
      ".markdownlint.jsonc".source = ../../../dotfiles/markdownlint.jsonc;
      ".mdlrc".source = ../../../dotfiles/mdlrc;
      ".pdbrc".source = ../../../dotfiles/pdbrc;
      ".vmdrc".source = ../../../dotfiles/vmdrc;
      ".zprofile".source = ../../../dotfiles/zprofile;
      ".zshenv".source = ../../../dotfiles/zshenv;
      ".zshrc".source = ../../../dotfiles/zshrc;
      # ".tmux.conf".source = ../../../dotfiles/tmux.conf;
    };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  programs = {
    direnv.enable = true;
    home-manager.enable = true;
    less.enable = true;

    tmux = {
      aggressiveResize = true;
      baseIndex = 1;
      enable = true;
      escapeTime = 0;
      extraConfig = lib.readFile ./tmux/main.conf
                    + lib.readFile ./tmux/theme_berquist.conf;
      historyLimit = 100000;
      keyMode = "emacs";
      prefix = "`";
      terminal = "screen-256color";
    };
  };
}
