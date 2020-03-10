#!/usr/bin/env zsh

export ZSH_COLORIZE_STYLE=rrt

if [[ "$TERM" != "" ]]; then
    stty -ixon
fi
