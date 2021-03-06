#!/usr/bin/env bash

# https://askubuntu.com/a/866376
export EDITOR="emacsclient -t -a=\"\""

# https://twitter.com/hhulkko/status/114256631419772928
# http://darrendev.blogspot.com/2011/07/customize-less-less-annoying.html
export LESS="-FRX"
# export LESS_ADVANCED_PREPROCESSOR=1
# export LESSOPEN="|$(command -v lesspipe.sh) %s"

export MANWIDTH=78

# export PIP_REQUIRE_VIRTUALENV=1
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

if [[ "$COLORTERM" == "xfce4-terminal" ]] && [[ "$TMUX" == "" ]] && [[ -e /usr/share/terminfo/x/xterm-256color ]]; then
    export TERM=xterm-256color
fi

# For the Travis Ruby gem
[[ -f "${HOME}"/.travis/travis.sh ]] && source "${HOME}"/.travis/travis.sh
