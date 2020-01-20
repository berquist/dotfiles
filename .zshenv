#!/usr/bin/env zsh

# https://superuser.com/a/583502/551499
#
# This needs to live here and not in `~/.zprofile`; see that file for an
# explanation.
if [[ -f /etc/zprofile ]]; then
    PATH=""
    source /etc/zprofile
fi

source "${HOME}"/dotfiles/path_exports.bash

[[ -d "${HOME}/.poetry/bin" ]] && export PATH="${HOME}/.poetry/bin:${PATH}"
# pyenv doesn't seem to be interfering with conda
[[ -d "${HOME}/.pyenv/bin" ]] && export PATH="${HOME}/.pyenv/bin:${PATH}"
if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
if command -v pyenv-virtualenv-init 1>/dev/null 2>&1; then eval "$(pyenv virtualenv-init -)"; fi

if command -v rbenv 1>/dev/null 2>&1; then eval "$(rbenv init -)"; fi

if command -v jenv 1>/dev/null 2>&1; then eval "$(jenv init -)"; fi

[[ -f "${HOME}"/perl5/perlbrew/etc/bashrc ]] && source "${HOME}"/perl5/perlbrew/etc/bashrc

# Rust
[[ -f "${HOME}/.cargo/env" ]] && source "${HOME}/.cargo/env"

# Nim
[[ -d "${HOME}/.nimble/bin" ]] && export PATH="${HOME}/.nimble/bin:${PATH}"

# conda
if [[ -d "${HOME}/.anaconda" ]]; then
    eval "$(${HOME}/.anaconda/bin/conda shell.zsh hook)"
    export ANACONDA_HOME="${HOME}/.anaconda"
fi
