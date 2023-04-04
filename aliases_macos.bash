#!/usr/bin/env bash

if ! command -v exa 1>/dev/null 2>&1; then
    # unalias ls
    alias ls='ls -G'
    unalias l
    alias l='pwd; ls -hl'
    unalias la
    alias la='l -a'
fi
unalias t
alias t='tail -F -n 100' # no sleep interval on BSD tail?
unalias top
alias top='top -u'
