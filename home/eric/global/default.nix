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
    sessionVariables = rec {
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
      scratch = "${SCRATCH}";
      # TODO still needed?
      QCPROGS = "${config.home.homeDirectory}/opt/apps";
      apps = "${QCPROGS}";
    };
    shellAliases = rec {
      "2to3" = "2to3 -f all -f buffer -f idioms -f set_literal -f ws_comma";
      cath = "tail -n +1";
      cfd = "/usr/share/clang/clang-format-diff.py";
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
      kubectl = "minikube kubectl --";
      ls = "exa";
      l = "pwd; ls -Fl";
      la = "${l} -a";
      lt = "${l} -s modified -r";
      lh = "${lt} | head";
      mksrcinfo = "makepkg --printsrcinfo > .SRCINFO";
      psmem = "ps aux --sort -rss";
      scp = "scp -p";
      sd = "svn diff --diff-cmd colordiff";
      snv = "svn";
      sw = "telnet towel.blinkenlights.nl";
      t = "tail -F -n 100 --sleep-interval=0.1";
      tmux = "tmux -2";
      whcih = "which";
      # So I don't do stupid things.
      cp = "cp -i -v";
      mv = "mv -i -v";
      rm = "rm -i -v";
    };
    # These still need to be ported.
    #
    # # These have to be run from $QC.
    # alias etags_qchem='find -L $PWD -not \( -path "./build" -prune \) -not \( -path "./.git" -prune \) -not \( -path "./.svn" -prune \) -not \( -path "./doc/html" -prune \) -name "*\.[chfpCHF]*" -print | etags --class-qualify --declarations -'
    # alias ctags_qchem='ctags -e --languages=-HTML,-JavaScript --links --verbose --totals -R'
    # # https://stackoverflow.com/a/4210072/3249688
    # cmd_qchem_cpp_filelist='find . -type f \( -path "./.ccls-cache/*" -o -path "./armadillo/*" -o -path "./thirdparty/*" -o -path "./build/CMakeFiles/*" \) -prune -o -name "*.[hC]" -print0'
    # # shellcheck disable=SC2139
    # alias qchem_cpp_filelist="${cmd_qchem_cpp_filelist}"
    # # shellcheck disable=SC2139
    # alias qchem_cppcheck="${cmd_qchem_cpp_filelist} | xargs -0 cppcheck --enable=all --language=c++ --std=c++11"
    # # shellcheck disable=SC2139
    # alias qchem_cpplint="${cmd_qchem_cpp_filelist} | xargs -0 cpplint --root=. --extensions=C --headers=h"
    #
    # [[ -d "${HOME}"/personal_scripts ]] && export PATH="${HOME}"/personal_scripts:"${PATH}"
    # but also the subdirectories recursively
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  programs = {
    alacritty = {
      settings = {
        # Wombat2
        colors = {
          primary = {
            background = "#242424";
            foreground = "#e5e1d8";
          };
          normal = {
            black =   "#000000";
            red =     "#b85149";
            green =   "#4bc98a";
            yellow =  "#cae682";
            blue =    "#5b98c2";
            magenta = "#663399";
            cyan =    "#00b7eb";
            white =   "#f6f3e8";
          };
          bright = {
            black =   "#b4b4b4";
            red =     "#e5786d";
            green =   "#95e454";
            yellow =  "#e7e784";
            blue =    "#8ac6f2";
            magenta = "#f6b3df";
            cyan =    "#70cecc";
            white =   "#ffffff";
          };
        };
        font = {
          normal.family = "Panic Sans";
          bold.family = "Panic Sans";
          italic.family = "Panic Sans";
        };
        key_bindings = [
          {
            key = "N";
            mods = "Shift|Control";
            action = "SpawnNewInstance";
          }
        ];
      };
    };
    bash = {
      bashrcExtra = ''
        source ${config.home.homeDirectory}/env/spackenv

        [[ -d "${config.home.sessionVariables.PYENV_ROOT}/bin" ]] && export PATH="${config.home.sessionVariables.PYENV_ROOT}/bin:PATH"
        if command -v pyenv >/dev/null 2>&1; then
            eval "$(pyenv init --path)"
            eval "$(pyenv init -)"
        fi
        if command -v pyenv-virtualenv-init 1>/dev/null 2>&1; then eval "$(pyenv virtualenv-init -)"; fi
      '';
      historyFile = "${config.home.homeDirectory}/.bash_eternal_history";
      # Nix can't use the unlimited trick?
      historyFileSize = 1000000;
      historySize = 1000000;
      initExtra = ''
        if command -v virtualenvwrapper_lazy.sh >/dev/null 2>&1; then
            source $(command -v virtualenvwrapper_lazy.sh)
        fi
      '' + lib.readFile ./functions.bash;
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
          "*.cwl:YAML"
          "*.jsonc:JSON"
          "*.jsonld:JSON"
          "*.qcjson:JSON"
          "*.qcschema:JSON"
          "flake.lock:JSON"
          "*Jenkinsfile*:Groovy"
        ];
        theme = "Dracula";
      };
      enable = true;
    };
    direnv.enable = true;
    home-manager.enable = true;
    less.enable = true;
    zsh = {
      envExtra = ''
        # [[ -d "${config.home.homeDirectory}/.poetry/bin" ]] && export PATH="${config.home.homeDirectory}/.poetry/bin:$PATH"
        [[ -d "${config.home.homeDirectory}/.pyenv/bin" ]] && export PATH="${config.home.homeDirectory}/.pyenv/bin:$PATH"
        # These are...slow.
        if command -v pyenv >/dev/null 2>&1; then
            eval "$(pyenv init --path)"
            eval "$(pyenv init -)"
        fi
        if command -v pyenv-virtualenv-init >/dev/null 2>&1; then eval "$(pyenv virtualenv-init -)"; fi

        # Rust
        [[ -d "${config.home.homeDirectory}/.cargo/bin" ]] && export PATH="${config.home.homeDirectory}/.cargo/bin:$PATH"

        # Nim
        [[ -d "${config.home.homeDirectory}/.nimble/bin" ]] && export PATH="${config.home.homeDirectory}/.nimble/bin:$PATH"
      '';
      history = {
        extended = true;
        ignoreDups = false;
        save = 1000000000;
        share = true;
        size = 1000000000;
      };
      initExtra = ''
        if command -v virtualenvwrapper_lazy.sh >/dev/null 2>&1; then
            source $(command -v virtualenvwrapper_lazy.sh)
        fi

        # Changing Directories
        unsetopt auto_cd
        setopt auto_pushd

        # Expansion and Globbing
        unsetopt extended_glob
        setopt nomatch

        # History
        setopt hist_verify

        # Input/Output
        setopt interactive_comments

        # Job Control
        unsetopt bg_nice
        setopt long_list_jobs

        # Prompting
        setopt prompt_subst

        # Zle
        setopt beep
        setopt emacs

        WORDCHARS=""
      '' + lib.readFile ./functions.bash;
      profileExtra = ''
        if [[ "$TERM" != "" ]]; then
            stty -ixon
        fi
      '';
      sessionVariables = {
        PS1 = "%F{yellow}%d%f\n[%F{blue}%n%f@%F{cyan}%m%f]%(!.#.$) ";
      };
    };
  };
}
