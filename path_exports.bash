#!/usr/bin/env bash

if [ -n "$__HM_SESS_VARS_SOURCED" ]; then return; fi
export __HM_SESS_VARS_SOURCED=1

export EXERCISM_WORKSPACE="${HOME}"/development/exercism
export LSP_USE_PLISTS=true
# This messes with nvm.
# export npm_config_prefix="${HOME}"/.node_modules
export PIP_CONFIG_FILE="${HOME}"/dotfiles/pip.conf
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
prepend_to_path "${HOME}/.cargo/bin"
prepend_to_path "${HOME}/.nimble/bin"
prepend_to_path "${HOME}/.juliaup/bin"

export SCRATCH=/tmp
export scratch="${SCRATCH}"

# TODO still needed?
export QCPROGS="${HOME}"/opt/apps
export apps="${QCPROGS}"
