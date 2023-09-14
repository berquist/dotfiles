#!/usr/bin/env bash

if [ -n "$__SOURCED_PATH_EXPORTS" ]; then return; fi
# echo "running path_exports"
export __SOURCED_PATH_EXPORTS=1

export EXERCISM_WORKSPACE="${HOME}"/development/exercism
export LSP_USE_PLISTS=true
# This messes with nvm.
# export npm_config_prefix="${HOME}"/.node_modules
export RIPGREP_CONFIG_PATH="${HOME}"/dotfiles/ripgreprc

source "${HOME}"/dotfiles/path.sh
prepend_to_path "${HOME}"/personal_scripts
prepend_to_path "${HOME}"/opt/bin
prepend_to_path "${HOME}"/.local/bin
prepend_to_path "${HOME}"/repositories/rmsd/rmsd
prepend_to_path "${HOME}"/opt/bin/scripts
# prepend_to_path "${HOME}"/.node_modules/bin
prepend_to_path "${HOME}"/go/bin
# prepend_to_path "${HOME}/.poetry/bin"
prepend_to_path "${HOME}/.pyenv/bin"
prepend_to_path "${PYENV_ROOT}/bin"
prepend_to_path "${HOME}/.cargo/bin"
prepend_to_path "${HOME}/.nimble/bin"
prepend_to_path "${HOME}/.juliaup/bin"

try_source "${HOME}"/dotfiles/pyenv.bash

export SCRATCH=/tmp
export scratch="${SCRATCH}"

export apps="${HOME}"/opt/apps

hostname="$(hostname)"

if [[ "${hostname}" == "osmium" ]]; then
    # export ANACONDA_HOME="/home/eric/.conda"
    # TODO blergh
    export ANACONDA_HOME="/home/eric/.pyenv/versions/miniconda3-4.7.12"
    export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
    export WORKON_HOME="${HOME}"/data/virtualenvs

    export apps="${HOME}"/data/opt/apps

    export PRE_COMMIT_HOME="${HOME}"/data/.pre-commit
    export SPACK_ROOT="${HOME}"/data/spack
    export VAGRANT_HOME="${HOME}"/data/.vagrant.d
elif [[ "${hostname}" == "s1096537" ]]; then
    export SPACK_ROOT="${HOME}"/development/forks/spack
else
    export PRE_COMMIT_HOME="${HOME}"/.cache/pre-commit
    [[ -n "${SPACK_ROOT}" ]] || export SPACK_ROOT="${HOME}"/repositories/spack
    export VAGRANT_HOME="${HOME}"/.vagrant.d
fi

[[ -d "${SPACK_ROOT}" ]] && source "${SPACK_ROOT}"/share/spack/setup-env.sh
