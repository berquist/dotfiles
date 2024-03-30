{ config, ...}:

{
  imports = [
    ./global
  ];

  home = {
    homeDirectory = "/Users/${config.home.username}";

    stateVersion = "23.11";
  };
}
