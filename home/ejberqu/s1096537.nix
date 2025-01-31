{ config, ...}:

{
  imports = [
    ./global
  ];

  home = {
    homeDirectory = "/Users/${config.home.username}";

    stateVersion = "24.11";
  };
}
