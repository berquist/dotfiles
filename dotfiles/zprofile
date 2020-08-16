#!/usr/bin/env zsh

export ZSH_COLORIZE_STYLE=rrt

# Related to https://superuser.com/a/583502/551499, everything in zshenv is
# going to be prefixed by the macOS path_helper call when zprofile is sourced
# afterward. Source zshenv an extra time to get the ordering right.
if [[ $(uname) == "Darwin" ]] && [[ -f /etc/profile ]] && [[ -f "${HOME}/.zshenv" ]]; then
    . "${HOME}/.zshenv"
fi

if [[ "$TERM" != "" ]]; then
    stty -ixon
fi
