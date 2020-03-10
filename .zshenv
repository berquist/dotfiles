#!/usr/bin/env zsh

. "${HOME}"/dotfiles/path_exports.bash

[[ -d "${HOME}/.poetry/bin" ]] && export PATH="${HOME}/.poetry/bin:${PATH}"
# pyenv doesn't seem to be interfering with conda
[[ -d "${HOME}/.pyenv/bin" ]] && export PATH="${HOME}/.pyenv/bin:${PATH}"
if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
if command -v pyenv-virtualenv-init 1>/dev/null 2>&1; then eval "$(pyenv virtualenv-init -)"; fi

if command -v rbenv 1>/dev/null 2>&1; then eval "$(rbenv init -)"; fi

if command -v jenv 1>/dev/null 2>&1; then eval "$(jenv init -)"; fi

[[ -f "${HOME}"/perl5/perlbrew/etc/bashrc ]] && . "${HOME}"/perl5/perlbrew/etc/bashrc

# Rust
[[ -f "${HOME}/.cargo/env" ]] && . "${HOME}/.cargo/env"

# Nim
[[ -d "${HOME}/.nimble/bin" ]] && export PATH="${HOME}/.nimble/bin:${PATH}"

# Node Version Manager
NVM_DIR="${HOME}/.nvm"
if [[ -d "${NVM_DIR}" ]]; then
    unset npm_config_prefix
    export NVM_DIR
    \. "${NVM_DIR}/nvm.sh"
    \. "${NVM_DIR}/bash_completion"
fi


machine_specific_file="${HOME}"/dotfiles/.zshenv."$(hostname -s)"
if [[ -f "${machine_specific_file}" ]]; then
    . "${machine_specific_file}"
fi
