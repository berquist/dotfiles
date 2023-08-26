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
      # ".clang-format".source = ../../../dotfiles/clang-format;
      ".config/alacritty/alacritty.yml".source = ../../../dotfiles/config/alacritty/alacritty.yml;
      ".config/bat/config".source = ../../../dotfiles/config/bat/config;
      ".config/direnv/direnvrc".source = ../../../dotfiles/config/direnv/direnvrc;
      ".config/exercism/user.json".source = ../../../dotfiles/config/exercism/user.json;
      ".config/gh/config.yml".source = ../../../dotfiles/config/gh/config.yml;
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
  };

  programs = {
    direnv.enable = true;
    home-manager.enable = true;
    less.enable = true;
  };
}
