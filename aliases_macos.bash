#!/usr/bin/env bash

unal() {
    # shellcheck disable=SC2086
    unalias $1 2> /dev/null
}

if ! command -v eza > /dev/null 2>&1; then
    if ! command -v exa 1> /dev/null 2>&1; then
        # unal ls
        alias ls='ls -G'
        unal l
        alias l='pwd; ls -hl'
        unal la
        alias la='l -a'
    fi
fi
unal psmem
alias psmem='ps aux -m'
unal t
alias t='tail -F -n 100' # no sleep interval on BSD tail?
unal top
alias top='top -u'
