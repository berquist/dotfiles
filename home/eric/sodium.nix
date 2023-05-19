{ config, ...}:

{
  imports = [
    ./global
  ];

  home = {
    homeDirectory = "/Users/${config.home.username}";

    shellAliases = {
      t = "tail -F -n 100";
      top = "top -u";
    };
  };
}
