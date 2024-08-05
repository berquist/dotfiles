{ config, ...}:

{
  imports = [
    ./global
  ];

  home = {
    username = "ejberqu";
    homeDirectory = "/Users/${config.home.username}";

    stateVersion = "23.11";
  };
}
