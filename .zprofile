#!/usr/bin/env zsh

source "${HOME}"/dotfiles/path_exports.bash

if [[ $(uname) == "Darwin" ]]; then
    source ${HOME}/dotfiles/.zprofile.macos
fi
