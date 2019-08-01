#!/usr/bin/env zsh

source "${HOME}"/dotfiles/path_exports.bash

# if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
# if command -v pyenv-virtualenv-init 1>/dev/null 2>&1; then eval "$(pyenv virtualenv-init -)"; fi

if command -v rbenv 1>/dev/null 2>&1; then eval "$(rbenv init -)"; fi

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
