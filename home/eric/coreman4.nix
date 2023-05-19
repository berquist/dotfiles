{ config, ... }:
{
  imports = [
    ./global
  ];

  home = {
    username = "ericb";
    homeDirectory = "/dftman/home/${config.home.username}";
    sessionVariables = rec {
      PRE_COMMIT_HOME = "${HOME2}/.pre-commit";
      PYENV_ROOT = "${HOME2}/pyenv";
      SPACK_ROOT = "${HOME2}/spack";
      VAGRANT_HOME = "${HOME2}/vagrant";
      SCRATCH = "/scratch";
      HOME1 = "/dftman/home1/${config.home.username}";
      HOME2 = "/dftman/home2/${config.home.username}";
    };
    shellAliases = {
       cds = "cd ${config.home.sessionVariables.SCRATCH}";
       cd1 = "cd ${config.home.sessionVariables.HOME1}";
       cd2 = "cd ${config.home.sessionVariables.HOME2}";
       cdbj = "cd /scratch/qcdevops/jenkins/workspace/build_qchem";
       cdtd4 = "cd /scratch/qcdevops/jenkins/workspace/svnq_checkin/checkin/current/build/test";
       cdtmp = "cd /Volumes/scratch/qcdevops/jenkins/workspace/svnq_checkin/checkin/current/build/test";
    };
  };

  programs = {
    bash = {
      enable = true;
      bashrcExtra = ''
        source ${config.home.sessionVariables.SPACK_ROOT}/share/spack/setup-env.sh

        module use "${config.home.homeDirectory}"/modules/work
        if [[ "$HOSTNAME" == "coreman4" ]]; then
            module use "${config.home.homeDirectory}"/modules/coreman4
        fi
      '';
    };
  };

  home.stateVersion = "22.11";
}
