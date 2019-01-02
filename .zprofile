#!/usr/bin/env zsh

source "${HOME}"/dotfiles/path_exports.bash

if [[ $(uname) == "Darwin" ]]; then
    source ${HOME}/dotfiles/.zprofile.macos
fi

if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
if command -v pyenv-virtualenv-init 1>/dev/null 2>&1; then eval "$(pyenv virtualenv-init -)"; fi
