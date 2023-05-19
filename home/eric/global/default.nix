{ config, ...}:

{
  home = {
    username = "eric";
    homeDirectory = "/home/${config.home.username}";

    shellAliases = {
      _2to3 = "2to3 -f all -f buffer -f idioms -f set_literal -f ws_comma";
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
    direnv.enable = true;
    home-manager.enable = true;
  };
}
