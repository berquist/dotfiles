#!/usr/bin/env zsh

source "${HOME}"/dotfiles/path_exports.bash

[[ $(uname) == "Darwin" ]] && source ${HOME}/dotfiles/.zprofile.macos

if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
if command -v pyenv-virtualenv-init 1>/dev/null 2>&1; then eval "$(pyenv virtualenv-init -)"; fi

# Rust
[[ -f "${HOME}/.cargo/env" ]] && source "${HOME}/.cargo/env"

# Nim
[[ -d "${HOME}/.nimble/bin" ]] && export PATH="${HOME}/.nimble/bin:${PATH}"
