{ config, ...}:

{
  imports = [
    ./global
  ];

  home = {
    sessionVariables = {
      QCPROGS = "${config.home.homeDirectory}/data/opt/apps";
      apps = "${config.home.sessionVariables.QCPROGS}";
      ANACONDA_HOME = "${config.home.homeDirectory}/.pyenv/versions/miniconda3-4.7.12";
      VIRTUALENVWRAPPER_PYTHON = "/usr/bin/python";
      WORKON_HOME = "${config.home.homeDirectory}/data/virtualenvs";
      PRE_COMMIT_HOME = "${config.home.homeDirectory}/data/.pre-commit";
      SPACK_ROOT = "${config.home.homeDirectory}/data/spack";
      VAGRANT_HOME = "${config.home.homeDirectory}/data/.vagrant.d";
    };
  };

  programs = {
    zsh = {
      enable = true;
      envExtra = ''
        source /usr/share/lmod/lmod/init/zsh
        module use "${config.home.homeDirectory}/modules/osmium"
      '';
    };
  };

  home.stateVersion = "22.11";
}
