#!/usr/bin/env bash

source functions.bash

if ! command -v eza >/dev/null 2>&1; then
    if ! command -v exa 1>/dev/null 2>&1; then
        # unal ls
        alias ls='ls -G'
        unal l
        alias l='pwd; ls -hl'
        unal la
        alias la='l -a'
    fi
fi
unal t
alias t='tail -F -n 100' # no sleep interval on BSD tail?
unal top
alias top='top -u'
