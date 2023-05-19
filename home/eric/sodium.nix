{ config, ...}:

{
  imports = [
    ./global
  ];

  home = {
    homeDirectory = "/Users/${config.home.username}";
    sessionVariables = {
      PRE_COMMIT_HOME = "${config.home.homeDirectory}/.cache/pre-commit";
      SPACK_ROOT = "${config.home.homeDirectory}/repositories/spack";
      VAGRANT_USERS = "${config.home.homeDirectory}/.vagrant.d";
    };
    shellAliases = {
      t = "tail -F -n 100";
      top = "top -u";
    };
  };
}
