{ config, pkgs, ...}:
with pkgs;
{
  home = {
    username = "eric";
    homeDirectory = "/home/${config.home.username}";
    packages = [
      bat
      direnv
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
    sessionVariables = {
      # These are for interactive usage.
      # https://askubuntu.com/a/866376
      EDITOR = "emacsclient -t -a=\"\"";
      # https://twitter.com/hhulkko/status/114256631419772928
      # http://darrendev.blogspot.com/2011/07/customize-less-less-annoying.html
      LESS = "-FRX";
      MANWIDTH = "78";
      PYENV_VIRTUALENV_DISABLE_PROMPT = "1";
      # disables prompt mangling in virtual_env/bin/activate
      VIRTUAL_ENV_DISABLE_PROMPT = "1";
      # These are for all usage.
      EXERCISM_WORKSPACE = "${config.home.homeDirectory}/development/exercism";
      LSP_USE_PLISTS = "true";
      PIP_CONFIG_FILE = "${config.home.homeDirectory}/dotfiles/pip.conf";
      RIPGREP_CONFIG_PATH = "${config.home.homeDirectory}/dotfiles/ripgreprc";
      SCRATCH = "/tmp";
      scratch = "${config.home.sessionVariables.SCRATCH}";
      # TODO still needed?
      QCPROGS = "${config.home.homeDirectory}/opt/apps";
      apps = "${config.home.sessionVariables.QCPROGS}";
    };
    shellAliases = {
      "2to3" = "2to3 -f all -f buffer -f idioms -f set_literal -f ws_comma";
      cath = "tail -n +1";
      d = "df -h";
      # https://hub.docker.com/r/alpine/dfimage
      dfimage = "docker run -v /var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage";
      # dfimage -sV = 1.36 nginx:latest
      dus = "\du -h --max-depth=1";
      dus2 = "du | sort -nr | cut -f2- | xargs du -hs";
      f = "finger";
      top = "top -d 1";
      edk = "emacsclient -e \"(kill-emacs)\"";
      eds = "emacs --daemon";
      e = "emacsclient -t";
      ec = "emacsclient -c";
      es = "emacs -nw";
      # For use of git diff inside working trees. TODO Shell completion
      # doesn't work with it though?
      gdiff = "git wdiff --no-index";
      gfr = "git fetch --all; git rebase upstream/master";
      ls = "exa";
      l = "pwd; ls -Fl";
      la = "l -a";
      lt = "l -s modified -r";
      lh = "lt | head";
      mksrcinfo = "makepkg --printsrcinfo > .SRCINFO";
      psmem = "ps aux --sort -rss";
      scp = "scp -p";
      sd = "svn diff --diff-cmd colordiff";
      snv = "svn";
      sw = "telnet towel.blinkenlights.nl";
      t = "tail -F -n 100 --sleep-interval = 0.1";
      tmux = "tmux -2";
      whcih = "which";
      # So I don't do stupid things.
      cp = "cp -i -v";
      mv = "mv -i -v";
      rm = "rm -i -v";
    };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  programs = {
    bash = {
      historyFile = "${config.home.homeDirectory}/.bash_eternal_history";
      # Nix can't use the unlimited trick?
      historyFileSize = 1000000;
      historySize = 1000000;
      initExtra = ''
        source "${config.home.homeDirectory}"/dotfiles/functions.bash
      '';
      sessionVariables = {
        HISTTIMEFORMAT = "[%F %T] ";
        PROMPT_COMMAND = "history -a; $PROMPT_COMMAND";
        # NixOS default:
        # PS1 = "\n\[\033[1;32m\][\[\e]0;\u@\h: \w\a\]\u@\h:\w]\$\[\033[0m\]";
        PS1 = "\w\n[\u@\h]\$ ";
      };
    };
    bat = {
      config = {
        map-syntax = [
          "*.asdf:YAML"
          "*.cjson:JSON"
          "*.jsonld:JSON"
          "*.qcjson:JSON"
          "*.qcschema:JSON"
          "flake.lock:JSON"
        ];
        theme = "Dracula";
      };
      enable = true;
    };
    direnv.enable = true;
    home-manager.enable = true;
    less.enable = true;
    zsh = {
      # envExtra
      history = {
        extended = true;
        ignoreDups = false;
        save = 1000000000;
        share = true;
        size = 1000000000;
      };
      initExtra = ''
        source "${config.home.homeDirectory}"/dotfiles/functions.bash
      '';
      # profileExtra
      sessionVariables = {
        PS1 = "%d\n[%n@%m]%(!.#.$) ";
      };
    };
  };
}
