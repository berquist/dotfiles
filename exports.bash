#!/usr/bin/env bash

export EDITOR="emacs -nw"

# https://twitter.com/hhulkko/status/114256631419772928
# http://darrendev.blogspot.com/2011/07/customize-less-less-annoying.html
export LESS="-FRX"
export LESS_ADVANCED_PREPROCESSOR=1
# `brew install lesspipe`
export LESSOPEN="|$(command -v lesspipe.sh) %s"

export MANWIDTH=78

export PIP_CONFIG_FILE="${HOME}"/dotfiles/pip.conf

export PATH="${HOME}"/personal_scripts:"${PATH}"
export PATH="${HOME}"/buildscripts:"${PATH}"
export PATH="${HOME}"/opt/bin:"${PATH}"
export PATH="${HOME}"/.local/bin:"${PATH}"

export QCPROGS="${HOME}"/opt/apps
export apps="${QCPROGS}"
